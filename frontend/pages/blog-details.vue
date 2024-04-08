<template>
    <div>
        <LogoAndPayment />
        <!-- navbar section start here  -->
        <navbarSecond/>
        <!-- Main section start here  -->

        <section class="main_content   mt-3">
            <div class="container">
                <div class="row blog_details_sec">
                    <div class="col-md-9">
                        <div class="single_blog">
                            <img src="/images/blog(1).webp" alt="" class="img-fluid">                            
                            <div class="d-flex justify-content-between align-items-center">
                                    <span>12-25-2024</span>
                                    <strong>Home</strong>
                            </div>
                            <h3>Effective Self Defense Tips for Women, Lorem ipsum dolor sit amet.</h3>
                            <div class="blogDes">
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Saepe cupiditate cum minus, repellendus, maxime harum corrupti repellat ducimus ea impedit fuga! Doloribus, perspiciatis? Quidem assumenda molestias dolores fuga, saepe inventore quisquam voluptates hic, sit, ipsa perspiciatis numquam eveniet! Odio error in numquam autem maxime reprehenderit, ad beatae aut totam voluptas repudiandae laudantium, nemo minus laborum perferendis ex, harum ullam excepturi. Et excepturi libero corrupti accusamus neque delectus expedita quia suscipit itaque blanditiis iure beatae accusantium consectetur soluta at dolorum nam, labore iste pariatur aperiam quasi. Quo, aut laboriosam soluta natus odit aperiam ipsam, beatae voluptas iste expedita dolores molestiae atque?</p>

                            </div>
                        </div>
                    </div>
                    <div class="col-3">
                        <div class="recentBlogs">
                            <ul>
                                <h4>Recent Blogs</h4>
                                <li>
                                    <nuxt-link to="/blog-details" class="rBlog">
                                        <img src="/images/blog(2).webp" alt="" class="img-fluid">
                                        <div>
                                            <h6>Effective Self Defense Tips for Women, Lorem ipsum dolor sit amet.</h6>
                                            <strong>Family</strong>
                                            <span>29 Feb 2024</span>
                                        </div>
                                    </nuxt-link>
                                </li>
                                <li>
                                    <nuxt-link to="/blog-details" class="rBlog">
                                        <img src="/images/blog(3).webp" alt="" class="img-fluid">
                                        <div>
                                            <h6>Effective Self Defense Tips for Women, Lorem ipsum dolor sit amet.</h6>
                                            <strong>Family</strong>
                                            <span>29 Feb 2024</span>
                                        </div>
                                    </nuxt-link>
                                </li>
                                <li>
                                    <nuxt-link to="/blog-details" class="rBlog">
                                        <img src="/images/blog(4).webp" alt="" class="img-fluid">
                                        <div>
                                            <h6>Effective Self Defense Tips for Women, Lorem ipsum dolor sit amet.</h6>
                                            <strong>Family</strong>
                                            <span>29 Feb 2024</span>
                                        </div>
                                    </nuxt-link>
                                </li>
                                <li>
                                    <nuxt-link to="/blog-details" class="rBlog">
                                        <img src="/images/blog(5).webp" alt="" class="img-fluid">
                                        <div>
                                            <h6>Effective Self Defense Tips for Women, Lorem ipsum dolor sit amet.</h6>
                                            <strong>Family</strong>
                                            <span>29 Feb 2024</span>
                                        </div>
                                    </nuxt-link>
                                </li>
                                <li>
                                    <nuxt-link to="/blog-details" class="rBlog">
                                        <img src="/images/blog(6).webp" alt="" class="img-fluid">
                                        <div>
                                            <h6>Effective Self Defense Tips for Women, Lorem ipsum dolor sit amet.</h6>
                                            <strong>Family</strong>
                                            <span>29 Feb 2024</span>
                                        </div>
                                    </nuxt-link>
                                </li>
                                <li>
                                    <nuxt-link to="/blog-details" class="rBlog">
                                        <img src="/images/blog(2).webp" alt="" class="img-fluid">
                                        <div>
                                            <h6>Effective Self Defense Tips for Women, Lorem ipsum dolor sit amet.</h6>
                                            <strong>Family</strong>
                                            <span>29 Feb 2024</span>
                                        </div>
                                    </nuxt-link>
                                </li>
                                <li>
                                    <nuxt-link to="/blog-details" class="rBlog">
                                        <img src="/images/blog(3).webp" alt="" class="img-fluid">
                                        <div>
                                            <h6>Effective Self Defense Tips for Women, Lorem ipsum dolor sit amet.</h6>
                                            <strong>Family</strong>
                                            <span>29 Feb 2024</span>
                                        </div>
                                    </nuxt-link>
                                </li>
                                <li>
                                    <nuxt-link to="/blog-details" class="rBlog">
                                        <img src="/images/blog(4).webp" alt="" class="img-fluid">
                                        <div>
                                            <h6>Effective Self Defense Tips for Women, Lorem ipsum dolor sit amet.</h6>
                                            <strong>Family</strong>
                                            <span>29 Feb 2024</span>
                                        </div>
                                    </nuxt-link>
                                </li>
                                <li>
                                    <nuxt-link to="/blog-details" class="rBlog">
                                        <img src="/images/blog(5).webp" alt="" class="img-fluid">
                                        <div>
                                            <h6>Effective Self Defense Tips for Women, Lorem ipsum dolor sit amet.</h6>
                                            <strong>Family</strong>
                                            <span>29 Feb 2024</span>
                                        </div>
                                    </nuxt-link>
                                </li>
                                <li>
                                    <nuxt-link to="/blog-details" class="rBlog">
                                        <img src="/images/blog(6).webp" alt="" class="img-fluid">
                                        <div>
                                            <h6>Effective Self Defense Tips for Women, Lorem ipsum dolor sit amet.</h6>
                                            <strong>Family</strong>
                                            <span>29 Feb 2024</span>
                                        </div>
                                    </nuxt-link>
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
import navbarSecond from '../components/navbarSecond.vue';



export default {
    components: {
        Common_MobileSidebar,
        Common_MiniTabNavbar,
        Common_MobileSearchProduct,
        RecentView,
        FlashSaleFilter,
        OfficialStoreProductList,
        navbarSecond,
    },
    head: {
        title: "Today's Deal",
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
    