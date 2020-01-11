class CategoriesController < ApplicationController
    def show
        #   カテゴリーのセレクトボックスからカテゴリー別にメモを表示する為のアクション
        @category = Category.find(params[:id])
        @memos = Memo.where(category_id: params[:id])
    end
end
