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

        <section class="main_content  mt-3">
            <div class="container">
                <div class="row">
                    <div class="col-3">
                        <div class="blog_sidebar d-md-block d-none">
                            <div class="d-flex justify-content-between align-items-center">
                                <h6>Categories</h6>
                                <button class="bt_close d-md-none d-block text-dark"><i class="fa-solid fa-x"></i></button>
                            </div>
                            <form action="">
                                <div class="form_align">
                                    <input type="checkbox" id="Home">
                                    <label for="Home">Home</label>
                                </div>
                                <div class="form_align">
                                    <input type="checkbox" id="Family">
                                    <label for="Family">Family</label>
                                </div>
                                <div class="form_align">
                                    <input type="checkbox" id="Food">
                                    <label for="Food">Food</label>
                                </div>
                                <div class="form_align">
                                    <input type="checkbox" id="Electronics">
                                    <label for="Electronics">Electronics</label>
                                </div>
                                <div class="form_align">
                                    <input type="checkbox" id="Home1">
                                    <label for="Home1">Home</label>
                                </div>
                                <div class="form_align">
                                    <input type="checkbox" id="Family1">
                                    <label for="Family1">Family</label>
                                </div>
                                <div class="form_align">
                                    <input type="checkbox" id="Food1">
                                    <label for="Food1">Food</label>
                                </div>
                                <div class="form_align">
                                    <input type="checkbox" id="Electronics1">
                                    <label for="Electronics1">Electronics</label>
                                </div>
                                <div class="form_align">
                                    <input type="checkbox" id="Home2">
                                    <label for="Home2">Home</label>
                                </div>
                                <div class="form_align">
                                    <input type="checkbox" id="Family2">
                                    <label for="Family2">Family</label>
                                </div>
                                <div class="form_align">
                                    <input type="checkbox" id="Food2">
                                    <label for="Food2">Food</label>
                                </div>
                                <div class="form_align">
                                    <input type="checkbox" id="Electronics2">
                                    <label for="Electronics2">Electronics</label>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-md-9">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="page_title d-flex justify-content-between align-items-center  d-md-none">
                                    <h4>Blogs</h4>
                                    <button type="button" class="btn_edit btn_sidebar"><i class="fa-solid"><i
                                                class="fa-solid fa-filter"></i></i></button>
                                </div>
                            </div>
                        </div>
                        <div class="bologContainer">
                            <div class="blog_box">
                                <img src="/images/blog(1).webp" alt="" class="img-fluid">
                                <div class="d-flex justify-content-between align-items-center">
                                    <span>12-25-2024</span>
                                    <strong>Home</strong>
                                </div>
                                <nuxt-link to="/blog-details">Effective Self Defense Tips for Women</nuxt-link>
                                <p>The world is not a safe place, especially for our women. Everyday, women from all around
                                    the world have to go through unimaginable</p>
                                <nuxt-link to="/blog-details" class="blogLink">Read Full Blog <i
                                        class="fa-solid fa-arrow-right"></i></nuxt-link>

                            </div>
                            <div class="blog_box">
                                <img src="/images/blog(2).webp" alt="" class="img-fluid">
                                <div class="d-flex justify-content-between align-items-center">
                                    <span>12-25-2024</span>
                                    <strong>Family</strong>
                                </div>
                                <nuxt-link to="/blog-details">Effective Self Defense Tips for Women</nuxt-link>
                                <p>The world is not a safe place, especially for our women. Everyday, women from all around
                                    the world have to go through unimaginable</p>
                                <nuxt-link to="/blog-details" class="blogLink">Read Full Blog <i
                                        class="fa-solid fa-arrow-right"></i></nuxt-link>

                            </div>
                            <div class="blog_box">
                                <img src="/images/blog(3).webp" alt="" class="img-fluid">
                                <div class="d-flex justify-content-between align-items-center">
                                    <span>12-25-2024</span>
                                    <strong>Home</strong>
                                </div>
                                <nuxt-link to="/blog-details">Effective Self Defense Tips for Women</nuxt-link>
                                <p>The world is not a safe place, especially for our women. Everyday, women from all around
                                    the world have to go through unimaginable</p>
                                <nuxt-link to="/blog-details" class="blogLink">Read Full Blog <i
                                        class="fa-solid fa-arrow-right"></i></nuxt-link>

                            </div>
                            <div class="blog_box">
                                <img src="/images/blog(4).webp" alt="" class="img-fluid">
                                <div class="d-flex justify-content-between align-items-center">
                                    <span>12-25-2024</span>
                                    <strong>Family</strong>
                                </div>
                                <nuxt-link to="/blog-details">Effective Self Defense Tips for Women</nuxt-link>
                                <p>The world is not a safe place, especially for our women. Everyday, women from all around
                                    the world have to go through unimaginable</p>
                                <nuxt-link to="/blog-details" class="blogLink">Read Full Blog <i
                                        class="fa-solid fa-arrow-right"></i></nuxt-link>

                            </div>
                            <div class="blog_box">
                                <img src="/images/blog(5).webp" alt="" class="img-fluid">
                                <div class="d-flex justify-content-between align-items-center">
                                    <span>12-25-2024</span>
                                    <strong>Home</strong>
                                </div>
                                <nuxt-link to="/blog-details">Effective Self Defense Tips for Women</nuxt-link>
                                <p>The world is not a safe place, especially for our women. Everyday, women from all around
                                    the world have to go through unimaginable</p>
                                <nuxt-link to="/blog-details" class="blogLink">Read Full Blog <i
                                        class="fa-solid fa-arrow-right"></i></nuxt-link>

                            </div>
                            <div class="blog_box">
                                <img src="/images/blog(6).webp" alt="" class="img-fluid">
                                <div class="d-flex justify-content-between align-items-center">
                                    <span>12-25-2024</span>
                                    <strong>Family</strong>
                                </div>
                                <nuxt-link to="/blog-details">Effective Self Defense Tips for Women</nuxt-link>
                                <p>The world is not a safe place, especially for our women. Everyday, women from all around
                                    the world have to go through unimaginable</p>
                                <nuxt-link to="/blog-details" class="blogLink">Read Full Blog <i
                                        class="fa-solid fa-arrow-right"></i></nuxt-link>

                            </div>
                            <div class="blog_box">
                                <img src="/images/blog(1).webp" alt="" class="img-fluid">
                                <div class="d-flex justify-content-between align-items-center">
                                    <span>12-25-2024</span>
                                    <strong>Home</strong>
                                </div>
                                <nuxt-link to="/blog-details">Effective Self Defense Tips for Women</nuxt-link>
                                <p>The world is not a safe place, especially for our women. Everyday, women from all around
                                    the world have to go through unimaginable</p>
                                <nuxt-link to="/blog-details" class="blogLink">Read Full Blog <i
                                        class="fa-solid fa-arrow-right"></i></nuxt-link>

                            </div>
                            <div class="blog_box">
                                <img src="/images/blog(3).webp" alt="" class="img-fluid">
                                <div class="d-flex justify-content-between align-items-center">
                                    <span>12-25-2024</span>
                                    <strong>Family</strong>
                                </div>
                                <nuxt-link to="/blog-details">Effective Self Defense Tips for Women</nuxt-link>
                                <p>The world is not a safe place, especially for our women. Everyday, women from all around
                                    the world have to go through unimaginable</p>
                                <nuxt-link to="/blog-details" class="blogLink">Read Full Blog <i
                                        class="fa-solid fa-arrow-right"></i></nuxt-link>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- back to top button  -->
        <div class="back_top">
            <a href="#top"><i class="fa-solid fa-angle-up"></i></a>
        </div>
        <Footer />
    </div>
