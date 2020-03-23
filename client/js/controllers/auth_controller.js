'use strict';

const router = require('../router.js');
const api = require('../api.js');
const tags = require('../tags.js');
const uri = require('../util/uri.js');
const topNavigation = require('../models/top_navigation.js');
const LoginView = require('../views/login_view.js');

class LoginController {
    constructor() {
        api.forget();
        topNavigation.activate('login');
        topNavigation.setTitle('登录');

        this._loginView = new LoginView();
        this._loginView.addEventListener('submit', e => this._evtLogin(e));
    }

    _evtLogin(e) {
        this._loginView.clearMessages();
        this._loginView.disableForm();
        api.forget();
        api.login(e.detail.name, e.detail.password, e.detail.remember)
            .then(() => {
                const ctx = router.show(uri.formatClientLink());
                ctx.controller.showSuccess('登录成功');
                // reload tag category color map, this is required when `tag_categories:list` has a permission other than anonymous
                tags.refreshCategoryColorMap();
            }, error => {
                this._loginView.showError(error.message);
                this._loginView.enableForm();
            });
    }
}

class LogoutController {
    constructor() {
        api.forget();
        api.logout();
        const ctx = router.show(uri.formatClientLink());
        ctx.controller.showSuccess('已登出');
    }
}

module.exports = router => {
    router.enter(['login'], (ctx, next) => {
        ctx.controller = new LoginController();
    });
    router.enter(['logout'], (ctx, next) => {
        ctx.controller = new LogoutController();
    });
};
