<template>
    <div>
        <LogoAndPayment />
        <!-- navbar section start here  -->
        <section class="search_bar">
            <div class="container">
                <div class="row justify-content-between align-items-center">
                    <div class="col-lg-3 col-md-4 col-4">
                        <div class="logo nav_tab">
                            <!-- mobile view sidebar  -->
                            <button type="button" class="btn_menu mobile_view" data-bs-toggle="offcanvas"
                                data-bs-target="#offcanvasExample" aria-controls="offcanvasExample"><i
                                    class="fa-solid fa-bars-staggered"></i></button>
                            <!-- sidebar offcanvas  -->
                            <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasExample"
                                aria-labelledby="offcanvasExampleLabel">
                                <div class="offcanvas-header">
                                    <button type="button" class="btn-close" data-bs-dismiss="offcanvas"
                                        aria-label="Close"></button>
                                    <h5 class="offcanvas-title" id="offcanvasExampleLabel">Ecommerce</h5>
                                </div>
                                <div class="offcanvas-body">
                                    <!-- offf canvas start here  -->
                                    <Common_MobileSidebar />
                                </div>
                            </div>
                            <!-- mini tab view navbar here  -->
                            <Common_MiniTabNavbar />
                            <!-- nav end  -->
                            <Nuxt-link to="/">Ecommerce <i class=" fa-regular fa-star"></i></Nuxt-link>
                        </div>
                    </div>
                    <div class="col-6 desktop_view mini_tab_hide">
                        <form action="" class="">
                            <i class="fa-solid fa-magnifying-glass"></i>
                            <input type="text" name="" id="" placeholder="Search Product" class="form-control"> <button
                                type="button">Search</button>
                        </form>
                    </div>
                    <!-- desktop_view options  -->
                    <DesktopViewOption />
                    <!-- mobile view options  -->
                    <div class="col-4 ms-auto  mobile_view">
                        <div class="mobile_nav_option">
                            <a class="search_form"><i class="fa-solid fa-magnifying-glass"></i></a>
                        </div>
                    </div>
                    <!-- search modal  -->
                    <Common_MobileSearchProduct />
                </div>
            </div>
        </section>

        <section class="main_content">
            <div class="container">
                <div class="row">
                    <!-- left side  -->
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                        <div class="product_details_part">
                            <div class="row">
                                <!-- <p>Product Slug: {{ pro_row.description }}</p> -->
                                <!-- left part  -->
                                <div class="col-md-5">

                                    <!-- {{ featuresimgs }} -->
                                    <div class="loading-indicator" v-if="loading" style="text-align: center;">
                                        <div class="loader-container">
                                            <center class="loader-text">Loading...</center>
                                            <img src="/loader/loader.gif" loading="lazy" alt="Loader" />
                                        </div>
                                    </div>
                                    <section class="Slider">
                                        <div>
                                            <img id="featuredImage" class="Slider-featuredImage sliderimg"
                                                loading="lazy" :src="featuresimgs">
                                        </div>

                                        <div class="Slider-thumbnails">
                                            <a v-for="(image, index) in slider_img" :key="index" :href="image.thumnail"
                                                :class="{ 'Slider-thumbnail': true, 'active': index === 0 }"
                                                @click.prevent="changeSlide(index)">
                                                <img :src="image.thumnail" :alt="image.alt"
                                                    style="height: 80px; width: 70px;" class="border border-1 rounded">
                                            </a>
                                        </div>
                                    </section>

                                    <!-- image slider end here  -->
                                    <div class="social_share">
                                        <h5>Share This Product</h5>
                                        <ul>
                                            <li>
                                                <a href="#"><i class="fa-brands fa-facebook-f"></i></a>
                                            </li>
                                            <li>
                                                <a href="#"><i class="fa-brands fa-instagram"></i></a>
                                            </li>
                                            <li>
                                                <a href="#"><i class="fa-brands fa-twitter"></i></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- right part  -->
                                <div class="col-md-7">
                                    <div class="pro_info">
                                        <div class="badgeses">
                                            <div>
                                                <span v-if="seller.business_name !== null">{{seller.business_name}}</span>
                                                <strong v-if="pro_row.free_shopping == 1">free delivery</strong>
                                                <!-- <span style="background-color: red;"><a href="affiliate.html" style="color: #fff;">Click to Get Your affiliate link</a></span> -->
                                            </div>

                                            <div v-if="loggedIn">
                                                <a href="#" @click="addtowishlist"><i
                                                        class="fa-regular fa-heart"></i></a>

                                            </div>
                                            <div v-else>
                                                <a href="#" @click="login"><i class="fa-regular fa-heart"></i></a>
                                            </div>

                                        </div>
                                        <div class="details_title">
                                            <h1>{{ pro_row.product_name }}</h1>
                                            <h6 v-for="brand in brands_details">
                                                Brand:
                                                <nuxt-link v-if="brand.name !== undefined && brand.name !== ''"
                                                    :to="`/brand-product/brand-grid?slug=${brand.slug}`">
                                                    {{ brand.name }}
                                                </nuxt-link>
                                                <span v-else>No Brand</span>
                                            </h6>

                                        </div>
                                        <div class="price_div">

                                            <h5 v-if="pro_row.discount_status == 2">
                                                <div class="d-flex align-items-center">
                                                    Now: ${{ price = (pro_row.price - pro_row.discount) }}
                                                    <p v-if="pro_row.vat_status == 0" style="color: gray;font-size: 12px;"> +Inclusing VAT.</p>
                                                </div>
                                                <p class="ms-0 d-block"><strike v-if="pro_row.discount !== 0">Was: ${{
                                        pro_row.price }} </strike></p>
                                            </h5>
                                            <h5 v-else-if="pro_row.discount_status == 1">
                                                <div class="d-flex align-items-center">
                                                    Now: ${{ price = pro_row.price - (pro_row.price * pro_row.discount / 100) }} 
                                                    <p v-if="pro_row.vat_status == 0" style="color: gray;font-size: 12px;"> +Inclusing VAT.</p>
                                                </div>
                                                <p class="ms-0 d-block"><strike v-if="pro_row.discount !== 0">Was: ${{
                                        pro_row.price }}</strike></p>
                                            </h5>
                                            <h5 v-else>${{ pro_row.price }}</h5>

                                            <p v-if="pro_row.stock_status == 1 && pro_row.stock_qty >=1 ">In stock</p>
                                            <p v-else-if="pro_row.stock_status == 2 && pro_row.stock_qty >=1">in stock</p>
                                            <p v-else-if="pro_row.stock_status == 3">Out of stock</p>
                                            <p v-else-if="pro_row.stock_status == 4">Preorder</p>
                                            <p v-else-if="pro_row.stock_qty == 0">Out Of stock</p>
                                            <p v-else>Out Of stock</p>
                                        </div>
                                        <div class="ratings_pro">
                                            <p v-if="pro_row.free_shopping == 0">+shipping (${{ pro_row.flat_rate_price
                                                }} in per {{ pro_row.unit }})</p>
                                            <div class="d-flex align-items-center">
                                                <div class="d-flex align-items-center ">
                                                    <i class="fa-solid fa-star active"></i>
                                                    <i class="fa-solid fa-star active"></i>
                                                    <i class="fa-solid fa-star active"></i>
                                                    <i class="fa-solid fa-star"></i>
                                                    <i class="fa-solid fa-star"></i>
                                                </div>
                                                <h6 class="mb-0 ms-2">( <a href="#feedback">188 verified ratings</a>)
                                                </h6>
                                            </div>
                                            <div class="d-flex align-items-end">
                                                <div class="size_attr" v-if="colorGroup">
                                                    <label for="">Color:</label>
                                                    <select v-model="color" class="form-control w-100" @change="showAttrVal()">
                                                        <option disabled value="" selected>Select</option>
                                                        <option v-for="(item, index) in colorGroup" :key="index" :value="item.color"
                                                            :selected="item.selected">
                                                            {{ item.color }}
                                                        </option>
                                                    </select>
                                                </div>
                                                <!-- {{ attibute }} -->
                                                <!-- ===================================  -->
                                                <div class="size_attr" v-if="varientList !== null">
                                                    <label for="">Size:</label>
                                                    <select  required class="form-control">
                                                        <option disabled value="" selected>Select</option>
                                                        <option v-for="(varient, index) in varientList" :key="index" @click="handleButtonClick(varient)" :value="varient.size"> {{varient.size}}</option>
                                                    </select>
                                                </div>
                                                <div class="number">
                                                    <span class="minus" @click="decrement">-</span>
                                                    <input v-model="updatedQuantity" type="number"
                                                        @input="sanitizeInput" />
                                                    <span class="plus" @click="increment">+</span>
                                                </div>
                                                <!-- ==============================  -->
                                            </div>

                                            <button type="button" class="btn_cart"
                                                style="visibility: unset; max-width: 120px;"
                                                @click="addToCart(pro_row.id)"><i
                                                    class="fa-solid fa-cart-shopping"></i>Add to Cart </button>
                                            <p v-if="pro_row.free_shopping !== 1" class="m-0">Delivery by <strong>{{
                                        futureDate }}</strong></p>
                                            <p v-if="pro_row.free_shopping == 1" class="m-0">Free Delivery by <strong>{{
                                                    futureDate }}</strong></p>
                                        </div>
                                        <div class="shortDescPro">

                                        </div>
                                        <div class="promotion">
                                            <h4>Promotions</h4>
                                            <ul>
                                                <li>
                                                    <nuxt-link to="/sell-on-ecommerce"><i
                                                            class="fa-solid fa-shield-halved"></i>Become a seller and
                                                        start sell your product in ECOMMERCE </nuxt-link>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="report">
                                    <!-- <a href="#">Report Incorrect product information</a> -->
                                </div>
                            </div>
                        </div>
                    </div>


                </div>

            </div>
        </section>

        <!-- details section -->
        <section class="details_scrollspay">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <!-- details part start here  -->
                        <div class="row">
                            <div class="col-12">
                                <div data-bs-spy="scroll" data-bs-target="#list-example" data-bs-offset="0"
                                    class="scrollspy-example" tabindex="0">
                                    <div class="product_details" id="details">

                                    </div>

                                    <!-- customer recent views  -->

                                    <div class="feedback" id="feedback">
                                        <div class="side_title">
                                            <h5>Varified Customer Feedback</h5>
                                            <a href="customer-review.html">See All <i
                                                    class="fa-solid fa-arrow-right"></i></a>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <h2>Varified ratings(147)</h2>
                                                <div class="box_rating">
                                                    <h3>4.5/5</h3>
                                                    <div class="ratings">
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star"></span>
                                                        <span class="fa fa-star"></span>
                                                    </div>
                                                    <p>147 verified ratings</p>
                                                </div>
                                                <div class="rate_count">
                                                    <p>5</p>
                                                    <i class="fa fa-star checked"></i>
                                                    <span>(106)</span>
                                                    <div class="progress">
                                                        <div class="progress-bar" role="progressbar" style="width: 25%;"
                                                            aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="rate_count">
                                                    <p>4</p>
                                                    <i class="fa fa-star checked"></i>
                                                    <span>(106)</span>
                                                    <div class="progress">
                                                        <div class="progress-bar" role="progressbar" style="width: 25%;"
                                                            aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="rate_count">
                                                    <p>3</p>
                                                    <i class="fa fa-star checked"></i>
                                                    <span>(106)</span>
                                                    <div class="progress">
                                                        <div class="progress-bar" role="progressbar" style="width: 25%;"
                                                            aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="rate_count">
                                                    <p>2</p>
                                                    <i class="fa fa-star checked"></i>
                                                    <span>(106)</span>
                                                    <div class="progress">
                                                        <div class="progress-bar" role="progressbar" style="width: 25%;"
                                                            aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="rate_count">
                                                    <p>1</p>
                                                    <i class="fa fa-star checked"></i>
                                                    <span>(106)</span>
                                                    <div class="progress">
                                                        <div class="progress-bar" role="progressbar" style="width: 25%;"
                                                            aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-8 right_side_rate">
                                                <h2>COMMENTS FROM VERIFIED PURCHASES(51)</h2>
                                                <div>
                                                    <div class="ratings">
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star"></span>
                                                        <span class="fa fa-star"></span>
                                                    </div>
                                                    <h5>Awsome</h5>
                                                    <p>awesome</p>
                                                    <div class="d-flex justify-content-between">
                                                        <p>04-08-2023 By <a href="#">User </a></p>
                                                        <p class="varify_tag"><i class="fa fa-check"></i>Varified
                                                            Customer</p>
                                                    </div>
                                                </div>
                                                <div>
                                                    <div class="ratings">
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star"></span>
                                                        <span class="fa fa-star"></span>
                                                    </div>
                                                    <h5>Awsome</h5>
                                                    <p>awesome</p>
                                                    <div class="d-flex justify-content-between">
                                                        <p>04-08-2023 By <a href="#">User </a></p>
                                                        <p class="varify_tag"><i class="fa fa-check"></i>Varified
                                                            Customer</p>
                                                    </div>
                                                </div>
                                                <div>
                                                    <div class="ratings">
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star"></span>
                                                        <span class="fa fa-star"></span>
                                                    </div>
                                                    <h5>Awsome</h5>
                                                    <p>awesome</p>
                                                    <div class="d-flex justify-content-between">
                                                        <p>04-08-2023 By <a href="#">User </a></p>
                                                        <p class="varify_tag"><i class="fa fa-check"></i>Varified
                                                            Customer</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- You may like this  -->

                                </div>

                            </div>
                            <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 d-none">
                                <div class="sidebar_here">
                                    <div id="list-example" class="list-group id_list">
                                        <a class="list-group-item list-group-item-action active" href="#details"><i
                                                class="fa-regular fa-file-lines"></i>Product details </a>
                                        <a class="list-group-item list-group-item-action" href="#spacification"><i
                                                class="fa-solid fa-list"></i>Specification</a>
                                        <a class="list-group-item list-group-item-action" href="#feedback"><i
                                                class="fa-regular fa-message"></i>Varified Customer Feedback</a>
                                    </div>

                                    <div class="pro_cart">
                                        <div class="d-flex">
                                            <div><img :src="featuresimgs" alt=""></div>
                                            <div>
                                                <p>TK {{ pro_row.price }}</p>
                                                <p><strike>TK {{ pro_row.discount }}</strike></p>
                                            </div>
                                        </div>
                                        <button class="btn_cart" type="button"> <i class="fa-solid fa-cart-shopping"
                                                @click="addToCart(pro_row.id)"></i>Add to Cart </button>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <!-- more items for this seller  -->
                        <!-- <div class="row">
                            <div class="col-12">
                                <div class="top_selling">
                                    <div class="row mb-2">
                                        <div class="col-6">
                                            <div class="sell_title">
                                                <h5>More items from this seller </h5>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div> -->

                        <!-- <RecentView /> -->
                    </div>
                </div>
            </div>
        </section>
        <Footer/>

    </div>
