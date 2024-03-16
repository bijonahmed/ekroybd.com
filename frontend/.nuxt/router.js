import Vue from 'vue'
import Router from 'vue-router'
import { normalizeURL, decode } from 'ufo'
import { interopDefault } from './utils'
import scrollBehavior from './router.scrollBehavior.js'

const _176b0310 = () => interopDefault(import('..\\pages\\allbrands.vue' /* webpackChunkName: "pages/allbrands" */))
const _337b4e3a = () => interopDefault(import('..\\pages\\allshop.vue' /* webpackChunkName: "pages/allshop" */))
const _03079be2 = () => interopDefault(import('..\\pages\\blog.vue' /* webpackChunkName: "pages/blog" */))
const _ed6e43f8 = () => interopDefault(import('..\\pages\\blog-details.vue' /* webpackChunkName: "pages/blog-details" */))
const _264e8e8d = () => interopDefault(import('..\\pages\\cart.vue' /* webpackChunkName: "pages/cart" */))
const _6bbb5df8 = () => interopDefault(import('..\\pages\\changepassword.vue' /* webpackChunkName: "pages/changepassword" */))
const _15b3f04d = () => interopDefault(import('..\\pages\\changepassword copy.vue' /* webpackChunkName: "pages/changepassword copy" */))
const _033a473b = () => interopDefault(import('..\\pages\\charity.vue' /* webpackChunkName: "pages/charity" */))
const _495b6b33 = () => interopDefault(import('..\\pages\\checkout.vue' /* webpackChunkName: "pages/checkout" */))
const _acb317a0 = () => interopDefault(import('..\\pages\\coupons.vue' /* webpackChunkName: "pages/coupons" */))
const _0670db4a = () => interopDefault(import('..\\pages\\customer-review.vue' /* webpackChunkName: "pages/customer-review" */))
const _479aae5f = () => interopDefault(import('..\\pages\\flas-sale.vue' /* webpackChunkName: "pages/flas-sale" */))
const _f36c48c4 = () => interopDefault(import('..\\pages\\forget-password.vue' /* webpackChunkName: "pages/forget-password" */))
const _32f6ef4c = () => interopDefault(import('..\\pages\\login.vue' /* webpackChunkName: "pages/login" */))
const _6db7dda8 = () => interopDefault(import('..\\pages\\official-store.vue' /* webpackChunkName: "pages/official-store" */))
const _5e164bf7 = () => interopDefault(import('..\\pages\\official-store-grid.vue' /* webpackChunkName: "pages/official-store-grid" */))
const _74f6045e = () => interopDefault(import('..\\pages\\OfficialStoreFilter.vue' /* webpackChunkName: "pages/OfficialStoreFilter" */))
const _cd9ad492 = () => interopDefault(import('..\\pages\\OfficialStoreFilterGrid.vue' /* webpackChunkName: "pages/OfficialStoreFilterGrid" */))
const _348556ae = () => interopDefault(import('..\\pages\\payment.vue' /* webpackChunkName: "pages/payment" */))
const _3ab049d1 = () => interopDefault(import('..\\pages\\product-grid.vue' /* webpackChunkName: "pages/product-grid" */))
const _77f00329 = () => interopDefault(import('..\\pages\\product-list.vue' /* webpackChunkName: "pages/product-list" */))
const _30b525a5 = () => interopDefault(import('..\\pages\\refund.vue' /* webpackChunkName: "pages/refund" */))
const _ddcf15e8 = () => interopDefault(import('..\\pages\\required.vue' /* webpackChunkName: "pages/required" */))
const _373b4d2c = () => interopDefault(import('..\\pages\\return-and-replacement.vue' /* webpackChunkName: "pages/return-and-replacement" */))
const _e4902860 = () => interopDefault(import('..\\pages\\sell-on-ecommerce.vue' /* webpackChunkName: "pages/sell-on-ecommerce" */))
const _3d1bfbd0 = () => interopDefault(import('..\\pages\\sell-on-filter.vue' /* webpackChunkName: "pages/sell-on-filter" */))
const _65095516 = () => interopDefault(import('..\\pages\\seller-form.vue' /* webpackChunkName: "pages/seller-form" */))
const _62c60c50 = () => interopDefault(import('..\\pages\\service.vue' /* webpackChunkName: "pages/service" */))
const _2d4a5325 = () => interopDefault(import('..\\pages\\today-deal.vue' /* webpackChunkName: "pages/today-deal" */))
const _a602eb7c = () => interopDefault(import('..\\pages\\update-password.vue' /* webpackChunkName: "pages/update-password" */))
const _49ac5f14 = () => interopDefault(import('..\\pages\\affiliate\\affiliate-dashboard.vue' /* webpackChunkName: "pages/affiliate/affiliate-dashboard" */))
const _1e460391 = () => interopDefault(import('..\\pages\\affiliate\\affiliate-programe.vue' /* webpackChunkName: "pages/affiliate/affiliate-programe" */))
const _7ca6b38f = () => interopDefault(import('..\\pages\\affiliate\\affiliate-programe-register.vue' /* webpackChunkName: "pages/affiliate/affiliate-programe-register" */))
const _5258341b = () => interopDefault(import('..\\pages\\affiliate\\affiliate-transfer.vue' /* webpackChunkName: "pages/affiliate/affiliate-transfer" */))
const _1cc8bed8 = () => interopDefault(import('..\\pages\\brand-product\\brand-grid.vue' /* webpackChunkName: "pages/brand-product/brand-grid" */))
const _68659024 = () => interopDefault(import('..\\pages\\category\\all-categorys.vue' /* webpackChunkName: "pages/category/all-categorys" */))
const _1246f69a = () => interopDefault(import('..\\pages\\category\\category-grid.vue' /* webpackChunkName: "pages/category/category-grid" */))
const _4f86aff2 = () => interopDefault(import('..\\pages\\category\\category-list.vue' /* webpackChunkName: "pages/category/category-list" */))
const _11f48e1c = () => interopDefault(import('..\\pages\\seller\\change-password.vue' /* webpackChunkName: "pages/seller/change-password" */))
const _7aa9eb72 = () => interopDefault(import('..\\pages\\seller\\order-details.vue' /* webpackChunkName: "pages/seller/order-details" */))
const _aec84de4 = () => interopDefault(import('..\\pages\\seller\\seller-account-setting.vue' /* webpackChunkName: "pages/seller/seller-account-setting" */))
const _077c4e76 = () => interopDefault(import('..\\pages\\seller\\seller-comission-history.vue' /* webpackChunkName: "pages/seller/seller-comission-history" */))
const _45cd2034 = () => interopDefault(import('..\\pages\\seller\\seller-customer-returns.vue' /* webpackChunkName: "pages/seller/seller-customer-returns" */))
const _c794011c = () => interopDefault(import('..\\pages\\seller\\seller-dashboard.vue' /* webpackChunkName: "pages/seller/seller-dashboard" */))
const _ed2b2f5a = () => interopDefault(import('..\\pages\\seller\\seller-leftsidebar.vue' /* webpackChunkName: "pages/seller/seller-leftsidebar" */))
const _9a6b0636 = () => interopDefault(import('..\\pages\\seller\\seller-message.vue' /* webpackChunkName: "pages/seller/seller-message" */))
const _568b2477 = () => interopDefault(import('..\\pages\\seller\\seller-orders.vue' /* webpackChunkName: "pages/seller/seller-orders" */))
const _5312d0aa = () => interopDefault(import('..\\pages\\seller\\seller-payment-history.vue' /* webpackChunkName: "pages/seller/seller-payment-history" */))
const _3351c4f6 = () => interopDefault(import('..\\pages\\seller\\seller-products.vue' /* webpackChunkName: "pages/seller/seller-products" */))
const _2e5d36c7 = () => interopDefault(import('..\\pages\\seller\\seller-products-post.vue' /* webpackChunkName: "pages/seller/seller-products-post" */))
const _1d2734f2 = () => interopDefault(import('..\\pages\\seller\\seller-profile.vue' /* webpackChunkName: "pages/seller/seller-profile" */))
const _890128ea = () => interopDefault(import('..\\pages\\seller\\seller-wallet.vue' /* webpackChunkName: "pages/seller/seller-wallet" */))
const _37a2de52 = () => interopDefault(import('..\\pages\\seller\\seller-wishlist.vue' /* webpackChunkName: "pages/seller/seller-wishlist" */))
const _30aa4647 = () => interopDefault(import('..\\pages\\user\\account-statement.vue' /* webpackChunkName: "pages/user/account-statement" */))
const _119b4d9c = () => interopDefault(import('..\\pages\\user\\my-reviews.vue' /* webpackChunkName: "pages/user/my-reviews" */))
const _1a1dacce = () => interopDefault(import('..\\pages\\user\\mySalary.vue' /* webpackChunkName: "pages/user/mySalary" */))
const _1ffbed8a = () => interopDefault(import('..\\pages\\user\\order-details.vue' /* webpackChunkName: "pages/user/order-details" */))
const _37bfedc8 = () => interopDefault(import('..\\pages\\user\\user-blogPost.vue' /* webpackChunkName: "pages/user/user-blogPost" */))
const _eb11efe8 = () => interopDefault(import('..\\pages\\user\\user-dashborad.vue' /* webpackChunkName: "pages/user/user-dashborad" */))
const _8102ee38 = () => interopDefault(import('..\\pages\\user\\user-mlm.vue' /* webpackChunkName: "pages/user/user-mlm" */))
const _77aef79f = () => interopDefault(import('..\\pages\\user\\user-orders.vue' /* webpackChunkName: "pages/user/user-orders" */))
const _167a1142 = () => interopDefault(import('..\\pages\\user\\user-profile.vue' /* webpackChunkName: "pages/user/user-profile" */))
const _5acdd004 = () => interopDefault(import('..\\pages\\user\\user-requireProduct.vue' /* webpackChunkName: "pages/user/user-requireProduct" */))
const _e514740c = () => interopDefault(import('..\\pages\\user\\user-security.vue' /* webpackChunkName: "pages/user/user-security" */))
const _63258971 = () => interopDefault(import('..\\pages\\user\\user-whichlist.vue' /* webpackChunkName: "pages/user/user-whichlist" */))
const _4d09886f = () => interopDefault(import('..\\pages\\user\\user-withdrawal.vue' /* webpackChunkName: "pages/user/user-withdrawal" */))
const _7ac561b8 = () => interopDefault(import('..\\pages\\seller\\products\\product-edit.vue' /* webpackChunkName: "pages/seller/products/product-edit" */))
const _54215c8a = () => interopDefault(import('..\\pages\\seller\\products\\product-preview.vue' /* webpackChunkName: "pages/seller/products/product-preview" */))
const _153fcfcb = () => interopDefault(import('..\\pages\\seller\\products\\product-varient.vue' /* webpackChunkName: "pages/seller/products/product-varient" */))
const _694f4c35 = () => interopDefault(import('..\\pages\\index.vue' /* webpackChunkName: "pages/index" */))
const _e83c797a = () => interopDefault(import('..\\pages\\user\\invite-user\\_id.vue' /* webpackChunkName: "pages/user/invite-user/_id" */))
const _ddbc1426 = () => interopDefault(import('..\\pages\\business\\_slug.vue' /* webpackChunkName: "pages/business/_slug" */))
const _a86fbd5a = () => interopDefault(import('..\\pages\\product-details\\_slug.vue' /* webpackChunkName: "pages/product-details/_slug" */))
const _14ae1d4d = () => interopDefault(import('..\\pages\\resetpassword\\_slug.vue' /* webpackChunkName: "pages/resetpassword/_slug" */))

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
    component: _176b0310,
    name: "allbrands"
  }, {
    path: "/allshop",
    component: _337b4e3a,
    name: "allshop"
  }, {
    path: "/blog",
    component: _03079be2,
    name: "blog"
  }, {
    path: "/blog-details",
    component: _ed6e43f8,
    name: "blog-details"
  }, {
    path: "/cart",
    component: _264e8e8d,
    name: "cart"
  }, {
    path: "/changepassword",
    component: _6bbb5df8,
    name: "changepassword"
  }, {
    path: "/changepassword%20copy",
    component: _15b3f04d,
    name: "changepassword copy"
  }, {
    path: "/charity",
    component: _033a473b,
    name: "charity"
  }, {
    path: "/checkout",
    component: _495b6b33,
    name: "checkout"
  }, {
    path: "/coupons",
    component: _acb317a0,
    name: "coupons"
  }, {
    path: "/customer-review",
    component: _0670db4a,
    name: "customer-review"
  }, {
    path: "/flas-sale",
    component: _479aae5f,
    name: "flas-sale"
  }, {
    path: "/forget-password",
    component: _f36c48c4,
    name: "forget-password"
  }, {
    path: "/login",
    component: _32f6ef4c,
    name: "login"
  }, {
    path: "/official-store",
    component: _6db7dda8,
    name: "official-store"
  }, {
    path: "/official-store-grid",
    component: _5e164bf7,
    name: "official-store-grid"
  }, {
    path: "/OfficialStoreFilter",
    component: _74f6045e,
    name: "OfficialStoreFilter"
  }, {
    path: "/OfficialStoreFilterGrid",
    component: _cd9ad492,
    name: "OfficialStoreFilterGrid"
  }, {
    path: "/payment",
    component: _348556ae,
    name: "payment"
  }, {
    path: "/product-grid",
    component: _3ab049d1,
    name: "product-grid"
  }, {
    path: "/product-list",
    component: _77f00329,
    name: "product-list"
  }, {
    path: "/refund",
    component: _30b525a5,
    name: "refund"
  }, {
    path: "/required",
    component: _ddcf15e8,
    name: "required"
  }, {
    path: "/return-and-replacement",
    component: _373b4d2c,
    name: "return-and-replacement"
  }, {
    path: "/sell-on-ecommerce",
    component: _e4902860,
    name: "sell-on-ecommerce"
  }, {
    path: "/sell-on-filter",
    component: _3d1bfbd0,
    name: "sell-on-filter"
  }, {
    path: "/seller-form",
    component: _65095516,
    name: "seller-form"
  }, {
    path: "/service",
    component: _62c60c50,
    name: "service"
  }, {
    path: "/today-deal",
    component: _2d4a5325,
    name: "today-deal"
  }, {
    path: "/update-password",
    component: _a602eb7c,
    name: "update-password"
  }, {
    path: "/affiliate/affiliate-dashboard",
    component: _49ac5f14,
    name: "affiliate-affiliate-dashboard"
  }, {
    path: "/affiliate/affiliate-programe",
    component: _1e460391,
    name: "affiliate-affiliate-programe"
  }, {
    path: "/affiliate/affiliate-programe-register",
    component: _7ca6b38f,
    name: "affiliate-affiliate-programe-register"
  }, {
    path: "/affiliate/affiliate-transfer",
    component: _5258341b,
    name: "affiliate-affiliate-transfer"
  }, {
    path: "/brand-product/brand-grid",
    component: _1cc8bed8,
    name: "brand-product-brand-grid"
  }, {
    path: "/category/all-categorys",
    component: _68659024,
    name: "category-all-categorys"
  }, {
    path: "/category/category-grid",
    component: _1246f69a,
    name: "category-category-grid"
  }, {
    path: "/category/category-list",
    component: _4f86aff2,
    name: "category-category-list"
  }, {
    path: "/seller/change-password",
    component: _11f48e1c,
    name: "seller-change-password"
  }, {
    path: "/seller/order-details",
    component: _7aa9eb72,
    name: "seller-order-details"
  }, {
    path: "/seller/seller-account-setting",
    component: _aec84de4,
    name: "seller-seller-account-setting"
  }, {
    path: "/seller/seller-comission-history",
    component: _077c4e76,
    name: "seller-seller-comission-history"
  }, {
    path: "/seller/seller-customer-returns",
    component: _45cd2034,
    name: "seller-seller-customer-returns"
  }, {
    path: "/seller/seller-dashboard",
    component: _c794011c,
    name: "seller-seller-dashboard"
  }, {
    path: "/seller/seller-leftsidebar",
    component: _ed2b2f5a,
    name: "seller-seller-leftsidebar"
  }, {
    path: "/seller/seller-message",
    component: _9a6b0636,
    name: "seller-seller-message"
  }, {
    path: "/seller/seller-orders",
    component: _568b2477,
    name: "seller-seller-orders"
  }, {
    path: "/seller/seller-payment-history",
    component: _5312d0aa,
    name: "seller-seller-payment-history"
  }, {
    path: "/seller/seller-products",
    component: _3351c4f6,
    name: "seller-seller-products"
  }, {
    path: "/seller/seller-products-post",
    component: _2e5d36c7,
    name: "seller-seller-products-post"
  }, {
    path: "/seller/seller-profile",
    component: _1d2734f2,
    name: "seller-seller-profile"
  }, {
    path: "/seller/seller-wallet",
    component: _890128ea,
    name: "seller-seller-wallet"
  }, {
    path: "/seller/seller-wishlist",
    component: _37a2de52,
    name: "seller-seller-wishlist"
  }, {
    path: "/user/account-statement",
    component: _30aa4647,
    name: "user-account-statement"
  }, {
    path: "/user/my-reviews",
    component: _119b4d9c,
    name: "user-my-reviews"
  }, {
    path: "/user/mySalary",
    component: _1a1dacce,
    name: "user-mySalary"
  }, {
    path: "/user/order-details",
    component: _1ffbed8a,
    name: "user-order-details"
  }, {
    path: "/user/user-blogPost",
    component: _37bfedc8,
    name: "user-user-blogPost"
  }, {
    path: "/user/user-dashborad",
    component: _eb11efe8,
    name: "user-user-dashborad"
  }, {
    path: "/user/user-mlm",
    component: _8102ee38,
    name: "user-user-mlm"
  }, {
    path: "/user/user-orders",
    component: _77aef79f,
    name: "user-user-orders"
  }, {
    path: "/user/user-profile",
    component: _167a1142,
    name: "user-user-profile"
  }, {
    path: "/user/user-requireProduct",
    component: _5acdd004,
    name: "user-user-requireProduct"
  }, {
    path: "/user/user-security",
    component: _e514740c,
    name: "user-user-security"
  }, {
    path: "/user/user-whichlist",
    component: _63258971,
    name: "user-user-whichlist"
  }, {
    path: "/user/user-withdrawal",
    component: _4d09886f,
    name: "user-user-withdrawal"
  }, {
    path: "/seller/products/product-edit",
    component: _7ac561b8,
    name: "seller-products-product-edit"
  }, {
    path: "/seller/products/product-preview",
    component: _54215c8a,
    name: "seller-products-product-preview"
  }, {
    path: "/seller/products/product-varient",
    component: _153fcfcb,
    name: "seller-products-product-varient"
  }, {
    path: "/",
    component: _694f4c35,
    name: "index"
  }, {
    path: "/user/invite-user/:id?",
    component: _e83c797a,
    name: "user-invite-user-id"
  }, {
    path: "/business/:slug?",
    component: _ddbc1426,
    name: "business-slug"
  }, {
    path: "/product-details/:slug?",
    component: _a86fbd5a,
    name: "product-details-slug"
  }, {
    path: "/resetpassword/:slug?",
    component: _14ae1d4d,
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
