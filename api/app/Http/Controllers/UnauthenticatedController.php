<?php

namespace App\Http\Controllers;

use DB;
use Auth;
use File;
use Helper;
use Validator;
use App\Models\User;
use App\Models\Brands;
use App\Models\Country;
use App\Models\coupons;
use App\Models\Product;
use App\Models\Setting;
use App\Models\Sliders;
use App\Models\Category;
use App\Models\Attribute;
use App\Models\Categorys;
use App\Models\SellerAds;
use App\Mail\ExampleEmail;
use App\Models\dealsbanner;
use Illuminate\Support\Str;
use App\Models\OrderHistory;
use function Ramsey\Uuid\v1;
use Illuminate\Http\Request;
use App\Models\AttributeValues;
//use User;
use App\Models\ProductCategory;

use App\Models\topHeaderBanner;
use App\Rules\MatchOldPassword;
use App\Models\ProductAttributes;
use PhpParser\Node\Stmt\TryCatch;
use App\Models\sliderSideAdsModel;
use App\Models\User as ModelsUser;
use App\Http\Controllers\Controller;
use App\Models\ProductAdditionalImg;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use App\Models\ProductAttributeValue;
use App\Models\ProductVarrientHistory;
use Illuminate\Database\QueryException;
use App\Models\HomeAroductSliderCategory;
use Workbench\App\Models\User as AppModelsUser;

class UnauthenticatedController extends Controller
{
    protected $frontend_url;
    protected $userid;

    public function allCategory(Request $request)
    {
        $categories = Categorys::with('children.children.children.children.children')->where('parent_id', 0)->get();
        return response()->json($categories);
    }

    public function limitedProducts()
    {

        $data = Product::orderBy('id', 'desc')->select('id', 'name', 'thumnail_img', 'slug')->limit(12)->get();
        //dd($data);
        $collection = collect($data);
        $modifiedCollection = $collection->map(function ($item) {
            return [
                'id'        => $item['id'],
                'name'      => substr($item['name'], 0, 20),
                'thumnail'  => !empty($item->thumnail_img) ? url($item->thumnail_img) : "",
                'slug'        => $item['slug'],
            ];
        });
        //dd($modifiedCollection);
        return response()->json($modifiedCollection, 200);
    }

    public function pagniatedProducts(Request $request)
    {

        $perPage = 12; // You can adjust the number of items per page as needed
        $products = Product::where('status', 1)
            ->select('id', 'discount', 'name as pro_name', 'description', 'price', 'thumnail_img', 'slug as pro_slug')
            ->orderBy('created_at', 'desc') // Or use the appropriate column
            ->paginate($perPage);

        $result = [];
        foreach ($products as $key => $v) {
            $result[] = [
                'id'           => $v->id,
                'product_id'   => $v->id,
                'product_name' => $v->pro_name,
                'category_id'  => $v->category_id,
                'discount'     => $v->discount,
                'price'        => number_format($v->price, 2),
                'thumnail_img' => url($v->thumnail_img),
                'pro_slug'     => $v->pro_slug,

            ];
        }

        $data['result']        = $result;
        $data['pro_count']     = count($result);
        return response()->json($data, 200);
    }

    public function topSellProducts()
    {
        // $data = Product::orderBy('id', 'desc')->select('id', 'name', 'thumnail_img', 'slug')->limit(12)->get();
        // foreach ($data as $v) {
        //     $result[] = [
        //         'id'   => $v->id,
        //         'name' => substr($v->name, 0, 12) . '...',
        //         'thumnail'  => !empty($v->thumnail_img) ? url($v->thumnail_img) : "",
        //         'slug'     => $v->slug,
        //     ];
        // }
        $topSellingProducts = OrderHistory::selectRaw('product_id, SUM(quantity) as total_quantity')->groupBy('product_id')->orderBy('total_quantity', 'desc')->limit(20)->get();

        foreach ($topSellingProducts as $product) {
            $productDetails = Product::select('name', 'slug', 'thumnail_img', 'price', 'discount', 'flat_rate_price', 'free_shopping')
                ->where('id', $product->product_id)
                ->first();

            $product->name                  = $productDetails->name;
            $product->slug                  = $productDetails->slug;
            $product->thumnail_img          = url($productDetails->thumnail_img);

            $product->price                 = $productDetails->price;
            $product->discount              = $productDetails->discount;
            $product->flat_rate_price      = $productDetails->flat_rate_price;
            $product->free_shopping         = $productDetails->free_shopping;
            // $product->name          = $productDetails->name;
            // $product->slug          = $productDetails->slug;
        }

        return response()->json($topSellingProducts, 200);
    }

