<template>
    <div>
        <LogoAndPayment />
        <!-- navbar section start here  -->
        <navbarSecond/>
        <!-- Main section start here  -->

        <section class="main_content  mt-3">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="blank_data text-center" bis_skin_checked="1"><i class="fa-solid fa-triangle-exclamation"></i> <p>No Data</p></div>
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
        navbarSecond,
        Common_MobileSidebar,
        Common_MiniTabNavbar,
        Common_MobileSearchProduct,
        RecentView,
        FlashSaleFilter,
        OfficialStoreProductList,

    },
    head: {
        title: "Charity Products",
    },
    mounted() {
    },
}
</script>
    