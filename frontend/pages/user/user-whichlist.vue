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
        <!-- Main section start here  -->

        <section class="main_content ">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-3">
                        <userSidebar />
                    </div>
                    <div class="col-md-9 ps-md-0 col-12">
                        <div class="loading-indicator" v-if="loading">
                            <div class="loader-container">
                                <center class="loader-text">Loading...</center>
                                <img src="/loader/loader.gif" alt="Loader" />
                            </div>
                        </div>
                        <div class="cart rounded-0 p-0" style="background-color: transparent; box-shadow: none;">
                            <div class="side_title">
                                <h6>Wishlist</h6>
                                <button type="button" class="btn_cart" style="visibility: unset; width: fit-content;">Add
                                    all to
                                    cart</button>
                            </div>
                            <div class="card_porduct userWpro">
                                <ul>
                                    <!-- product  -->
                                    <li v-for="product in products" :key="product.wishid">
                                        <div class="row">
                                            <div class="col-8">
                                                <div class="img_title">
                                                    <img :src="product.thumnail_img" class="img-fluid" alt="">
                                                    <div>
                                                        <h1><nuxt-link :to="`/product-details/${product.slug}`">{{
                                                            product.product_name }}</nuxt-link>
                                                        </h1>
                                                        <p>Seller: Ecommerce</p>
                                                        <span class="text-success">In stock </span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-4">
                                                <div class="cart_price">
                                                    <strong>{{ product.price }}TK</strong> <br>
                                                    <strong style="font-weight: 400; color: #989898;"><del>Tk
                                                            {{ product.discount }}</del></strong>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="d-flex justify-content-between">
                                            <div><Button class="btn_cart" style="visibility: unset;"
                                                    @click="remove(product.wishid)"><i
                                                        class="fa-solid fa-trash-can"></i>Remove</Button></div>
                                            <div>
                                                <button class="btn_cart" type="button" @click="addToCart(product.id)"
                                                    style="visibility: unset;"><i class="fa-solid fa-cart-shopping"></i> Add
                                                    To cart </button>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- END Main Section here -->
        <!-- back to top button  -->
        <div class="back_top">
            <a href="#top"><i class="fa-solid fa-angle-up"></i></a>
        </div>
        <Footer />
    </div>
</template>

<script>
import $ from "jquery";


import Common_MobileSidebar from '~/components/Common_MobileSidebar.vue';
import Common_MiniTabNavbar from '~/components/Common_MiniTabNavbar.vue';
import Common_MobileSearchProduct from '~/components/Common_MobileSearchProduct.vue';
import userSidebar from '~/components/userSidebar.vue'

export default {
    middleware: 'auth',
    components: {
        Common_MobileSidebar,
        Common_MiniTabNavbar,
        Common_MobileSearchProduct,
        userSidebar,

    },
    head: {
        title: 'My Wishlist',
    },
    data() {
        return {
            product: [],
            //cart
            loading: false,
            cart: [],
            itemCount: 0,
            subtotal: 0,
            updatedQuantity: 1,
            //end cart
            loading: false,
            products: [],
            errors: {},
        }
    },
    mounted() {
        this.setupEventHandlers();
        this.loadingWishList();
        // this.saveCart();
        // this.addToCart();
    },
    methods: {

        setupEventHandlers() {
            // Ensure DOM elements exist before executing jQuery functions
            $(".post_mdal_open").click(function () {
                $(".post_mdal_").fadeIn();
                $(".search_bar").css("z-index", "0");
            })
            $(".post_mdal_open").click(function () {
                $(".search_bar").css("z-index", "0");
            })
            $(".bt_close").click(function () {
                $(".post_mdal_").fadeOut();
                $(".search_bar").css("z-index", "4");
            })
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
             const productToAdd = this.products.find((product) => product.id === productId);

             if (!productToAdd) {
                 console.error('Product not found');
                 return;
             }

             const existingItem = this.cart.find((item) => item.product.id === productId);

             if (existingItem) {
                 // If the product already exists in the cart, increase its quantity
                 existingItem.quantity += 1;
             } else {
                 // If the product doesn't exist in the cart, add it
                 this.cart.push({
                     product: productToAdd,
                     quantity: 1, // Assuming you want to add one unit by default
                 });
             }

             // Save the updated cart to local storage
             this.saveCart();
             // Update the cart item count
             this.cartItemCount();
         },

        //end cart
        async remove(productid) {
            this.loading = true;
            await this.$axios.get(`/order/removeWishList/${productid}`).then(response => {
                this.loadingWishList();
                Swal.fire({
                    position: "top-end",
                    icon: "success",
                    title: "WishList item deleted successfully",
                    showConfirmButton: false,
                    timer: 1000
                });
            })
                .catch(error => {
                    // Handle error
                })
                .finally(() => {
                    this.loading = false; // Hide loader after response
                });;

        },

        async loadingWishList() {
            this.loading = true;
            await this.$axios.get(`/order/allWishList`).then(response => {
                this.products = response.data;
                console.log(response.data);

            })
                .catch(error => {
                    // Handle error
                })
                .finally(() => {
                    this.loading = false; // Hide loader after response
                });;

        },

        logout() {
            localStorage.removeItem('jwtToken');
            this.$router.push('/');
        },
    }
}

</script>

<style scoped>
.loading-indicator {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(255, 255, 255, 0.8);
    display: flex;
    justify-content: center;
    align-items: center;
    z-index: 9999;
}

/* For Loader */
.loader-container {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    height: 100vh;
    position: relative;
}

.loader-text {
    margin: 0;
    /* Remove default margin */
}

.loader-top {
    top: 0;
}

.loader-bottom {
    bottom: 0;
}
</style>