    public function slidersImages()
    {
        $data = Sliders::where('status', 1)->get();

        foreach ($data as $v) {
            $result[] = [
                'id'           => $v->id,
                'images'       => !empty($v->images) ? url($v->images) : "",
            ];
        }

        return response()->json($result, 200);
    }

    public function productCategory(Request $request)
    {


        $catIds = HomeAroductSliderCategory::where('status', 1)->pluck('category_id')->toArray();
        $commaSeparatedIds = implode(',', $catIds);
        // dd($commaSeparatedIds);
        $category_id  = $commaSeparatedIds; //"25,318,26";
        $category_ids = explode(',', $category_id);
        $categorys = ProductCategory::join('product', 'product.id', '=', 'produc_categories.product_id')
            ->join('categorys', 'categorys.id', '=', 'produc_categories.category_id')
            ->select('produc_categories.product_id', 'product.name', 'product.slug', 'product.thumnail_img', 'product.price', 'product.discount','product.discount_status', 'product.flat_rate_status', 'product.flat_rate_price', 'product.free_shopping', 'categorys.name as cate_name', 'categorys.slug as catslug')
            ->whereIn('produc_categories.category_id', $category_ids)
            ->orderByDesc('product.id')
            ->limit(10)
            ->get();
            
        $groupedCategories = $categorys->groupBy('cate_name');
        $categories = [];
        foreach ($groupedCategories as $categoryName => $categoryGroup) {
            $products = [];
            foreach ($categoryGroup as $v) {
                $products[] = [
                    'product_id'        => $v->product_id,
                    'id'                => $v->product_id,
                    'name'              => substr($v->name, 0, 12) . '...',
                    'thumnail_img'      => !empty($v->thumnail_img) ? url($v->thumnail_img) : "",
                    'thumnail'          => !empty($v->thumnail_img) ? url($v->thumnail_img) : "",
                    'slug'              => $v->slug,
                    'price'             => $v->price,
                    'discount'          => $v->discount,
                    'discount_status'          => $v->discount_status,
                    'flat_rate_status'  => $v->flat_rate_status,
                    'flat_rate_price'   => $v->flat_rate_price,
                    'free_shopping'     => $v->free_shopping,

                    'product_name'              => $v->name,
                    'image'             => url($v->thumnail_img),
                    'thumnail_img'             => url($v->thumnail_img),
                    'business_name'     => $v->business_name,
                    'stock_quantity'    => $v->stock_qty,
                    'mini_quantity'     => $v->stock_mini_qty,

                ];
            }
            // Add the category and its products to the final result
            $categories[] = [
                'name' => $categoryName,
                'slug' => $categoryGroup->first()->catslug, // Assuming the slug is the same for all products in the category
                'products' => $products,
            ];
        }
        $data['result']  = !empty($categories) ? $categories : "";
        return response()->json($data, 200);
    }

    public function filterCategory(Request $request)
    {

        $categorys = ProductCategory::join('categorys', 'categorys.id', '=', 'produc_categories.category_id')
            ->select('produc_categories.product_id', 'categorys.name', 'categorys.slug', 'produc_categories.category_id')
            ->where('status', 1)
            ->groupBy('produc_categories.category_id')
            ->orderBy("categorys.name", "asc")
            ->get();

        //dd($categorys);
        //$categorys = Categorys::where('status', 1)->orderBy("name", "asc")->get();;
        return response()->json($categorys);
    }

