'use strict';

const api = require('../api.js');
const tags = require('../tags.js');
const TagCategoryList = require('../models/tag_category_list.js');
const topNavigation = require('../models/top_navigation.js');
const TagCategoriesView = require('../views/tag_categories_view.js');
const EmptyView = require('../views/empty_view.js');

class TagCategoriesController {
    constructor() {
        if (!api.hasPrivilege('tagCategories:list')) {
            this._view = new EmptyView();
            this._view.showError(
                '您没有浏览Tag分类的权限.');
            return;
        }

        topNavigation.activate('tags');
        topNavigation.setTitle('Tags列表');
        TagCategoryList.get().then(response => {
            this._tagCategories = response.results;
            this._view = new TagCategoriesView({
                tagCategories: this._tagCategories,
                canEditName: api.hasPrivilege('tagCategories:edit:name'),
                canEditColor: api.hasPrivilege('tagCategories:edit:color'),
                canDelete: api.hasPrivilege('tagCategories:delete'),
                canCreate: api.hasPrivilege('tagCategories:create'),
                canSetDefault: api.hasPrivilege('tagCategories:setDefault'),
            });
            this._view.addEventListener('submit', e => this._evtSubmit(e));
        }, error => {
            this._view = new EmptyView();
            this._view.showError(error.message);
        });
    }

    _evtSubmit(e) {
        this._view.clearMessages();
        this._view.disableForm();
        this._tagCategories.save()
            .then(() => {
                tags.refreshCategoryColorMap();
                this._view.enableForm();
                this._view.showSuccess('您的更改已保存.');
            }, error => {
                this._view.enableForm();
                this._view.showError(error.message);
            });
    }
}

module.exports = router => {
    router.enter(['tag-categories'], (ctx, next) => {
        ctx.controller = new TagCategoriesController(ctx, next);
    });
};