</template>

<script>
import $ from 'jquery';
import Common_MobileSidebar from '~/components/Common_MobileSidebar.vue';
import Common_MiniTabNavbar from '~/components/Common_MiniTabNavbar.vue';
import Common_MobileSearchProduct from '~/components/Common_MobileSearchProduct.vue';
export default {
    components: {
        Common_MobileSidebar,
        Common_MiniTabNavbar,
        Common_MobileSearchProduct,

    },

    head: {
        title: 'Product Details',
    },

    async asyncData({
        params
    }) {
        const productSlug = params.slug;
        return {

            //cart
            loading: false,
            cart: [],
            itemCount: 0,
            subtotal: 0,
            updatedQuantity: 1,
            product: [],
            //end cart
            currentIndex: 0,
            featuresimgs: '',
            slider_img: [],
            pro_row: '',
            productSlug,
            historVarient: [{
                varient_id: '',
                sku: '',
                qty: '',
                price: '',
                file: ''
            }],
            color: '',
            brands_details: [],
            currentDateTime: null,
            futureDate: null,
            futureDay: null,
            daysToAdd: '',
            seller: [],
            historVarient: [],
            colorGroup: [],
            varientList: [],

        };
    },
    mounted() {
        this.loadCart();
        this.cartItemCount();
        this.initLightSlider();
        this.fetchData();
        this.updateDateTime();
    },
    computed: {
        loggedIn() {
            return this.$auth.loggedIn;
        },
    },
    methods: {        
        
        handleButtonClick(varient) {
            this.varientData = varient;
            this.pro_row.price = varient.price;
            this.featuresimgs = varient.image;
            // Handle button click event for the selected variant
            // console.log('Button clicked for color:', varient.color);
            // console.log('Button clicked for size:', varient.size);
            // console.log('Button clicked for qty:', varient.qty);
            // console.log('Button clicked for price:', varient.price);
            // console.log('Button clicked for image:', varient.image);
        },
        showAttrVal() {
            this.varientList = [];
            // console.log("value:" + this.color +"===="+ this.pro_Id);
            const color = this.color;
            let product_id = this.pro_Id;

            this.$axios.get(`/unauthenticate/checkAttribueDetails`, {
                params: {
                    product_id: product_id,
                    color: color
                }
            }).then(response => {
                this.varientList = response.data.attribute;
            });


        },
        // =================================================
        updateDateTime() {
            const now = new Date();
            if (now.getHours() >= 17) {
                now.setDate(now.getDate() + 1);
            }
            const formattedDateTime = `${now.toDateString()} ${now.toLocaleTimeString()}`;
            this.currentDateTime = formattedDateTime;
            const futureDate = new Date(now.getTime() + this.daysToAdd * 24 * 60 * 60 * 1000);
            this.futureDate = futureDate.toDateString();
            const days = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
            this.futureDay = days, [futureDate.getDay()];
            setTimeout(this.updateDateTime, 1000);
        },
        login() {
            const Toast = Swal.mixin({
                toast: true,
                position: "top-end",
                showConfirmButton: false,
                timer: 3000,
                timerProgressBar: true,
                didOpen: (toast) => {
                    toast.onmouseenter = Swal.stopTimer;
                    toast.onmouseleave = Swal.resumeTimer;
                }
            });
            Toast.fire({
                icon: "error",
                title: "Please log in to your account to add items to your wishlist."
            });
        },
        async addtowishlist() {
            this.loading = true;
            const productSlug = this.$route.params.slug; //this.$route.query.slug;
            await this.$axios.get(`/order/addtowish/${productSlug}`).then(response => {
                Swal.fire({
                    position: "top-end",
                    icon: "success",
                    title: 'Item successfully added to your wishlist!',
                    showConfirmButton: false,
                    timer: 1500
                });
                console.log(response);
            })
                .catch(error => {
                    // Handle error
                })
                .finally(() => {
                    this.loading = false; // Hide loader after response
                });

        },
        increment() {
            // Increase the quantity value
            this.updatedQuantity++;
        },
        decrement() {
            // Decrease the quantity value, but ensure it doesn't go below 1
            if (this.updatedQuantity > 1) {
                this.updatedQuantity--;
            }
        },
        sanitizeInput() {
            // Remove non-numeric characters from the input
            // Remove non-numeric characters from the input
            this.updatedQuantity = this.updatedQuantity.replace(/\D/g, '');

            // Ensure the value is not empty
            if (this.updatedQuantity === '') {
                this.updatedQuantity = 1;
            }
        },
        //for cart
        loadCart() {
            const savedCart = localStorage.getItem('cart');

            if (savedCart) {
                this.cart = JSON.parse(savedCart);
            }
        },
        saveCart() {
            this.loading = true;
            localStorage.setItem('cart', JSON.stringify(this.cart));
            setTimeout(() => {
                this.loading = false;
            }, 2000);
        },
        cartItemCount() {
            let itemCount = 0;
            this.cart.forEach((item) => {
                itemCount += parseInt(item.quantity);
            });
            this.itemCount = itemCount;
            console.log('Emitting cartItemCountUpdated event with itemCount:', this.itemCount);
            this.$eventBus.$emit('cartItemCountUpdated', this.itemCount);

        },
        updateQuantity(productId, newQuantity) {
            const index = this.cart.findIndex((item) => item.product.id === productId);

            if (index !== -1) {
                this.cart[index].quantity = newQuantity;
                this.saveCart();
            }
        },
        addToCart(productId) {
            const productToAdd = this.product.find((product) => product.id === productId);
            const existingItem = this.cart.find((item) => item.product.id === productId);

            //console.log("------" + productToAdd.product_name);
            //return false;

            if (existingItem) {
                existingItem.quantity += 1;
            } else {
                this.cart.push({
                    product: productToAdd,
                    quantity: this.updatedQuantity,
                });
            }

            this.saveCart();
            this.cartItemCount();
        },

        //end cart
        initLightSlider() {
            let thumbnails = document.getElementsByClassName('Slider-thumbnail');
            let activeImages = document.getElementsByClassName('active');

            for (let i = 0; i < thumbnails.length; i++) {
                thumbnails[i].addEventListener('click', (e) => {
                    e.preventDefault();

                    if (activeImages.length > 0) {
                        activeImages[0].classList.remove('active');
                    }

                    thumbnails[i].classList.add('active');
                    this.featuresimgs = this.slider_img[i].thumnail;
                });
            }
        },
        changeSlide(index) {
            // Change the slide when a thumbnail is clicked
            this.currentIndex = index;
            this.featuresimgs = this.slider_img[index].thumnail;
        },

        async fetchData() {
            const prosulg = this.$route.params.slug; //this.$route.query.slug;
            // console.log("-----------" + prosulg);
            // return false; 
            this.loading = false;
            const response = await this.$axios.get(`/unauthenticate/productSlug/${prosulg}`);
            this.featuresimgs = response.data.data.featuredImage;
            this.slider_img = response.data.data.slider_img;
            this.pro_row = response.data.data.pro_row;
            this.pro_Id = response.data.data.pro_row.id;
            this.seller = response.data.seller;
            this.brands_details = response.data.brand;
            this.product = response.data.data.product;
            this.daysToAdd = response.data.data.pro_row.shipping_days;
            this.historVarient = response.data.attibute.varient;
            this.colorGroup = response.data.attibute.colorGroup;
            // console.log(response.data.attibute.colorGroup);
            this.loading = false;

            $(".product_details").html(response.data.data.pro_row.description);
            $(".shortDescPro").html(response.data.data.pro_row.short_description);
            // console.log("====TEST=========" + response.data.attibute);

        },

    },

}
</script>

<style scoped>
/* img {
        width: 100%;
        display: block;
    } */

.scrollimg {
    height: 40px;
    width: 20px;
}

.sliderimg {
    width: 100%;
    display: block;
}

.Slider {
    max-width: 80vw;
    margin: 0 auto;
}

.Slider-featuredImage {
    padding: 4px
}

.Slider-thumbnails {
    /* display: flex; */
    width: 100%;
    /* overflow: scroll; */
    margin-top: 4px;
    padding: 4px;
    margin-right: 16px;
}

.Slider-thumbnail {
    opacity: 0.7;
    cursor: pointer;
}

.Slider-thumbnail img {
    width: 200px;
}

.Slider-thumbnail .active {
    opacity: 1;
}

.Slider-thumbnail:hover,
.Slider-thumbnail:active,
/* .Slider-thumbnail:focus {
        opacity: 1;
        outline: solid 2px black;
        outline-offset: 2px;
    } */

.Slider-thumbnail:not(:first-of-type) {
    margin-left: 10px;
}
</style>