    public function getSellerCategoryFilter($category_id)
    {

        $allProducts = ProductCategory::join('product', 'produc_categories.product_id', '=', 'product.id')
            ->where('produc_categories.category_id', $category_id)
            ->select('product.id as product_id', 'product.name as product_name', 'product.thumnail_img', 'product.slug', 'product.price', 'product.discount', 'produc_categories.category_id')
            ->get();

        foreach ($allProducts as $v) {
            $products[] = [
                'id'           => $v->product_id,
                'name'         => substr($v->product_name, 0, 12) . '...',
                'thumnail'     => !empty($v->thumnail_img) ? url($v->thumnail_img) : "",
                'slug'         => $v->slug,
                'price'        => $v->price,
                'discount'     => $v->discount,
            ];
        }
        $data['products']                = !empty($products) ? $products : "";

        // dd($data['products']);
        return response()->json($data);
    }

    // Encryption function
    public function encryptText($plaintext, $key, $iv)
    {
        $cipher = "aes-256-cbc";
        $options = OPENSSL_RAW_DATA;
        $encrypted = openssl_encrypt($plaintext, $cipher, $key, $options, $iv);
        return base64_encode($encrypted);
    }

    // Decryption function
    public function decryptText($ciphertext, $key, $iv)
    {
        $cipher = "aes-256-cbc";
        $options = OPENSSL_RAW_DATA;
        $decrypted = openssl_decrypt(base64_decode($ciphertext), $cipher, $key, $options, $iv);
        return $decrypted;
    }


    public function updatePassword(Request $request)
    {

        //  dd($request->all());
        $reset_token = $request->reset_token;
        $chkrem_token = User::where('remember_token', $reset_token)->first();

        if (!empty($chkrem_token)) {
            // dd($chkrem_token);
            $id  =  $chkrem_token->id;
            // echo $id; 
            $validator = Validator::make($request->all(), [
                'password' => 'min:2|required_with:password_confirmation|same:password_confirmation',
                'password_confirmation' => 'min:2'
            ]);
            if ($validator->fails()) {
                return response()->json(['errors' => $validator->errors()], 422);
            }

            $user = User::find($id);
            $user->password = Hash::make($request->password);
            $user->show_password = $request->password;
            $user->save();
            $response = "Password successfully changed!";
            return response()->json($response);
        }
    }

    public function forgetpassword(Request $request)
    {

        $hostname = $request->hostname;
        $validator = Validator::make($request->all(), [
            // 'email'       => 'required',
            'email' => 'required|email|exists:users,email',
        ]);
        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $email = $request->email;

        // Example usage
        $originalText = $email;
        $encryptionKey = "yourSecretKey"; // Replace with your actual encryption key
        $iv = openssl_random_pseudo_bytes(openssl_cipher_iv_length("aes-256-cbc"));
        $encryptedText = $this->encryptText($originalText, $encryptionKey, $iv);
        $cleanedEncryptedText = str_replace(['\\', '/'], '', $encryptedText);
        //echo "Cleaned Encrypted Text: " . $cleanedEncryptedText . "\n";

        //echo $encryptedText;exit; 
        $resetlink = "$hostname/resetpassword/$cleanedEncryptedText";

        $user = User::where('email', $email)->first();
        if (!empty($user)) {
            // Update the email
            $user->update(['remember_token' => $cleanedEncryptedText]);
            // Optionally, you can retrieve the updated user data
            //$updatedUser = User::find($user->id);
        }

        // You can pass data to the email view if needed
        $to = $email;
        $subject = "Forget Password (Ahmed Ecommarce)";

        // Concatenate the message with the reset link text
        $message = "We received a request to reset your password. Click the link below to reset it. If you didn't request this, you can safely ignore this email.\n\n";
        $message .= 'Reset Password: ' . $resetlink;
        //  echo $message;
        //  exit;

        // Set additional headers for HTML content
        $headers = "MIME-Version: 1.0" . "\r\n";
        $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";

        // Send the email
        mail($to, $subject, $message, $headers);

        $response = [
            'message' => "Thank you! We've sent you an email with further instructions. Please check your inbox. If you don't find it there, kindly check your spam or junk folder."
        ];
        return response()->json($response);
    }

