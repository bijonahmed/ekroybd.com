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
                    <div class="col-md-6 m-auto">
                        <div class="blank_data text-center" bis_skin_checked="1"><i class="fa-solid fa-triangle-exclamation"></i> <p>No Data</p></div>
                    </div>
                </div>
            </div>

            <!-- hide  -->
            <div class="container d-none">
                <div class="row">
                    <div class="col-md-12">
                        <div class="shopBanner">
                            <img src="/images/todaysDeal.webp"  alt="" class="img-fluid">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6">
                        <div class="product_grid">
                            <a href="product-details.html">
                                <img src="/images/product(1).jpg" class="img-fluid" alt="">
                                <span>Free Delivery</span>
                                <strong>Official Store </strong>
                                <h1>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus, totam!</h1>
                                <p>TK 6,500</p>
                                <p><strike>TK 6,500</strike> <span>-5%</span></p>
                            </a>
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
                            <button type="button" class="btn_cart">Add to cart </button>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6">
                        <div class="product_grid">
                            <a href="product-details.html">
                                <img src="/images/product(1).jpg" class="img-fluid" alt="">
                                <span>Free Delivery</span>
                                <strong>Official Store </strong>
                                <h1>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus, totam!</h1>
                                <p>TK 6,500</p>
                                <p><strike>TK 6,500</strike> <span>-5%</span></p>
                            </a>
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
                            <button type="button" class="btn_cart">Add to cart </button>
                            <!-- <button type="button" class="btn_sold">SoldOut</button> -->
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6">
                        <div class="product_grid">
                            <a href="product-details.html">
                                <img src="/images/product(1).jpg" class="img-fluid" alt="">
                                <span>Free Delivery</span>
                                <strong>Official Store </strong>
                                <h1>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus, totam!</h1>
                                <p>TK 6,500</p>
                                <p><strike>TK 6,500</strike> <span>-5%</span></p>
                            </a>
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
                            <button type="button" class="btn_cart">Add to cart </button>
                            <!-- <button type="button" class="btn_sold">SoldOut</button> -->
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6">
                        <div class="product_grid">
                            <a href="product-details.html">
                                <img src="/images/product(1).jpg" class="img-fluid" alt="">
                                <span>Free Delivery</span>
                                <strong>Official Store </strong>
                                <h1>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus, totam!</h1>
                                <p>TK 6,500</p>
                                <p><strike>TK 6,500</strike> <span>-5%</span></p>
                            </a>
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
                            <button type="button" class="btn_cart">Add to cart </button>
                            <!-- <button type="button" class="btn_sold">SoldOut</button> -->
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6">
                        <div class="product_grid">
                            <a href="product-details.html">
                                <img src="/images/product(1).jpg" class="img-fluid" alt="">
                                <span>Free Delivery</span>
                                <strong>Official Store </strong>
                                <h1>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus, totam!</h1>
                                <p>TK 6,500</p>
                                <p><strike>TK 6,500</strike> <span>-5%</span></p>
                            </a>
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
                            <button type="button" class="btn_cart">Add to cart </button>
                            <!-- <button type="button" class="btn_sold">SoldOut</button> -->
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6">
                        <div class="product_grid">
                            <a href="product-details.html">
                                <img src="/images/product(1).jpg" class="img-fluid" alt="">
                                <span>Free Delivery</span>
                                <strong>Official Store </strong>
                                <h1>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus, totam!</h1>
                                <p>TK 6,500</p>
                                <p><strike>TK 6,500</strike> <span>-5%</span></p>
                            </a>
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
                            <button type="button" class="btn_cart">Add to cart </button>
                            <!-- <button type="button" class="btn_sold">SoldOut</button> -->
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6">
                        <div class="product_grid">
                            <a href="product-details.html">
                                <img src="/images/product(1).jpg" class="img-fluid" alt="">
                                <span>Free Delivery</span>
                                <strong>Official Store </strong>
                                <h1>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus, totam!</h1>
                                <p>TK 6,500</p>
                                <p><strike>TK 6,500</strike> <span>-5%</span></p>
                            </a>
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
                            <button type="button" class="btn_cart">Add to cart </button>
                            <!-- <button type="button" class="btn_sold">SoldOut</button> -->
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6">
                        <div class="product_grid">
                            <a href="product-details.html">
                                <img src="/images/product(1).jpg" class="img-fluid" alt="">
                                <span>Free Delivery</span>
                                <strong>Official Store </strong>
                                <h1>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus, totam!</h1>
                                <p>TK 6,500</p>
                                <p><strike>TK 6,500</strike> <span>-5%</span></p>
                            </a>
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
                            <button type="button" class="btn_cart">Add to cart </button>
                            <!-- <button type="button" class="btn_sold">SoldOut</button> -->
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6">
                        <div class="product_grid">
                            <a href="product-details.html">
                                <img src="/images/product(1).jpg" class="img-fluid" alt="">
                                <span>Free Delivery</span>
                                <strong>Official Store </strong>
                                <h1>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus, totam!</h1>
                                <p>TK 6,500</p>
                                <p><strike>TK 6,500</strike> <span>-5%</span></p>
                            </a>
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
                            <button type="button" class="btn_cart">Add to cart </button>
                            <!-- <button type="button" class="btn_sold">SoldOut</button> -->
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6">
                        <div class="product_grid">
                            <a href="product-details.html">
                                <img src="/images/product(1).jpg" class="img-fluid" alt="">
                                <span>Free Delivery</span>
                                <strong>Official Store </strong>
                                <h1>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus, totam!</h1>
                                <p>TK 6,500</p>
                                <p><strike>TK 6,500</strike> <span>-5%</span></p>
                            </a>
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
                            <button type="button" class="btn_cart">Add to cart </button>
                            <!-- <button type="button" class="btn_sold">SoldOut</button> -->
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6">
                        <div class="product_grid">
                            <a href="product-details.html">
                                <img src="/images/product(1).jpg" class="img-fluid" alt="">
                                <span>Free Delivery</span>
                                <strong>Official Store </strong>
                                <h1>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus, totam!</h1>
                                <p>TK 6,500</p>
                                <p><strike>TK 6,500</strike> <span>-5%</span></p>
                            </a>
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
                            <button type="button" class="btn_cart">Add to cart </button>
                            <!-- <button type="button" class="btn_sold">SoldOut</button> -->
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6">
                        <div class="product_grid">
                            <a href="product-details.html">
                                <img src="/images/product(1).jpg" class="img-fluid" alt="">
                                <span>Free Delivery</span>
                                <strong>Official Store </strong>
                                <h1>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus, totam!</h1>
                                <p>TK 6,500</p>
                                <p><strike>TK 6,500</strike> <span>-5%</span></p>
                            </a>
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
                            <button type="button" class="btn_cart">Add to cart </button>
                            <!-- <button type="button" class="btn_sold">SoldOut</button> -->
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6">
                        <div class="product_grid">
                            <a href="product-details.html">
                                <img src="/images/product(1).jpg" class="img-fluid" alt="">
                                <span>Free Delivery</span>
                                <strong>Official Store </strong>
                                <h1>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus, totam!</h1>
                                <p>TK 6,500</p>
                                <p><strike>TK 6,500</strike> <span>-5%</span></p>
                            </a>
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
                            <button type="button" class="btn_cart">Add to cart </button>
                            <!-- <button type="button" class="btn_sold">SoldOut</button> -->
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="pagination">
                            <ul>
                                <li>
                                    <a href="#"> prv </a>
                                </li>
                                <li>
                                    <a href="#" class="active"> 1 </a>
                                </li>
                                <li>
                                    <a href="#"> 2 </a>
                                </li>
                                <li>
                                    <a href="#"> 3 </a>
                                </li>
                                <li>
                                    <a href="#"> next </a>
                                </li>
                            </ul>
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
        title: "Today's Deal",
    },
    mounted() {
    },
}
</script>
    