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
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <userSidebar />
                    </div>
                    <div class="col-md-9 px-md-0">
                        <div class="loading-indicator" v-if="loading">
                            <div class="loader-container">
                                <center class="loader-text">Loading...</center>
                                <img src="/loader/loader.gif" alt="Loader" />
                            </div>
                        </div>
                        <div class="main_profile">

                            <div class="">

                                <div>
                                    <div class="d-flex justify-content-start">
                                        <nuxt-link to='/user/user-orders' class="btn_edit"> <i
                                                class="fa-solid fa-arrow-left"></i> </nuxt-link>
                                    </div>

                                    <div class="text-center" style="text-transform: uppercase;">Orders Details </div>
                                    <br />
                                    <div class="row">

                                        <div class="col-md-6">
                                            <p style="font-size: 15px;"><b>Billing Details</b></p>
                                            <p class="billing">{{ orderData.billing_name }}</p>
                                            <p class="billing">{{ orderData.billing_email }}</p>
                                            <p class="billing">{{ orderData.billing_phone_number }}</p>
                                            <p class="billing">{{ orderData.billing_address }}</p>
                                            <p class="billing">{{ orderData.billing_city }}</p>
                                            <p class="billing">{{ orderData.billing_country }}</p>

                                        </div>
                                        <div class="col-md-6 text-right">
                                            <div align="right">
                                                <p style="font-size: 15px;"><b>Shipping Details</b></p>
                                                <p class="billing">{{ orderData.shipper_name }}</p>
                                                <p class="billing">{{ orderData.shipper_email }}</p>
                                                <p class="billing">{{ orderData.shipper_phone_number }}</p>
                                                <p class="billing">{{ orderData.shipper_address }}</p>
                                                <p class="billing">{{ orderData.shipper_city }}</p>
                                                <p class="billing">{{ orderData.shipper_country }}</p>

                                            </div>
                                        </div>
                                        <br />
                                        <hr />
                                    </div>

                                    <center><strong style="min-width: 100px; padding-bottom: 10px;">Order Status:</strong>
                                        <strong>{{ orderstatus }}</strong>
                                    </center><br>
                                </div>

                                <table width="100%" border="0" class="table table-bordered hover">
                                    <tr>
                                        <th width="30px">#</th>
                                        <th width="916">Item Description </th>
                                        <th width="63">
                                            <div align="center">Qty</div>
                                        </th>
                                        <th width="80">
                                            <div align="center">Price</div>
                                        </th>
                                        <th width="80">
                                            <div align="center">Total</div>
                                        </th>
                                    </tr>
                                    <tr v-for="(order, index) in orders" :key="index" class="billing">
                                        <th>{{ index + 1 }}</th>
                                        <td style="padding-bottom: 10px;">{{ order.product_name }}</td>
                                        <td>
                                            <div align="center">{{ order.quantity }}</div>
                                        </td>
                                        <td>
                                            <div align="center">{{ order.price }}</div>
                                        </td>
                                        <td>
                                            <div align="center">{{ order.total }}</div>
                                        </td>
                                    </tr>
                                </table>
                                <div class="text-end">
                                    <ul class="ms-auto">
                                        <li class="d-flex justify-content-end">
                                            <strong>Total Quantity:</strong>
                                            <strong style="min-width: 100px;">{{ totalQuantity }}</strong>
                                        </li>
                                        <li class="d-flex justify-content-end">
                                            <strong>Total Ammount:</strong>
                                            <strong style="min-width: 100px;">{{ totalAmount }}</strong>
                                        </li>
                                    </ul>
                                </div>

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
import $ from 'jquery';
import Common_MobileSidebar from '~/components/Common_MobileSidebar.vue';
import Common_MiniTabNavbar from '~/components/Common_MiniTabNavbar.vue';
import Common_MobileSearchProduct from '~/components/Common_MobileSearchProduct.vue';
import userSidebar from '~/components/userSidebar.vue';

export default {

    middleware: 'auth',
    components: {
        Common_MobileSidebar,
        Common_MiniTabNavbar,
        Common_MobileSearchProduct,
        userSidebar,

    },
    head: {
        title: 'My Orders',
    },
    data() {
        return {
            loading: false,
            orderstatus: '',
            orderData: '',
            orders: [],
            errors: {},
        }
    },
    mounted() {
        const orderId = this.$route.query.orderId;
        console.log("order I D: " + orderId);
        this.loadingOrders();

    },
    computed: {
        totalQuantity() {
            // Calculate total quantity
            return this.orders.reduce((total, order) => total + order.quantity, 0);
        },
        totalAmount() {
            // Calculate total amount
            return this.orders.reduce((total, order) => total + order.total, 0);
        },
    },
    methods: {
        async loadingOrders() {
            this.loading = true;
            const orderId = this.$route.query.orderId;
            await this.$axios.get(`/order/orderDetails/${orderId}`).then(response => {
                this.orders = response.data.orderdata;
                this.orderstatus = response.data.orderrow;
                this.orderData = response.data.orderData;
            })
                .catch(error => {
                    // Handle error
                })
                .finally(() => {
                    this.loading = false; // Hide loader after response
                });

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

.billing {
    font-size: 13px;
}</style>