    public function getSeller($slug)
    {

        $row    = User::where('business_name_slug', $slug)->first();

        $sliderImg   = Product::where('seller_id', $row->id)->where('status', 1)->limit(12)->get();
        $allProducts = Product::where('seller_id', $row->id)->where('status', 1)->get();

        $findCategory = $allProducts;
        $categoryList = [];
        foreach ($findCategory as $v) {
            $category = ProductCategory::where('product_id', $v->id)->select('category_id')->first();
            if ($category) {
                $catName = Categorys::where('id', $category->category_id)->select('name')->first();
                if ($catName) {
                    $categoryList[] = [
                        'name' => $catName->name,
                        'id'   => $category->category_id,
                    ];
                }
            }
        }
        foreach ($sliderImg as $v) {
            $slidersImg[] = [
                'id'           => $v->id,
                'name'         => substr($v->name, 0, 12) . '...',
                'thumnail'     => !empty($v->thumnail_img) ? url($v->thumnail_img) : "",
                'slug'         => $v->slug,
                'price'        => $v->price,
                'discount'     => $v->discount,
            ];
        }

        foreach ($allProducts as $v) {
            $products[] = [
                'id'           => $v->id,
                'name'         => substr($v->name, 0, 12) . '...',
                'thumnail_img' => !empty($v->thumnail_img) ? url($v->thumnail_img) : "",
                'slug'         => $v->slug,
                'quantity'     => 1,
                'price'        => $v->price,
                'discount'     => $v->discount,
            ];
        }

        $businessLogog = !empty($row) ? url($row->business_logo) : "";
        $data['business_owner_name']     = !empty($row) ? $row->business_owner_name : "";
        $data['business_name']           = !empty($row) ? $row->business_name : "";
        $data['business_address']        = !empty($row) ? $row->business_address : "";
        $data['business_register_num']   = !empty($row) ? $row->business_register_num : "";
        $data['business_email']          = !empty($row) ? $row->business_email : "";
        $data['business_phone']          = !empty($row) ? $row->business_phone : "";
        $data['business_logo']           = $businessLogog;
        $data['slidersImg']              = !empty($slidersImg) ? $slidersImg : "";
        $data['products']                = !empty($products) ? $products : "";
        $data['categoryList']            = !empty($categoryList) ? $categoryList : "";

        //ads banner 
        $topBanner      = SellerAds::where('seller_id', $row->id)->where('position', 'top_banner_img')->first();
        $bannerAds_1    = SellerAds::where('seller_id', $row->id)->where('position', 'banner_1')->first();
        $bannerAds_2    = SellerAds::where('seller_id', $row->id)->where('position', 'banner_2')->first();
        $bannerAds_3    = SellerAds::where('seller_id', $row->id)->where('position', 'banner_3')->first();
        $bannerAds_4    = SellerAds::where('seller_id', $row->id)->where('position', 'banner_4')->first();
        $bannerAds_5    = SellerAds::where('seller_id', $row->id)->where('position', 'banner_5')->first();
        $youtube_ads    = SellerAds::where('seller_id', $row->id)->where('position', 'youtube_videos')->first();
        // dd($youtube_ads->file_name);
        $data['top_banner_img']       = !empty($topBanner) ? url($topBanner->file_name) : "";
        $data['banner1']              = !empty($bannerAds_1) ? url($bannerAds_1->file_name) : "";
        $data['banner2']              = !empty($bannerAds_2) ? url($bannerAds_2->file_name) : "";
        $data['banner3']              = !empty($bannerAds_3) ? url($bannerAds_3->file_name) : "";
        $data['banner4']              = !empty($bannerAds_4) ? url($bannerAds_4->file_name) : "";
        $data['banner5']              = !empty($bannerAds_5) ? url($bannerAds_5->file_name) : "";
        $data['file_name']            = !empty($youtube_ads) ? $youtube_ads->file_name : "";
        //END baner 
        return response()->json($data);
    }

