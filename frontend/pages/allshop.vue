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
        <section class="main_content">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="page_title">
                            <h4>All Shops</h4>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="shopContainer">
                            <!-- loop start here  -->
                            <div class="shopBox" v-for="sellerlist in paginatedSellerList" :key="sellerlist.id">
                                <nuxt-link :to="`/business/${sellerlist.slug}`" class="shopImg">
                                    <img :src="sellerlist.businessLogo" alt="Shop Logo" class="img-fluid">
                                </nuxt-link>
                                <nuxt-link :to="`/business/${sellerlist.slug}`">
                                    <h6>{{ sellerlist.businessName }}</h6>
                                </nuxt-link>
                                <div class="rateReview">
                                    <div class="start_ratings">
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                    </div>
                                    <p>(100 reviews)</p>
                                    <p>1k Followers</p>
                                </div>
                                <nuxt-link :to="`/business/${sellerlist.slug}`" class="btn_primary">Visit
                                    Store</nuxt-link>
                            </div>
                            <!-- loop end here  -->
                            <!-- <div class="pagination">
                                <button @click="previousPage" :disabled="currentPage === 1">Previous</button>
                                <span>{{ currentPage }}</span>
                                <button @click="nextPage" :disabled="currentPage === totalPages">Next</button>
                            </div> -->

                        </div>
                    </div>
                </div>
                <div class="row">
                      <div class="col-12">
                          <div class="pagination">
                              <ul>
                                  <li>
                                      <a href="#" type="button"  @click="previousPage" :disabled="currentPage === 1"> Previous </a>
                                  </li>
                                  <li>
                                      <a href="#" class="active"> {{ currentPage }}</a>
                                  </li>
                                  <li>
                                      <a href="#" type="button" @click="nextPage" :disabled="currentPage === totalPages"> Next  </a>
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
import _ from 'lodash';

export default {
    data() {
        return {
            sellerlist: [],
            currentPage: 1,
            pageSize: 20, // Set the data limit to 2 items per page
        };
    },
    mounted() {
        this.fetchData();
    },
    computed: {
        totalPages() {
            return Math.ceil(this.sellerlist.length / this.pageSize);
        },
        paginatedSellerList() {
            const startIndex = (this.currentPage - 1) * this.pageSize;
            const endIndex = startIndex + this.pageSize;
            return this.sellerlist.slice(startIndex, endIndex);
        },
    },
    methods: {
        async fetchData() {
            try {
                const response = await this.$axios.get(`/unauthenticate/allsellerList`);
                this.sellerlist = response.data;
            } catch (error) {
                console.error(error);
            }
        },
        previousPage() {
            if (this.currentPage > 1) {
                this.currentPage--;
            }
        },
        nextPage() {
            if (this.currentPage < this.totalPages) {
                this.currentPage++;
            }
        },
        editCustomer(id) {
            this.$router.push({
                path: `/edit/${id}`
            });
        }
    },
};
</script>