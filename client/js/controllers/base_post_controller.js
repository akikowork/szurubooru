'use strict';

const api = require('../api.js');
const topNavigation = require('../models/top_navigation.js');
const EmptyView = require('../views/empty_view.js');

class BasePostController {
    constructor(ctx) {
        if (!api.hasPrivilege('posts:view')) {
            this._view = new EmptyView();
            this._view.showError('您无权查看这张图片.');
            return;
        }

        topNavigation.activate('posts');
        topNavigation.setTitle('图片 #' + ctx.parameters.id.toString());
    }
}

module.exports = BasePostController;