    public function allsellers()
    {

        $find_sellers  = User::where('role_id', 3)->where('status', 1)->where('home_status', 1)->select('id', 'business_name', 'business_logo', 'business_name_slug')->limit(12)->orderBy('id', 'desc')->get();
        $sellercount = User::where('role_id', 3)->where('status', 1)->where('home_status', 1)->count();

        foreach ($find_sellers as $v) {
            $results[] = [
                'id'           => $v->id,
                'name'         => substr($v->business_name, 0, 12) . '...',
                'thumnail'     => !empty($v->business_logo) ? url($v->business_logo) : "",
                'slug'         => $v->business_name_slug,
            ];
        }


        return response()->json([
            'data' => $results,
            'data_count' => $sellercount,
        ], 200);
    }
    public function findProductSlug($slug)
    {
        $data['pro_row'] = Product::where('product.slug', $slug)
            ->select(
                'product.id',
                'product.id as product_id',
                'product.seller_id',
                'product.name as product_name',
                'product.slug as pro_slug',
                'product.thumnail_img',
                'description',
                'short_description',
                DB::raw('CAST(product.price AS SIGNED) as price'), // Cast product.price as decimal
                'product.discount',
                'product.discount_status',
                'product.stock_qty',
                'product.stock_mini_qty',
                'product.free_shopping',
                'product.flat_rate_price',
                'product.brand',
                "product.stock_status",
                "product.shipping_days",
                "product.unit",
                "product.vat"   ,   
                "product.vat_status",
            )
            ->first();
        //dd($data['pro_row']);
        $product_chk       = Product::where('product.slug', $slug)
            ->select('product.id', 'product.id as product_id', 'product.name as pro_name', 'product.slug as pro_slug', 'product.thumnail_img', 'description', 'product.price', 'product.discount', 'product.stock_qty', 'product.stock_mini_qty', 'product.free_shopping')
            ->get();
        $products = [];
        // dd($product_chk);
        // return false;
        foreach ($product_chk as $key => $v) {
            $products[] = [
                'id'                => $v->id,
                'product_id'        => $v->product_id,
                'product_name'      => $v->pro_name,
                'discount'          => $v->discount,
                'price'             => number_format($v->price, 2),
                'thumnail_img'      => url($v->thumnail_img),
                'pro_slug'          => $v->pro_slug,
                'free_shopping'     => $v->free_shopping,

            ];
        }
        $findproductrow   = $data['pro_row'];
        $data['att_img']  = ProductAdditionalImg::where('produc_img_history.product_id', $findproductrow->id)->get();
        foreach ($data['att_img'] as $v) {
            $mul_slider_img[] = [
                'product_id'   => $v->product_id,
                'thumnail'     => !empty($v->images) ? url($v->images) : "",
            ];
        }
        $seller = User::where('id', $findproductrow->seller_id)->first();

        // dd($seller);
        // return false;

        $data['slider_img']    = !empty($mul_slider_img) ? $mul_slider_img : "";
        $data['featuredImage'] = url($findproductrow->thumnail_img);
        $data['product']      = $products;

        // fetch brand 
        $brand_id = $data['pro_row']->brand;

        $brand = Brands::where('id', $brand_id)->first();
        $formateBrand = [];
        $formateBrand[] = [
            "id"        => !empty($brand->id)? $brand->id : '',
            "name"      => !empty($brand->name)? $brand->name : '', 
            "slug"      => !empty($brand->slug)? $brand->slug : '', 
            "image"     => !empty($brand->image) ? url($brand->image) : '',
            "status"    => !empty($brand->status)? $brand->status : '',
        ];

        // featc attribute 
        $arrData            = ProductVarrientHistory::where('product_id',$findproductrow->id)->get();
        $groupData          = ProductVarrientHistory::where('product_id',$findproductrow->id)->select('id','color')->groupBy('color')->get();
        $formatedData = [];
        foreach ($arrData as $Key => $value) {
            $formatedData[] = [
                'id'               => $value->id,
                'color'            => $value->color,
                'size'             => $value->size,
                'sku'              => $value->sku,
                'qty'              => $value->qty,
                'price'            => $value->price,
                'image'            => !empty($value->image) ? url($value->image) : "",
                'product_id'       => $value->product_id,
            ];
        }
        $gdata = [];
        foreach ($groupData as $Key => $value) {
            $gdata[] = [
                'id'               => $value->id,
                'color'            => $value->color,
            ];
        }
       
        $pdata['varient']    = $formatedData;
        $pdata['colorGroup'] = $gdata;
        // return response()->json($pdata);

        return response()->json([
            'data'      => $data,
            'brand'     => $formateBrand,
            'seller'    => !empty($seller)? $seller:'',
            'attibute' => $pdata,
        ], 200);
    }

