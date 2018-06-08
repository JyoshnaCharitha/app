angular.module('eshop.config', [])
  .constant('configuration', {
        "NAVIGATION_SERVICE_URL": "@@NAVIGATION_SERVICE_URL",
        "PRODUCT_SERVICE_URL": "@@PRODUCT_SERVICE_URL",
        "CART_SERVICE_IMPL": "@@CART_SERVICE_IMPL",
        "CART_SERVICE_GET_URL": "@@CART_SERVICE_GET_URL",
        "CART_SERVICE_PUT_URL": "@@CART_SERVICE_PUT_URL",
        "CART_SERVICE_POST_URL": "@@CART_SERVICE_POST_URL",
        "CART_SERVICE_DELETE_URL": "@@CART_SERVICE_DELETE_URL",
        "CHECKOUT_BASE_URL": "@@CHECKOUT_BASE_URL", 
        "GLOBAL_DISCOUNT": "@@GLOBAL_DISCOUNT"
    });

