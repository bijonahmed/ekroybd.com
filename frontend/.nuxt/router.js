import Vue from 'vue'
import Router from 'vue-router'
import { normalizeURL, decode } from 'ufo'
import { interopDefault } from './utils'
import scrollBehavior from './router.scrollBehavior.js'

const _3f836062 = () => interopDefault(import('..\\pages\\allbrands.vue' /* webpackChunkName: "pages/allbrands" */))
const _3c2e828e = () => interopDefault(import('..\\pages\\allshop.vue' /* webpackChunkName: "pages/allshop" */))
const _24eda9f0 = () => interopDefault(import('..\\pages\\blog.vue' /* webpackChunkName: "pages/blog" */))
const _630e3636 = () => interopDefault(import('..\\pages\\blog-details.vue' /* webpackChunkName: "pages/blog-details" */))
const _4cc0066e = () => interopDefault(import('..\\pages\\cart.vue' /* webpackChunkName: "pages/cart" */))
const _25053099 = () => interopDefault(import('..\\pages\\changepassword.vue' /* webpackChunkName: "pages/changepassword" */))
const _2e799a4c = () => interopDefault(import('..\\pages\\changepassword copy.vue' /* webpackChunkName: "pages/changepassword copy" */))
const _9cb0908c = () => interopDefault(import('..\\pages\\charity.vue' /* webpackChunkName: "pages/charity" */))
const _689c0a94 = () => interopDefault(import('..\\pages\\checkout.vue' /* webpackChunkName: "pages/checkout" */))
const _5813e4af = () => interopDefault(import('..\\pages\\coupons.vue' /* webpackChunkName: "pages/coupons" */))
const _76615cc9 = () => interopDefault(import('..\\pages\\customer-review.vue' /* webpackChunkName: "pages/customer-review" */))
const _106dfb1e = () => interopDefault(import('..\\pages\\flas-sale.vue' /* webpackChunkName: "pages/flas-sale" */))
const _138b45c6 = () => interopDefault(import('..\\pages\\forget-password.vue' /* webpackChunkName: "pages/forget-password" */))
const _4a9718ea = () => interopDefault(import('..\\pages\\login.vue' /* webpackChunkName: "pages/login" */))
const _dd59eb44 = () => interopDefault(import('..\\pages\\login-old1.0.vue' /* webpackChunkName: "pages/login-old1.0" */))
const _fb243866 = () => interopDefault(import('..\\pages\\official-store.vue' /* webpackChunkName: "pages/official-store" */))
const _76dbf5f6 = () => interopDefault(import('..\\pages\\official-store-grid.vue' /* webpackChunkName: "pages/official-store-grid" */))
const _436ab060 = () => interopDefault(import('..\\pages\\OfficialStoreFilter.vue' /* webpackChunkName: "pages/OfficialStoreFilter" */))
const _23052836 = () => interopDefault(import('..\\pages\\OfficialStoreFilterGrid.vue' /* webpackChunkName: "pages/OfficialStoreFilterGrid" */))
const _28395163 = () => interopDefault(import('..\\pages\\order-confirm.vue' /* webpackChunkName: "pages/order-confirm" */))
const _d7aa75b0 = () => interopDefault(import('..\\pages\\payment.vue' /* webpackChunkName: "pages/payment" */))
const _7fe050b2 = () => interopDefault(import('..\\pages\\product-grid.vue' /* webpackChunkName: "pages/product-grid" */))
const _85bfebec = () => interopDefault(import('..\\pages\\product-list.vue' /* webpackChunkName: "pages/product-list" */))
const _feafad74 = () => interopDefault(import('..\\pages\\refund.vue' /* webpackChunkName: "pages/refund" */))
const _9f4dd726 = () => interopDefault(import('..\\pages\\required.vue' /* webpackChunkName: "pages/required" */))
const _0cc62266 = () => interopDefault(import('..\\pages\\return-and-replacement.vue' /* webpackChunkName: "pages/return-and-replacement" */))
const _78e3ece2 = () => interopDefault(import('..\\pages\\sell-on-ecommerce.vue' /* webpackChunkName: "pages/sell-on-ecommerce" */))
const _ca88568e = () => interopDefault(import('..\\pages\\sell-on-filter.vue' /* webpackChunkName: "pages/sell-on-filter" */))
const _a2a32318 = () => interopDefault(import('..\\pages\\seller-form.vue' /* webpackChunkName: "pages/seller-form" */))
const _d939d968 = () => interopDefault(import('..\\pages\\sellerLogin.vue' /* webpackChunkName: "pages/sellerLogin" */))
const _7d0a6a57 = () => interopDefault(import('..\\pages\\service.vue' /* webpackChunkName: "pages/service" */))
const _6f982a34 = () => interopDefault(import('..\\pages\\signup.vue' /* webpackChunkName: "pages/signup" */))
const _7ee09e46 = () => interopDefault(import('..\\pages\\today-deal.vue' /* webpackChunkName: "pages/today-deal" */))
const _1cef0bc1 = () => interopDefault(import('..\\pages\\update-password.vue' /* webpackChunkName: "pages/update-password" */))
const _63e6cfb5 = () => interopDefault(import('..\\pages\\affiliate\\affiliate-dashboard.vue' /* webpackChunkName: "pages/affiliate/affiliate-dashboard" */))
const _0e9a7ad0 = () => interopDefault(import('..\\pages\\affiliate\\affiliate-programe.vue' /* webpackChunkName: "pages/affiliate/affiliate-programe" */))
const _270a19a0 = () => interopDefault(import('..\\pages\\affiliate\\affiliate-programe-register.vue' /* webpackChunkName: "pages/affiliate/affiliate-programe-register" */))
const _42acab5a = () => interopDefault(import('..\\pages\\affiliate\\affiliate-transfer.vue' /* webpackChunkName: "pages/affiliate/affiliate-transfer" */))
const _7c40ad97 = () => interopDefault(import('..\\pages\\brand-product\\brand-grid.vue' /* webpackChunkName: "pages/brand-product/brand-grid" */))
const _559fca6d = () => interopDefault(import('..\\pages\\category\\all-categorys.vue' /* webpackChunkName: "pages/category/all-categorys" */))
const _c7ccedce = () => interopDefault(import('..\\pages\\category\\category-grid.vue' /* webpackChunkName: "pages/category/category-grid" */))
const _4d4d7b1e = () => interopDefault(import('..\\pages\\category\\category-list.vue' /* webpackChunkName: "pages/category/category-list" */))
const _c871beca = () => interopDefault(import('..\\pages\\seller\\change-password.vue' /* webpackChunkName: "pages/seller/change-password" */))
const _7ea39ef4 = () => interopDefault(import('..\\pages\\seller\\order-details.vue' /* webpackChunkName: "pages/seller/order-details" */))
const _7a536ca2 = () => interopDefault(import('..\\pages\\seller\\seller-account-setting.vue' /* webpackChunkName: "pages/seller/seller-account-setting" */))
const _71a2a526 = () => interopDefault(import('..\\pages\\seller\\seller-comission-history.vue' /* webpackChunkName: "pages/seller/seller-comission-history" */))
const _0a2d1365 = () => interopDefault(import('..\\pages\\seller\\seller-customer-returns.vue' /* webpackChunkName: "pages/seller/seller-customer-returns" */))
const _4cb5bcd3 = () => interopDefault(import('..\\pages\\seller\\seller-dashboard.vue' /* webpackChunkName: "pages/seller/seller-dashboard" */))
const _18f05174 = () => interopDefault(import('..\\pages\\seller\\seller-leftsidebar.vue' /* webpackChunkName: "pages/seller/seller-leftsidebar" */))
const _752c1e86 = () => interopDefault(import('..\\pages\\seller\\seller-message.vue' /* webpackChunkName: "pages/seller/seller-message" */))
const _548e4ab6 = () => interopDefault(import('..\\pages\\seller\\seller-orders.vue' /* webpackChunkName: "pages/seller/seller-orders" */))
const _1e9def68 = () => interopDefault(import('..\\pages\\seller\\seller-payment-history.vue' /* webpackChunkName: "pages/seller/seller-payment-history" */))
const _85b75116 = () => interopDefault(import('..\\pages\\seller\\seller-products.vue' /* webpackChunkName: "pages/seller/seller-products" */))
const _17e548b0 = () => interopDefault(import('..\\pages\\seller\\seller-products-post.vue' /* webpackChunkName: "pages/seller/seller-products-post" */))
const _9863f1b0 = () => interopDefault(import('..\\pages\\seller\\seller-profile.vue' /* webpackChunkName: "pages/seller/seller-profile" */))
const _8cfadc6c = () => interopDefault(import('..\\pages\\seller\\seller-wallet.vue' /* webpackChunkName: "pages/seller/seller-wallet" */))
const _6e012356 = () => interopDefault(import('..\\pages\\seller\\seller-wishlist.vue' /* webpackChunkName: "pages/seller/seller-wishlist" */))
const _8b064e74 = () => interopDefault(import('..\\pages\\user\\account-statement.vue' /* webpackChunkName: "pages/user/account-statement" */))
const _f55bf0da = () => interopDefault(import('..\\pages\\user\\my-reviews.vue' /* webpackChunkName: "pages/user/my-reviews" */))
const _59310122 = () => interopDefault(import('..\\pages\\user\\mySalary.vue' /* webpackChunkName: "pages/user/mySalary" */))
const _2731b022 = () => interopDefault(import('..\\pages\\user\\old_user-withdrawal copy.vue' /* webpackChunkName: "pages/user/old_user-withdrawal copy" */))
const _08c7b33a = () => interopDefault(import('..\\pages\\user\\order-details.vue' /* webpackChunkName: "pages/user/order-details" */))
const _01a9e7fa = () => interopDefault(import('..\\pages\\user\\track-order.vue' /* webpackChunkName: "pages/user/track-order" */))
const _1c2137f9 = () => interopDefault(import('..\\pages\\user\\user-bloglist.vue' /* webpackChunkName: "pages/user/user-bloglist" */))
const _063499ca = () => interopDefault(import('..\\pages\\user\\user-blogPost.vue' /* webpackChunkName: "pages/user/user-blogPost" */))
const _eb32c426 = () => interopDefault(import('..\\pages\\user\\user-dashborad.vue' /* webpackChunkName: "pages/user/user-dashborad" */))
const _78c85b85 = () => interopDefault(import('..\\pages\\user\\user-mlm.vue' /* webpackChunkName: "pages/user/user-mlm" */))
const _a4f5d544 = () => interopDefault(import('..\\pages\\user\\user-orders.vue' /* webpackChunkName: "pages/user/user-orders" */))
const _79b09180 = () => interopDefault(import('..\\pages\\user\\user-profile.vue' /* webpackChunkName: "pages/user/user-profile" */))
const _8b74827a = () => interopDefault(import('..\\pages\\user\\user-requireProduct.vue' /* webpackChunkName: "pages/user/user-requireProduct" */))
const _b389200e = () => interopDefault(import('..\\pages\\user\\user-security.vue' /* webpackChunkName: "pages/user/user-security" */))
const _63151f52 = () => interopDefault(import('..\\pages\\user\\user-whichlist.vue' /* webpackChunkName: "pages/user/user-whichlist" */))
const _4b0caeae = () => interopDefault(import('..\\pages\\user\\user-withdrawal.vue' /* webpackChunkName: "pages/user/user-withdrawal" */))
const _d6005b4e = () => interopDefault(import('..\\pages\\seller\\products\\product-edit.vue' /* webpackChunkName: "pages/seller/products/product-edit" */))
const _ea4bc76e = () => interopDefault(import('..\\pages\\seller\\products\\product-preview.vue' /* webpackChunkName: "pages/seller/products/product-preview" */))
const _4bf88f8a = () => interopDefault(import('..\\pages\\seller\\products\\product-varient.vue' /* webpackChunkName: "pages/seller/products/product-varient" */))
const _110cd074 = () => interopDefault(import('..\\pages\\index.vue' /* webpackChunkName: "pages/index" */))
const _4e4364e4 = () => interopDefault(import('..\\pages\\user\\invite-user\\_id.vue' /* webpackChunkName: "pages/user/invite-user/_id" */))
const _0112776c = () => interopDefault(import('..\\pages\\business\\_slug.vue' /* webpackChunkName: "pages/business/_slug" */))
const _6e29c2f4 = () => interopDefault(import('..\\pages\\product-details\\_slug.vue' /* webpackChunkName: "pages/product-details/_slug" */))
const _149db32e = () => interopDefault(import('..\\pages\\resetpassword\\_slug.vue' /* webpackChunkName: "pages/resetpassword/_slug" */))

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
    component: _3f836062,
    name: "allbrands"
  }, {
    path: "/allshop",
    component: _3c2e828e,
    name: "allshop"
  }, {
    path: "/blog",
    component: _24eda9f0,
    name: "blog"
  }, {
    path: "/blog-details",
    component: _630e3636,
    name: "blog-details"
  }, {
    path: "/cart",
    component: _4cc0066e,
    name: "cart"
  }, {
    path: "/changepassword",
    component: _25053099,
    name: "changepassword"
  }, {
    path: "/changepassword%20copy",
    component: _2e799a4c,
    name: "changepassword copy"
  }, {
    path: "/charity",
    component: _9cb0908c,
    name: "charity"
  }, {
    path: "/checkout",
    component: _689c0a94,
    name: "checkout"
  }, {
    path: "/coupons",
    component: _5813e4af,
    name: "coupons"
  }, {
    path: "/customer-review",
    component: _76615cc9,
    name: "customer-review"
  }, {
    path: "/flas-sale",
    component: _106dfb1e,
    name: "flas-sale"
  }, {
    path: "/forget-password",
    component: _138b45c6,
    name: "forget-password"
  }, {
    path: "/login",
    component: _4a9718ea,
    name: "login"
  }, {
    path: "/login-old1.0",
    component: _dd59eb44,
    name: "login-old1.0"
  }, {
    path: "/official-store",
    component: _fb243866,
    name: "official-store"
  }, {
    path: "/official-store-grid",
    component: _76dbf5f6,
    name: "official-store-grid"
  }, {
    path: "/OfficialStoreFilter",
    component: _436ab060,
    name: "OfficialStoreFilter"
  }, {
    path: "/OfficialStoreFilterGrid",
    component: _23052836,
    name: "OfficialStoreFilterGrid"
  }, {
    path: "/order-confirm",
    component: _28395163,
    name: "order-confirm"
  }, {
    path: "/payment",
    component: _d7aa75b0,
    name: "payment"
  }, {
    path: "/product-grid",
    component: _7fe050b2,
    name: "product-grid"
  }, {
    path: "/product-list",
    component: _85bfebec,
    name: "product-list"
  }, {
    path: "/refund",
    component: _feafad74,
    name: "refund"
  }, {
    path: "/required",
    component: _9f4dd726,
    name: "required"
  }, {
    path: "/return-and-replacement",
    component: _0cc62266,
    name: "return-and-replacement"
  }, {
    path: "/sell-on-ecommerce",
    component: _78e3ece2,
    name: "sell-on-ecommerce"
  }, {
    path: "/sell-on-filter",
    component: _ca88568e,
    name: "sell-on-filter"
  }, {
    path: "/seller-form",
    component: _a2a32318,
    name: "seller-form"
  }, {
    path: "/sellerLogin",
    component: _d939d968,
    name: "sellerLogin"
  }, {
    path: "/service",
    component: _7d0a6a57,
    name: "service"
  }, {
    path: "/signup",
    component: _6f982a34,
    name: "signup"
  }, {
    path: "/today-deal",
    component: _7ee09e46,
    name: "today-deal"
  }, {
    path: "/update-password",
    component: _1cef0bc1,
    name: "update-password"
  }, {
    path: "/affiliate/affiliate-dashboard",
    component: _63e6cfb5,
    name: "affiliate-affiliate-dashboard"
  }, {
    path: "/affiliate/affiliate-programe",
    component: _0e9a7ad0,
    name: "affiliate-affiliate-programe"
  }, {
    path: "/affiliate/affiliate-programe-register",
    component: _270a19a0,
    name: "affiliate-affiliate-programe-register"
  }, {
    path: "/affiliate/affiliate-transfer",
    component: _42acab5a,
    name: "affiliate-affiliate-transfer"
  }, {
    path: "/brand-product/brand-grid",
    component: _7c40ad97,
    name: "brand-product-brand-grid"
  }, {
    path: "/category/all-categorys",
    component: _559fca6d,
    name: "category-all-categorys"
  }, {
    path: "/category/category-grid",
    component: _c7ccedce,
    name: "category-category-grid"
  }, {
    path: "/category/category-list",
    component: _4d4d7b1e,
    name: "category-category-list"
  }, {
    path: "/seller/change-password",
    component: _c871beca,
    name: "seller-change-password"
  }, {
    path: "/seller/order-details",
    component: _7ea39ef4,
    name: "seller-order-details"
  }, {
    path: "/seller/seller-account-setting",
    component: _7a536ca2,
    name: "seller-seller-account-setting"
  }, {
    path: "/seller/seller-comission-history",
    component: _71a2a526,
    name: "seller-seller-comission-history"
  }, {
    path: "/seller/seller-customer-returns",
    component: _0a2d1365,
    name: "seller-seller-customer-returns"
  }, {
    path: "/seller/seller-dashboard",
    component: _4cb5bcd3,
    name: "seller-seller-dashboard"
  }, {
    path: "/seller/seller-leftsidebar",
    component: _18f05174,
    name: "seller-seller-leftsidebar"
  }, {
    path: "/seller/seller-message",
    component: _752c1e86,
    name: "seller-seller-message"
  }, {
    path: "/seller/seller-orders",
    component: _548e4ab6,
    name: "seller-seller-orders"
  }, {
    path: "/seller/seller-payment-history",
    component: _1e9def68,
    name: "seller-seller-payment-history"
  }, {
    path: "/seller/seller-products",
    component: _85b75116,
    name: "seller-seller-products"
  }, {
    path: "/seller/seller-products-post",
    component: _17e548b0,
    name: "seller-seller-products-post"
  }, {
    path: "/seller/seller-profile",
    component: _9863f1b0,
    name: "seller-seller-profile"
  }, {
    path: "/seller/seller-wallet",
    component: _8cfadc6c,
    name: "seller-seller-wallet"
  }, {
    path: "/seller/seller-wishlist",
    component: _6e012356,
    name: "seller-seller-wishlist"
  }, {
    path: "/user/account-statement",
    component: _8b064e74,
    name: "user-account-statement"
  }, {
    path: "/user/my-reviews",
    component: _f55bf0da,
    name: "user-my-reviews"
  }, {
    path: "/user/mySalary",
    component: _59310122,
    name: "user-mySalary"
  }, {
    path: "/user/old_user-withdrawal%20copy",
    component: _2731b022,
    name: "user-old_user-withdrawal copy"
  }, {
    path: "/user/order-details",
    component: _08c7b33a,
    name: "user-order-details"
  }, {
    path: "/user/track-order",
    component: _01a9e7fa,
    name: "user-track-order"
  }, {
    path: "/user/user-bloglist",
    component: _1c2137f9,
    name: "user-user-bloglist"
  }, {
    path: "/user/user-blogPost",
    component: _063499ca,
    name: "user-user-blogPost"
  }, {
    path: "/user/user-dashborad",
    component: _eb32c426,
    name: "user-user-dashborad"
  }, {
    path: "/user/user-mlm",
    component: _78c85b85,
    name: "user-user-mlm"
  }, {
    path: "/user/user-orders",
    component: _a4f5d544,
    name: "user-user-orders"
  }, {
    path: "/user/user-profile",
    component: _79b09180,
    name: "user-user-profile"
  }, {
    path: "/user/user-requireProduct",
    component: _8b74827a,
    name: "user-user-requireProduct"
  }, {
    path: "/user/user-security",
    component: _b389200e,
    name: "user-user-security"
  }, {
    path: "/user/user-whichlist",
    component: _63151f52,
    name: "user-user-whichlist"
  }, {
    path: "/user/user-withdrawal",
    component: _4b0caeae,
    name: "user-user-withdrawal"
  }, {
    path: "/seller/products/product-edit",
    component: _d6005b4e,
    name: "seller-products-product-edit"
  }, {
    path: "/seller/products/product-preview",
    component: _ea4bc76e,
    name: "seller-products-product-preview"
  }, {
    path: "/seller/products/product-varient",
    component: _4bf88f8a,
    name: "seller-products-product-varient"
  }, {
    path: "/",
    component: _110cd074,
    name: "index"
  }, {
    path: "/user/invite-user/:id?",
    component: _4e4364e4,
    name: "user-invite-user-id"
  }, {
    path: "/business/:slug?",
    component: _0112776c,
    name: "business-slug"
  }, {
    path: "/product-details/:slug?",
    component: _6e29c2f4,
    name: "product-details-slug"
  }, {
    path: "/resetpassword/:slug?",
    component: _149db32e,
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