    public function findCategorys($slug)
    {

        $chkCategory   = Categorys::where('slug', $slug)->select('id', 'name')->first();
        // $pro['product_']  = ProductCategory::where('category_id', $chkCategory->id)->first();
        $proCategorys  = ProductCategory::where('category_id', $chkCategory->id)
            ->select(
                'product.id', 
                'product.seller_id', 
                'product.discount', 
                'product.discount_status', 
                'produc_categories.product_id', 
                'product.name as pro_name', 
                'produc_categories.category_id', 
                'description', 
                'short_description', 
                'product.free_shopping', 
                'price', 
                'stock_qty',
                'thumnail_img', 
                'product.slug as pro_slug'

                )->join('product', 'product.id', '=', 'produc_categories.product_id')->get();

                // dd($proCategorys);
                // return false;
        $result = [];
        foreach ($proCategorys as $key => $v) {
            $percentPrice = $v->price - ($v->price * $v->discount / 100);
            $dis_price = $v->price - $v->discount;
            $result[] = [
                'id'           => $v->id,
                'product_id'   => $v->product_id,
                'product_name' => $v->pro_name,
                'category_id'  => $v->category_id,
                'discount'     => $v->discount,
                'price'        => number_format($v->price, 2),
                'percentPrice' => number_format($percentPrice, 2),
                'dis_price'    => number_format($dis_price, 2),
                'thumnail_img' => url($v->thumnail_img),
                'pro_slug'     => $v->pro_slug,
                'discount_status'     => $v->discount_status,
                'free_shopping'     => $v->free_shopping,
                'description'     => $v->description,
                'short_description'     => $v->short_description,
                'stock_qty'     => $v->stock_qty,

            ];
        }

        $data['result']        = $result;
        $data['pro_count']     = count($result);
        $data['categoryname']  = $chkCategory->name;

        // dd($product['pro_row']);
        // return false;
        return response()->json($data, 200);
    }
    public function countrylist()
    {
        $countries = Country::all();
        return response()->json(['countries' => $countries]);
    }
    public function allbrandlist()
    {

        $arrData = Brands::all();
        // $imagesUrl = !empty($rows->image) ? url($rows->image) : "";
        // $response = [
        //     'data' => $rows,
        //     'image' => $imagesUrl,
        //     'message' => 'success'
        // ];
        $formatedData = [];
        foreach ($arrData as $Key => $value) {
            $formatedData[] = [
                'id'       => $value->id,
                'name'      => $value->name,
                'slug'      => $value->slug,
                'image'         => !empty($value->image) ? url($value->image) : "",
            ];
        }
        return response()->json($formatedData, 200);
    }
    public function getdealsbannersads()
    {
        $dealbanner    = dealsbanner::all();

        $formatedData = [];
        foreach ($dealbanner as $Key => $value) {
            $formatedData[] = [
                'id'       => $value->id,
                'name'      => $value->name,
                'imageOne'         => !empty($value->imageOne) ? url($value->imageOne) : "",
                'imageTwo'         => !empty($value->imageTwo) ? url($value->imageTwo) : "",
            ];
        }
        return response()->json($formatedData, 200);
        // return 0;
    }
    public function getallsellerList(Request $request)
    {
        $sellershop = User::where('role_id', 3)->where('status', 1)->get();
        $formatedData = [];
        foreach ($sellershop as $Key => $value) {
            $formatedData[] = [
                'id'                => $value->id,
                'role'              => $value->role_id,
                'businessName'      => $value->business_name,
                'name'      => $value->business_name,
                'slug'      => $value->business_name_slug,
                'businessLogo'      => !empty($value->business_logo) ? url($value->business_logo) : "",
                'status'              => $value->status,
                'home_status'              => $value->home_status,
            ];
        }
        return response()->json($formatedData, 200);
    }
    public function allsellerListadmin(Request $request)
    {
        $sellershop = User::where('role_id', 3)->get();

        $activeData = User::where('home_status', 1)->count();

        $formatedData = [];
        foreach ($sellershop as $Key => $value) {
            $formatedData[] = [
                'id'                => $value->id,
                'role'              => $value->role_id,
                'businessName'      => $value->business_name,
                'name'      => $value->business_name,
                'slug'      => $value->business_name_slug,
                'businessLogo'      => !empty($value->business_logo) ? url($value->business_logo) : "",
                'status'              => $value->status,
                'home_status'              => $value->home_status,
            ];
        }
        return response()->json([
            'data' => $formatedData,
            'active_data' => $activeData,
        ], 200);
    }

