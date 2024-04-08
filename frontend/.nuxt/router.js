import Vue from 'vue'
import Router from 'vue-router'
import { normalizeURL, decode } from 'ufo'
import { interopDefault } from './utils'
import scrollBehavior from './router.scrollBehavior.js'

const _95a2504c = () => interopDefault(import('..\\pages\\allbrands.vue' /* webpackChunkName: "pages/allbrands" */))
const _de3c64f8 = () => interopDefault(import('..\\pages\\allshop.vue' /* webpackChunkName: "pages/allshop" */))
const _08e50705 = () => interopDefault(import('..\\pages\\blog.vue' /* webpackChunkName: "pages/blog" */))
const _5d3f460c = () => interopDefault(import('..\\pages\\blog-details.vue' /* webpackChunkName: "pages/blog-details" */))
const _30b76383 = () => interopDefault(import('..\\pages\\cart.vue' /* webpackChunkName: "pages/cart" */))
const _0beef76e = () => interopDefault(import('..\\pages\\changepassword.vue' /* webpackChunkName: "pages/changepassword" */))
const _7c33d097 = () => interopDefault(import('..\\pages\\changepassword copy.vue' /* webpackChunkName: "pages/changepassword copy" */))
const _60a0c685 = () => interopDefault(import('..\\pages\\charity.vue' /* webpackChunkName: "pages/charity" */))
const _ce7655ae = () => interopDefault(import('..\\pages\\checkout.vue' /* webpackChunkName: "pages/checkout" */))
const _070cf37a = () => interopDefault(import('..\\pages\\coupons.vue' /* webpackChunkName: "pages/coupons" */))
const _6cb07094 = () => interopDefault(import('..\\pages\\customer-review.vue' /* webpackChunkName: "pages/customer-review" */))
const _3542f9ae = () => interopDefault(import('..\\pages\\flas-sale.vue' /* webpackChunkName: "pages/flas-sale" */))
const _26ed1e30 = () => interopDefault(import('..\\pages\\forget-password.vue' /* webpackChunkName: "pages/forget-password" */))
const _75a8b916 = () => interopDefault(import('..\\pages\\login.vue' /* webpackChunkName: "pages/login" */))
const _d78afb1a = () => interopDefault(import('..\\pages\\login-old1.0.vue' /* webpackChunkName: "pages/login-old1.0" */))
const _6957aaa2 = () => interopDefault(import('..\\pages\\official-store.vue' /* webpackChunkName: "pages/official-store" */))
const _76d3a77e = () => interopDefault(import('..\\pages\\official-store-grid.vue' /* webpackChunkName: "pages/official-store-grid" */))
const _2c04de1b = () => interopDefault(import('..\\pages\\OfficialStoreFilter.vue' /* webpackChunkName: "pages/OfficialStoreFilter" */))
const _00d54101 = () => interopDefault(import('..\\pages\\OfficialStoreFilterGrid.vue' /* webpackChunkName: "pages/OfficialStoreFilterGrid" */))
const _fb7e4824 = () => interopDefault(import('..\\pages\\order-confirm.vue' /* webpackChunkName: "pages/order-confirm" */))
const _4323d3f3 = () => interopDefault(import('..\\pages\\payment.vue' /* webpackChunkName: "pages/payment" */))
const _fa706e72 = () => interopDefault(import('..\\pages\\product-grid.vue' /* webpackChunkName: "pages/product-grid" */))
const _7ff0fbc2 = () => interopDefault(import('..\\pages\\product-list.vue' /* webpackChunkName: "pages/product-list" */))
const _443c951b = () => interopDefault(import('..\\pages\\refund.vue' /* webpackChunkName: "pages/refund" */))
const _3efc41fc = () => interopDefault(import('..\\pages\\required.vue' /* webpackChunkName: "pages/required" */))
const _325110a2 = () => interopDefault(import('..\\pages\\return-and-replacement.vue' /* webpackChunkName: "pages/return-and-replacement" */))
const _6267569a = () => interopDefault(import('..\\pages\\sell-on-ecommerce.vue' /* webpackChunkName: "pages/sell-on-ecommerce" */))
const _fcb4c8e4 = () => interopDefault(import('..\\pages\\sell-on-filter.vue' /* webpackChunkName: "pages/sell-on-filter" */))
const _099d1fbf = () => interopDefault(import('..\\pages\\seller-form.vue' /* webpackChunkName: "pages/seller-form" */))
const _235c76d2 = () => interopDefault(import('..\\pages\\sellerLogin.vue' /* webpackChunkName: "pages/sellerLogin" */))
const _2c037922 = () => interopDefault(import('..\\pages\\service.vue' /* webpackChunkName: "pages/service" */))
const _e86f528a = () => interopDefault(import('..\\pages\\signup.vue' /* webpackChunkName: "pages/signup" */))
const _4801179b = () => interopDefault(import('..\\pages\\today-deal.vue' /* webpackChunkName: "pages/today-deal" */))
const _133e1f8c = () => interopDefault(import('..\\pages\\update-password.vue' /* webpackChunkName: "pages/update-password" */))
const _504b66ec = () => interopDefault(import('..\\pages\\affiliate\\affiliate-dashboard.vue' /* webpackChunkName: "pages/affiliate/affiliate-dashboard" */))
const _4eece14a = () => interopDefault(import('..\\pages\\affiliate\\affiliate-programe.vue' /* webpackChunkName: "pages/affiliate/affiliate-programe" */))
const _4022cb05 = () => interopDefault(import('..\\pages\\affiliate\\affiliate-programe-register.vue' /* webpackChunkName: "pages/affiliate/affiliate-programe-register" */))
const _0c9bbfe5 = () => interopDefault(import('..\\pages\\affiliate\\affiliate-transfer.vue' /* webpackChunkName: "pages/affiliate/affiliate-transfer" */))
const _266dbfa2 = () => interopDefault(import('..\\pages\\brand-product\\brand-grid.vue' /* webpackChunkName: "pages/brand-product/brand-grid" */))
const _336fe338 = () => interopDefault(import('..\\pages\\category\\all-categorys.vue' /* webpackChunkName: "pages/category/all-categorys" */))
const _79e9a1e4 = () => interopDefault(import('..\\pages\\category\\category-grid.vue' /* webpackChunkName: "pages/category/category-grid" */))
const _91ad4988 = () => interopDefault(import('..\\pages\\category\\category-list.vue' /* webpackChunkName: "pages/category/category-list" */))
const _79973966 = () => interopDefault(import('..\\pages\\seller\\change-password.vue' /* webpackChunkName: "pages/seller/change-password" */))
const _ee97ffde = () => interopDefault(import('..\\pages\\seller\\order-details.vue' /* webpackChunkName: "pages/seller/order-details" */))
const _36c9c684 = () => interopDefault(import('..\\pages\\seller\\seller-account-setting.vue' /* webpackChunkName: "pages/seller/seller-account-setting" */))
const _92ab7e8a = () => interopDefault(import('..\\pages\\seller\\seller-comission-history.vue' /* webpackChunkName: "pages/seller/seller-comission-history" */))
const _14a93130 = () => interopDefault(import('..\\pages\\seller\\seller-customer-returns.vue' /* webpackChunkName: "pages/seller/seller-customer-returns" */))
const _28e8bd68 = () => interopDefault(import('..\\pages\\seller\\seller-dashboard.vue' /* webpackChunkName: "pages/seller/seller-dashboard" */))
const _9734fe6e = () => interopDefault(import('..\\pages\\seller\\seller-leftsidebar.vue' /* webpackChunkName: "pages/seller/seller-leftsidebar" */))
const _a43f7f4a = () => interopDefault(import('..\\pages\\seller\\seller-message.vue' /* webpackChunkName: "pages/seller/seller-message" */))
const _1c941a41 = () => interopDefault(import('..\\pages\\seller\\seller-orders.vue' /* webpackChunkName: "pages/seller/seller-orders" */))
const _64a48521 = () => interopDefault(import('..\\pages\\seller\\seller-payment-history.vue' /* webpackChunkName: "pages/seller/seller-payment-history" */))
const _ca171f80 = () => interopDefault(import('..\\pages\\seller\\seller-products.vue' /* webpackChunkName: "pages/seller/seller-products" */))
const _f217ec86 = () => interopDefault(import('..\\pages\\seller\\seller-products-post.vue' /* webpackChunkName: "pages/seller/seller-products-post" */))
const _26fbae06 = () => interopDefault(import('..\\pages\\seller\\seller-profile.vue' /* webpackChunkName: "pages/seller/seller-profile" */))
const _fcef3d56 = () => interopDefault(import('..\\pages\\seller\\seller-wallet.vue' /* webpackChunkName: "pages/seller/seller-wallet" */))
const _4bd13c21 = () => interopDefault(import('..\\pages\\seller\\seller-wishlist.vue' /* webpackChunkName: "pages/seller/seller-wishlist" */))
const _cf661cde = () => interopDefault(import('..\\pages\\user\\account-statement.vue' /* webpackChunkName: "pages/user/account-statement" */))
const _58e56d28 = () => interopDefault(import('..\\pages\\user\\my-reviews.vue' /* webpackChunkName: "pages/user/my-reviews" */))
const _8b5d7378 = () => interopDefault(import('..\\pages\\user\\mySalary.vue' /* webpackChunkName: "pages/user/mySalary" */))
const _5681e985 = () => interopDefault(import('..\\pages\\user\\order-details.vue' /* webpackChunkName: "pages/user/order-details" */))
const _c3f74de4 = () => interopDefault(import('..\\pages\\user\\track-order.vue' /* webpackChunkName: "pages/user/track-order" */))
const _4a9fe966 = () => interopDefault(import('..\\pages\\user\\user-blogPost.vue' /* webpackChunkName: "pages/user/user-blogPost" */))
const _18199dfc = () => interopDefault(import('..\\pages\\user\\user-dashborad.vue' /* webpackChunkName: "pages/user/user-dashborad" */))
const _5fb2225a = () => interopDefault(import('..\\pages\\user\\user-mlm.vue' /* webpackChunkName: "pages/user/user-mlm" */))
const _4c5e6269 = () => interopDefault(import('..\\pages\\user\\user-orders.vue' /* webpackChunkName: "pages/user/user-orders" */))
const _93fe3456 = () => interopDefault(import('..\\pages\\user\\user-profile.vue' /* webpackChunkName: "pages/user/user-profile" */))
const _6472d0ce = () => interopDefault(import('..\\pages\\user\\user-requireProduct.vue' /* webpackChunkName: "pages/user/user-requireProduct" */))
const _1814b378 = () => interopDefault(import('..\\pages\\user\\user-security.vue' /* webpackChunkName: "pages/user/user-security" */))
const _66bc9b32 = () => interopDefault(import('..\\pages\\user\\user-whichlist.vue' /* webpackChunkName: "pages/user/user-whichlist" */))
const _13127e39 = () => interopDefault(import('..\\pages\\user\\user-withdrawal.vue' /* webpackChunkName: "pages/user/user-withdrawal" */))
const _08f34f2e = () => interopDefault(import('..\\pages\\seller\\products\\product-edit.vue' /* webpackChunkName: "pages/seller/products/product-edit" */))
const _32741958 = () => interopDefault(import('..\\pages\\seller\\products\\product-preview.vue' /* webpackChunkName: "pages/seller/products/product-preview" */))
const _b03732d6 = () => interopDefault(import('..\\pages\\seller\\products\\product-varient.vue' /* webpackChunkName: "pages/seller/products/product-varient" */))
const _a7fdd402 = () => interopDefault(import('..\\pages\\index.vue' /* webpackChunkName: "pages/index" */))
const _f210f28e = () => interopDefault(import('..\\pages\\user\\invite-user\\_id.vue' /* webpackChunkName: "pages/user/invite-user/_id" */))
const _113ce992 = () => interopDefault(import('..\\pages\\business\\_slug.vue' /* webpackChunkName: "pages/business/_slug" */))
const _b244366e = () => interopDefault(import('..\\pages\\product-details\\_slug.vue' /* webpackChunkName: "pages/product-details/_slug" */))
const _7e2a4643 = () => interopDefault(import('..\\pages\\resetpassword\\_slug.vue' /* webpackChunkName: "pages/resetpassword/_slug" */))

