<template>
    <div>
        <div class="row">
            <div class="col-12">
                <div class="product_section">
                    <div class="row px-2">
                        <!-- sidebar fillter  -->
                        <div class="col-md-4 desktop_view">
                            <div class="left_side_product">
                                <div class="category_list">
                                    <h6>Category</h6>
                                    <ul>
                                        <li>
                                            <a href="#">Computing</a>
                                        </li>
                                        <li>
                                            <a href="#">Electronics</a>
                                        </li>
                                        <li>
                                            <a href="#">Phone & tablates</a>
                                        </li>
                                        <li>
                                            <a href="#">Fashion</a>
                                        </li>
                                        <li>
                                            <a href="#">Home & office </a>
                                        </li>
                                        <li>
                                            <a href="#">Grocery</a>
                                        </li>
                                        <li>
                                            <a href="#">Health & beauty</a>
                                        </li>

                                        <li>
                                            <a href="#">Baby Product</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="delivery_list">
                                    <h6>Express delivery</h6>
                                    <ul>
                                        <li>
                                            <input type="checkbox"><label for="">DHL </label>
                                        </li>
                                    </ul>
                                </div>
                                <div class="delivery_list">
                                    <h6>Shipped from </h6>
                                    <ul>
                                        <li>
                                            <input type="radio" checked name="from" id="from"><label for="from">From
                                                Bangladesh </label>
                                        </li>
                                        <li>
                                            <input type="radio" name="from" id="from"><label for="from">From Bangladesh
                                            </label>
                                        </li>
                                    </ul>
                                </div>
                                <div class="brands_list">
                                    <h6>Brand</h6>
                                    <div class="search_side">
                                        <i class="fa-solid fa-magnifying-glass"></i>
                                        <input type="text" class="form-control" placeholder="Search">
                                    </div>
                                    <ul class="brand_scroll">
                                        <li>
                                            <input type="checkbox"><label for="">Addidas </label>
                                        </li>
                                        <li>
                                            <input type="checkbox"><label for="">AGM </label>
                                        </li>
                                        <li>
                                            <input type="checkbox"><label for="">Apple </label>
                                        </li>
                                        <li>
                                            <input type="checkbox"><label for="">Walton </label>
                                        </li>
                                        <li>
                                            <input type="checkbox"><label for="">Addidas </label>
                                        </li>
                                        <li>
                                            <input type="checkbox"><label for="">AGM </label>
                                        </li>
                                        <li>
                                            <input type="checkbox"><label for="">Apple </label>
                                        </li>
                                        <li>
                                            <input type="checkbox"><label for="">Walton </label>
                                        </li>
                                        <li>
                                            <input type="checkbox"><label for="">Addidas </label>
                                        </li>
                                        <li>
                                            <input type="checkbox"><label for="">AGM </label>
                                        </li>
                                        <li>
                                            <input type="checkbox"><label for="">Apple </label>
                                        </li>
                                        <li>
                                            <input type="checkbox"><label for="">Walton </label>
                                        </li>
                                        <li>
                                            <input type="checkbox"><label for="">Addidas </label>
                                        </li>
                                        <li>
                                            <input type="checkbox"><label for="">AGM </label>
                                        </li>
                                        <li>
                                            <input type="checkbox"><label for="">Apple </label>
                                        </li>
                                        <li>
                                            <input type="checkbox"><label for="">Walton </label>
                                        </li>
                                    </ul>
                                </div>
                                <div class="price_range">
                                    <div class="sidebr_title">
                                        <h6>Price Range </h6>
                                        <button type="button" class="btn_apply">Apply</button>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div id="slider-range" class="price-filter-range" name="rangeInput"></div>

                                            <div class="d-flex" style="margin:10px auto">
                                                <input type="number" style="width: 45%;margin: 0px 3px;" min=0
                                                    max="9900" oninput="validity.valid||(value='0');" id="min_price"
                                                    class="price-range-field" />
                                                <input type="number" style="width: 45%;margin: 0px 3px" min=0
                                                    max="10000" oninput="validity.valid||(value='10000');"
                                                    id="max_price" class="price-range-field" />
                                            </div>

                                            <!-- <button class="price-range-search" id="price-range-submit">Search</button>
    
                                              <div id="searchResults" class="search-results-block"></div> -->
                                        </div>
                                    </div>
                                </div>
                                <div class="brands_list">
                                    <h6>size</h6>
                                    <div class="search_side">
                                        <i class="fa-solid fa-magnifying-glass"></i>
                                        <input type="text" class="form-control" placeholder="Search">
                                    </div>
                                    <ul class="brand_scroll">
                                        <li>
                                            <input type="checkbox"><label for="">XS</label>
                                        </li>
                                        <li>
                                            <input type="checkbox"><label for="">S</label>
                                        </li>
                                        <li>
                                            <input type="checkbox"><label for="">L</label>
                                        </li>
                                        <li>
                                            <input type="checkbox"><label for="">M </label>
                                        </li>
                                        <li>
                                            <input type="checkbox"><label for="">XL </label>
                                        </li>
                                        <li>
                                            <input type="checkbox"><label for="">XXL </label>
                                        </li>
                                        <li>
                                            <input type="checkbox"><label for="">XXL </label>
                                        </li>
                                        <li>
                                            <input type="checkbox"><label for="">0-2 Years</label>
                                        </li>
                                        <li>
                                            <input type="checkbox"><label for="">2-3 Years</label>
                                        </li>
                                        <li>
                                            <input type="checkbox"><label for="">3-5 Years</label>
                                        </li>
                                        <li>
                                            <input type="checkbox"><label for="">5-7 Years</label>
                                        </li>
                                        <li>
                                            <input type="checkbox"><label for="">7-10 Years</label>
                                        </li>
                                    </ul>
                                </div>
                                <div class="brands_list">
                                    <h6>Gender</h6>

                                    <ul class="brand_scroll">
                                        <li>
                                            <input type="checkbox"><label for="">Boys</label>
                                        </li>
                                        <li>
                                            <input type="checkbox"><label for="">Girls</label>
                                        </li>
                                        <li>
                                            <input type="checkbox"><label for="">Man</label>
                                        </li>
                                        <li>
                                            <input type="checkbox"><label for="">Woman</label>
                                        </li>
                                        <li>
                                            <input type="checkbox"><label for="">Male</label>
                                        </li>
                                        <li>
                                            <input type="checkbox"><label for="">Female</label>
                                        </li>
                                        <li>
                                            <input type="checkbox"><label for="">Teen</label>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <!-- grid  -->
                        <div class="col-md-8">
                            <div class="product_list">
                                <div class="title_product">
                                    <div>
                                        <h6>Officail Store Deals</h6>
                                    </div>
                                    <div>
                                        <label for="">Short By:</label>
                                        <select name="" id="">
                                            <option value="">Popularity</option>
                                            <option value="">New arrival</option>
                                            <option value="">Low to High</option>
                                            <option value="">high to low</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="grid_list">
                                    <div>
                                        <p>5,000 product found</p>
                                    </div>
                                    <div class="d-flex">
                                        <a type="button" class="filter_btn mobile_view"><i
                                                class="fa-solid fa-sliders"></i></a>
                                        <!-- <Nuxt-Link to="/product-list"><i class="fa-solid fa-list"></i></Nuxt-Link>
                                        <Nuxt-Link to="/product-grid" class="active"><i
                                                class="fa-solid fa-grip"></i></Nuxt-Link> -->
                                    </div>
                                    <div class="filter_modal">
                                        <div class="row px-4">
                                            <div class="col-6"></div>
                                            <div class="col-6 text-end "><i class="fa-solid fa-x filter_close"
                                                    style="cursor: pointer;"></i></div>
                                        </div>
                                        <div class="modal_fdiv">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="left_side_product">
                                                        <div class="category_list">
                                                            <h6>Category</h6>
                                                            <ul>
                                                                <li>
                                                                    <a href="#">Computing</a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">Electronics</a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">Phone & tablates</a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">Fashion</a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">Home & office </a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">Grocery</a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">Health & beauty</a>
                                                                </li>

                                                                <li>
                                                                    <a href="#">Baby Product</a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="delivery_list">
                                                            <h6>Express delivery</h6>
                                                            <ul>
                                                                <li>
                                                                    <input type="checkbox"><label for="">DHL </label>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="delivery_list">
                                                            <h6>Shipped from </h6>
                                                            <ul>
                                                                <li>
                                                                    <input type="checkbox"><label for="">From Bangladesh
                                                                    </label>
                                                                </li>
                                                                <li>
                                                                    <input type="checkbox"><label for="">From Bangladesh
                                                                    </label>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="brands_list">
                                                            <h6>Brand</h6>
                                                            <div class="search_side">
                                                                <i class="fa-solid fa-magnifying-glass"></i>
                                                                <input type="text" class="form-control"
                                                                    placeholder="Search">
                                                            </div>
                                                            <ul class="brand_scroll">
                                                                <li>
                                                                    <input type="checkbox"><label for="">Addidas
                                                                    </label>
                                                                </li>
                                                                <li>
                                                                    <input type="checkbox"><label for="">AGM </label>
                                                                </li>
                                                                <li>
                                                                    <input type="checkbox"><label for="">Apple </label>
                                                                </li>
                                                                <li>
                                                                    <input type="checkbox"><label for="">Walton </label>
                                                                </li>
                                                                <li>
                                                                    <input type="checkbox"><label for="">Addidas
                                                                    </label>
                                                                </li>
                                                                <li>
                                                                    <input type="checkbox"><label for="">AGM </label>
                                                                </li>
                                                                <li>
                                                                    <input type="checkbox"><label for="">Apple </label>
                                                                </li>
                                                                <li>
                                                                    <input type="checkbox"><label for="">Walton </label>
                                                                </li>
                                                                <li>
                                                                    <input type="checkbox"><label for="">Addidas
                                                                    </label>
                                                                </li>
                                                                <li>
                                                                    <input type="checkbox"><label for="">AGM </label>
                                                                </li>
                                                                <li>
                                                                    <input type="checkbox"><label for="">Apple </label>
                                                                </li>
                                                                <li>
                                                                    <input type="checkbox"><label for="">Walton </label>
                                                                </li>
                                                                <li>
                                                                    <input type="checkbox"><label for="">Addidas
                                                                    </label>
                                                                </li>
                                                                <li>
                                                                    <input type="checkbox"><label for="">AGM </label>
                                                                </li>
                                                                <li>
                                                                    <input type="checkbox"><label for="">Apple </label>
                                                                </li>
                                                                <li>
                                                                    <input type="checkbox"><label for="">Walton </label>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="price_range">
                                                            <div class="sidebr_title">
                                                                <h6>Price Range </h6>
                                                                <button type="button" class="btn_apply">Apply</button>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div id="slider-range" class="price-filter-range"
                                                                        name="rangeInput"></div>

                                                                    <div class="d-flex" style="margin:10px auto">
                                                                        <input type="number"
                                                                            style="width: 45%;margin: 0px 3px;" min=0
                                                                            max="9900"
                                                                            oninput="validity.valid||(value='0');"
                                                                            id="min_price" class="price-range-field" />
                                                                        <input type="number"
                                                                            style="width: 45%;margin: 0px 3px" min=0
                                                                            max="10000"
                                                                            oninput="validity.valid||(value='10000');"
                                                                            id="max_price" class="price-range-field" />
                                                                    </div>

                                                                    <!-- <button class="price-range-search" id="price-range-submit">Search</button>
    
                                                                      <div id="searchResults" class="search-results-block"></div> -->
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="brands_list">
                                                            <h6>size</h6>
                                                            <div class="search_side">
                                                                <i class="fa-solid fa-magnifying-glass"></i>
                                                                <input type="text" class="form-control"
                                                                    placeholder="Search">
                                                            </div>
                                                            <ul class="brand_scroll">
                                                                <li>
                                                                    <input type="checkbox"><label for="">XS</label>
                                                                </li>
                                                                <li>
                                                                    <input type="checkbox"><label for="">S</label>
                                                                </li>
                                                                <li>
                                                                    <input type="checkbox"><label for="">L</label>
                                                                </li>
                                                                <li>
                                                                    <input type="checkbox"><label for="">M </label>
                                                                </li>
                                                                <li>
                                                                    <input type="checkbox"><label for="">XL </label>
                                                                </li>
                                                                <li>
                                                                    <input type="checkbox"><label for="">XXL </label>
                                                                </li>
                                                                <li>
                                                                    <input type="checkbox"><label for="">XXL </label>
                                                                </li>
                                                                <li>
                                                                    <input type="checkbox"><label for="">0-2
                                                                        Years</label>
                                                                </li>
                                                                <li>
                                                                    <input type="checkbox"><label for="">2-3
                                                                        Years</label>
                                                                </li>
                                                                <li>
                                                                    <input type="checkbox"><label for="">3-5
                                                                        Years</label>
                                                                </li>
                                                                <li>
                                                                    <input type="checkbox"><label for="">5-7
                                                                        Years</label>
                                                                </li>
                                                                <li>
                                                                    <input type="checkbox"><label for="">7-10
                                                                        Years</label>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="brands_list">
                                                            <h6>Gender</h6>

                                                            <ul class="brand_scroll">
                                                                <li>
                                                                    <input type="checkbox"><label for="">Boys</label>
                                                                </li>
                                                                <li>
                                                                    <input type="checkbox"><label for="">Girls</label>
                                                                </li>
                                                                <li>
                                                                    <input type="checkbox"><label for="">Man</label>
                                                                </li>
                                                                <li>
                                                                    <input type="checkbox"><label for="">Woman</label>
                                                                </li>
                                                                <li>
                                                                    <input type="checkbox"><label for="">Male</label>
                                                                </li>
                                                                <li>
                                                                    <input type="checkbox"><label for="">Female</label>
                                                                </li>
                                                                <li>
                                                                    <input type="checkbox"><label for="">Teen</label>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <!-- start -->
                                    <div v-for="item in products" :key="product.id" class="col-xl-4 col-lg-4 col-md-4 col-sm-6 col-6">
                                        <div class="product_grid">
                                            <nuxt-link :to="`/product-details/${item.slug}`">
                                                <img :src="item.image" class="img-fluid" :alt="item.name">
                                                <span>Free Delivery</span>
                                                <strong>Official Store </strong>
                                                <h1>{{ item.name }}</h1>
                                                <p>${{ item.price }}</p>
                                                <p> <strike>{{ item.oldprice }}</strike> <span>{{ item.discount
                                                        }}%</span></p>
                                            </nuxt-link>

                                            <div class="d-flex align-items-center">
                                                <div class="rating">
                                                    <i class="fa fa-star checked"></i>
                                                    <i class="fa fa-star checked"></i>
                                                    <i class="fa fa-star checked"></i>
                                                    <i class="fa fa-star checked"></i>
                                                    <i class="fa fa-star "></i>
                                                </div>
                                                <h6>(200)</h6>
                                            </div>
                                            <!-- <button type="button"  class="btn_cart" @click="addToCart(item.id)">Add to Cart</button> -->
                                            <button type="button" class="btn_cart" @click="addToCart(item.id)">Add to
                                                cart</button>

                                        </div>
                                    </div>
                                    <!-- END -->
                                </div>
                                <div class="row">
                                    <div class="col-12">


                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    data() {
        return {
            loading: false,
            cart: [],
            products: [],
            product:[],
            categories: [],
            pro_count: 0,
            categoryname: '',
        };
    },

    mounted() {
        this.calculateSubtotal();
        this.loadCart();
        this.cartItemCount();
        this.fetchData();
    },
    methods: {

        cartItemCount() {
            let itemCount = 0;
            this.cart.forEach((item) => {
                itemCount += item.quantity;
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
                this.calculateSubtotal(); // Optionally recalculate subtotal after updating quantity
            }
        },
        addToCart(productId) {
            const productToAdd = this.products.find((product) => product.id === productId);
            //const existingItem = this.cart.find((item) => item.product.id === productId);

            if(productToAdd){
                this.cart.push({
                    product: productToAdd,
                    quantity: 1
                });
            }

            this.saveCart();
            this.cartItemCount();
            this.calculateSubtotal();
        },

        removeFromCart(product) {
            const index = this.cart.findIndex((item) => item.product.id === product.id);

            if (index !== -1) {
                if (this.cart[index].quantity > 1) {
                    this.cart[index].quantity -= 1;
                } else {
                    this.cart.splice(index, 1);
                }

                this.saveCart();
                this.calculateSubtotal();
                this.cartItemCount();
            }
        },
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

        calculateSubtotal() {

            // let subtotal = 0;
            // this.cart.forEach((item) => {
            //     const product = item.products;
            //     console.log(`Quantity: ${item.quantity}, Price: ${product.price}`);
            //     const priceAsNumber = parseFloat(product.price.replace(/[^\d.]/g, '')); //510;//product.price;
            //     if (!isNaN(item.quantity) && !isNaN(priceAsNumber)) {
            //         subtotal += item.quantity * priceAsNumber;
            //     } else {
            //         console.error('Invalid quantity or price:', item.quantity, product.price);
            //     }
            //     // console.log(`Intermediate Subtotal: ${subtotal}`);
            // });
            //console.log(`Final Subtotal: ${subtotal}`);
            return 0;
            //return subtotal;
        },
        async fetchData() {
            this.loading = true;
            const slug = this.$route.query.slug;
            try {
                const response = await this.$axios.get(`/unauthenticate/brandproductList/${slug}`).then(response => {
                    // console.log("=-===" + response.data.products);
                    this.products = response.data.products;
                    this.product  = response.data.products;



                    
                    
                })
            } catch (error) {
                // Handle error
            } finally {
                this.loading = false; // Hide loader after response
            }
        }
    }
};
</script>