</template>
    
<script>
import $ from 'jquery';
import Common_MobileSidebar from '~/components/Common_MobileSidebar.vue';
import Common_MiniTabNavbar from '~/components/Common_MiniTabNavbar.vue';
import Common_MobileSearchProduct from '~/components/Common_MobileSearchProduct.vue';
import RecentView from '~/components/RecentView.vue';
import FlashSaleFilter from '~/components/FlashSaleFilter.vue';
import OfficialStoreProductList from '~/components/OfficialStoreProductList.vue';



export default {
    components: {
        Common_MobileSidebar,
        Common_MiniTabNavbar,
        Common_MobileSearchProduct,
        RecentView,
        FlashSaleFilter,
        OfficialStoreProductList,

    },
    head: {
        title: "Blogs",
    },
    mounted() {
        this.jqueryScripts();
    },
    methods: {
        jqueryScripts() {
            $(".btn_sidebar").click(() => {
                $(".blog_sidebar").addClass('active');
            });

            $(".bt_close").click(() => {
                $(".blog_sidebar").removeClass('active');
            });
        }
    },
}
</script>
<style>
.blog_sidebar.active {
    display: block !important;
    position: fixed;
    background: #fff;
    min-height: 100vh;
    left: 0;
    top: 62px;
    min-width: 260px;
}
</style>
    