const emptyFn = () => {}

Vue.use(Router)

export const routerOptions = {
  mode: 'history',
  base: '/',
  linkActiveClass: 'nuxt-link-active',
  linkExactActiveClass: 'nuxt-link-exact-active',
  scrollBehavior,

  routes: [{
    path: "/allbrands",
    component: _95a2504c,
    name: "allbrands"
  }, {
    path: "/allshop",
    component: _de3c64f8,
    name: "allshop"
  }, {
    path: "/blog",
    component: _08e50705,
    name: "blog"
  }, {
    path: "/blog-details",
    component: _5d3f460c,
    name: "blog-details"
  }, {
    path: "/cart",
    component: _30b76383,
    name: "cart"
  }, {
    path: "/changepassword",
    component: _0beef76e,
    name: "changepassword"
  }, {
    path: "/changepassword%20copy",
    component: _7c33d097,
    name: "changepassword copy"
  }, {
    path: "/charity",
    component: _60a0c685,
    name: "charity"
  }, {
    path: "/checkout",
    component: _ce7655ae,
    name: "checkout"
  }, {
    path: "/coupons",
    component: _070cf37a,
    name: "coupons"
  }, {
    path: "/customer-review",
    component: _6cb07094,
    name: "customer-review"
  }, {
    path: "/flas-sale",
    component: _3542f9ae,
    name: "flas-sale"
  }, {
    path: "/forget-password",
    component: _26ed1e30,
    name: "forget-password"
  }, {
    path: "/login",
    component: _75a8b916,
    name: "login"
  }, {
    path: "/login-old1.0",
    component: _d78afb1a,
    name: "login-old1.0"
  }, {
    path: "/official-store",
    component: _6957aaa2,
    name: "official-store"
  }, {
    path: "/official-store-grid",
    component: _76d3a77e,
    name: "official-store-grid"
  }, {
    path: "/OfficialStoreFilter",
    component: _2c04de1b,
    name: "OfficialStoreFilter"
  }, {
    path: "/OfficialStoreFilterGrid",
    component: _00d54101,
    name: "OfficialStoreFilterGrid"
  }, {
    path: "/order-confirm",
    component: _fb7e4824,
    name: "order-confirm"
  }, {
    path: "/payment",
    component: _4323d3f3,
    name: "payment"
  }, {
    path: "/product-grid",
    component: _fa706e72,
    name: "product-grid"
  }, {
    path: "/product-list",
    component: _7ff0fbc2,
    name: "product-list"
  }, {
    path: "/refund",
    component: _443c951b,
    name: "refund"
  }, {
    path: "/required",
    component: _3efc41fc,
    name: "required"
  }, {
    path: "/return-and-replacement",
    component: _325110a2,
    name: "return-and-replacement"
  }, {
    path: "/sell-on-ecommerce",
    component: _6267569a,
    name: "sell-on-ecommerce"
  }, {
    path: "/sell-on-filter",
    component: _fcb4c8e4,
    name: "sell-on-filter"
  }, {
    path: "/seller-form",
    component: _099d1fbf,
    name: "seller-form"
  }, {
    path: "/sellerLogin",
    component: _235c76d2,
    name: "sellerLogin"
  }, {
    path: "/service",
    component: _2c037922,
    name: "service"
  }, {
    path: "/signup",
    component: _e86f528a,
    name: "signup"
  }, {
    path: "/today-deal",
    component: _4801179b,
    name: "today-deal"
  }, {
    path: "/update-password",
    component: _133e1f8c,
    name: "update-password"
  }, {
    path: "/affiliate/affiliate-dashboard",
    component: _504b66ec,
    name: "affiliate-affiliate-dashboard"
  }, {
    path: "/affiliate/affiliate-programe",
    component: _4eece14a,
    name: "affiliate-affiliate-programe"
  }, {
    path: "/affiliate/affiliate-programe-register",
    component: _4022cb05,
    name: "affiliate-affiliate-programe-register"
  }, {
    path: "/affiliate/affiliate-transfer",
    component: _0c9bbfe5,
    name: "affiliate-affiliate-transfer"
  }, {
    path: "/brand-product/brand-grid",
    component: _266dbfa2,
    name: "brand-product-brand-grid"
  }, {
    path: "/category/all-categorys",
    component: _336fe338,
    name: "category-all-categorys"
  }, {
    path: "/category/category-grid",
    component: _79e9a1e4,
    name: "category-category-grid"
  }, {
    path: "/category/category-list",
    component: _91ad4988,
    name: "category-category-list"
  }, {
    path: "/seller/change-password",
    component: _79973966,
    name: "seller-change-password"
  }, {
    path: "/seller/order-details",
    component: _ee97ffde,
    name: "seller-order-details"
  }, {
    path: "/seller/seller-account-setting",
    component: _36c9c684,
    name: "seller-seller-account-setting"
  }, {
    path: "/seller/seller-comission-history",
    component: _92ab7e8a,
    name: "seller-seller-comission-history"
  }, {
    path: "/seller/seller-customer-returns",
    component: _14a93130,
    name: "seller-seller-customer-returns"
  }, {
    path: "/seller/seller-dashboard",
    component: _28e8bd68,
    name: "seller-seller-dashboard"
  }, {
    path: "/seller/seller-leftsidebar",
    component: _9734fe6e,
    name: "seller-seller-leftsidebar"
  }, {
    path: "/seller/seller-message",
    component: _a43f7f4a,
    name: "seller-seller-message"
  }, {
    path: "/seller/seller-orders",
    component: _1c941a41,
    name: "seller-seller-orders"
  }, {
    path: "/seller/seller-payment-history",
    component: _64a48521,
    name: "seller-seller-payment-history"
  }, {
    path: "/seller/seller-products",
    component: _ca171f80,
    name: "seller-seller-products"
  }, {
    path: "/seller/seller-products-post",
    component: _f217ec86,
    name: "seller-seller-products-post"
  }, {
    path: "/seller/seller-profile",
    component: _26fbae06,
    name: "seller-seller-profile"
  }, {
    path: "/seller/seller-wallet",
    component: _fcef3d56,
    name: "seller-seller-wallet"
  }, {
    path: "/seller/seller-wishlist",
    component: _4bd13c21,
    name: "seller-seller-wishlist"
  }, {
    path: "/user/account-statement",
    component: _cf661cde,
    name: "user-account-statement"
  }, {
    path: "/user/my-reviews",
    component: _58e56d28,
    name: "user-my-reviews"
  }, {
    path: "/user/mySalary",
    component: _8b5d7378,
    name: "user-mySalary"
  }, {
    path: "/user/order-details",
    component: _5681e985,
    name: "user-order-details"
  }, {
    path: "/user/track-order",
    component: _c3f74de4,
    name: "user-track-order"
  }, {
    path: "/user/user-blogPost",
    component: _4a9fe966,
    name: "user-user-blogPost"
  }, {
    path: "/user/user-dashborad",
    component: _18199dfc,
    name: "user-user-dashborad"
  }, {
    path: "/user/user-mlm",
    component: _5fb2225a,
    name: "user-user-mlm"
  }, {
    path: "/user/user-orders",
    component: _4c5e6269,
    name: "user-user-orders"
  }, {
    path: "/user/user-profile",
    component: _93fe3456,
    name: "user-user-profile"
  }, {
    path: "/user/user-requireProduct",
    component: _6472d0ce,
    name: "user-user-requireProduct"
  }, {
    path: "/user/user-security",
    component: _1814b378,
    name: "user-user-security"
  }, {
    path: "/user/user-whichlist",
    component: _66bc9b32,
    name: "user-user-whichlist"
  }, {
    path: "/user/user-withdrawal",
    component: _13127e39,
    name: "user-user-withdrawal"
  }, {
    path: "/seller/products/product-edit",
    component: _08f34f2e,
    name: "seller-products-product-edit"
  }, {
    path: "/seller/products/product-preview",
    component: _32741958,
    name: "seller-products-product-preview"
  }, {
    path: "/seller/products/product-varient",
    component: _b03732d6,
    name: "seller-products-product-varient"
  }, {
    path: "/",
    component: _a7fdd402,
    name: "index"
  }, {
    path: "/user/invite-user/:id?",
    component: _f210f28e,
    name: "user-invite-user-id"
  }, {
    path: "/business/:slug?",
    component: _113ce992,
    name: "business-slug"
  }, {
    path: "/product-details/:slug?",
    component: _b244366e,
    name: "product-details-slug"
  }, {
    path: "/resetpassword/:slug?",
    component: _7e2a4643,
    name: "resetpassword-slug"
  }],

  fallback: false
}

export function createRouter (ssrContext, config) {
  const base = (config._app && config._app.basePath) || routerOptions.base
  const router = new Router({ ...routerOptions, base  })

  // TODO: remove in Nuxt 3
  const originalPush = router.push
  router.push = function push (location, onComplete = emptyFn, onAbort) {
    return originalPush.call(this, location, onComplete, onAbort)
  }

  const resolve = router.resolve.bind(router)
  router.resolve = (to, current, append) => {
    if (typeof to === 'string') {
      to = normalizeURL(to)
    }
    return resolve(to, current, append)
  }

  return router
}