    public function featchcoupon()
    {

        $coupons = coupons::all();
        $formatedData = [];
        foreach ($coupons as $Key => $value) {
            $formatedData[] = [

                'id'            => $value->id,
                'name'          => $value->name,
                'slug'          => $value->slug,
                'promocode'     => $value->promocode,
                'code_type'     => $value->code_type,
                'min_shopping'  => $value->min_shopping,
                'status'        => $value->status,
                'd_percent'     => $value->d_percent,
                'd_fvalue'      => $value->d_fvalue,
            ];
        }
        return response()->json($formatedData, 200);
    }
    public function getCoupon(request $request, $code)
    {


        $coupons = coupons::where('promocode', $code)->where('status', 1)->first();

        // Check if coupon is not found or not active
        if (!$coupons) {
            // Send error response
            return response()->json([
                'status' => false,
                'message' => 'Coupon not found or inactive.'
            ], 404); // You can use any appropriate HTTP status code
        }

        return response()->json([
            'status' => true,
            'data' => $coupons,

        ]);
    }
    public function getbanner()
    {

        $banner = topHeaderBanner::first();


        if ($banner->count() > 0) {
            $image = $banner->image ? url($banner->image) : null;
            return response()->json([
                'status' => 200,
                'image' => $image,
            ], 200);
        } else {
            return response()->json([
                'status' => 202,
                'message' => "Banner Not Found"
            ], 202);
        }
    }
    public function topadsbanner()
    {
        $adsBannder = sliderSideAdsModel::first();

        if ($adsBannder->count() > 0) {
            $image1 = $adsBannder->adsOne ? url($adsBannder->adsOne) : null;
            $image2 = $adsBannder->adsTwo ? url($adsBannder->adsTwo) : null;
            return response()->json([
                'status' => 200,
                'image1' => $image1,
                'image2' => $image2,
            ], 200);
        } else {
            return response()->json([
                'status' => 202,
                'message' => "Banner Not Found"
            ], 202);
        }
    }
    public function getbrandproductList($slug)
    {
        // $getbrands = $request->slug;
        $getbrands = Brands::where("slug", $slug)->first();

        $id = $getbrands->id;

        $getProduct = Product::where("brand", $id)->where("status", 1)->get();

        $products = [];
        foreach ($getProduct as $v) {
            $products[] = [

                'id'                => $v->id,
                'name'              => $v->name,
                'product_name'              => $v->name,
                'slug'              => $v->slug,
                'image'             => url($v->thumnail_img),
                'thumnail_img'             => url($v->thumnail_img),
                'business_name'     => $v->business_name,
                'price'             => $v->price,
                'discount'          => $v->discount,
                'stock_quantity'    => $v->stock_qty,
                'mini_quantity'     => $v->stock_mini_qty,

            ];
        }

        $data['products']                = !empty($products) ? $products : "";

        // dd($data['products']);
        return response()->json($data);
    }

    public function getSpeacialCatList(Request $request)
    {
        try {
            $categories = Categorys::with('children.children.children.children.children')->where('speacial_status', 1)->where('parent_id', 0)->get();
            $count = Categorys::where('speacial_status', 1)->count();

            $products = [];
            foreach ($categories as $v) {
                $products[] = [

                    'id'                => $v->id,
                    'name'              => $v->name,
                    'slug'              => $v->slug,
                    'image'             => url($v->file),
                    'speacial_status'   => $v->speacial_status,

                ];
            }

            return response()->json([
                'data'  => $products,
                'count' => $count,

            ]);
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }
    public function checkAttribueDetails(Request $request){

        try {
            $data['attribute'] = ProductVarrientHistory::where('color', $request->color)
                ->where('product_id', $request->product_id)
                ->get();
            return response()->json($data);
        } catch (QueryException $e) {
            // Handle query exception
            return response()->json(['error' => 'Query exception occurred'], 500);
        }

    }
}
