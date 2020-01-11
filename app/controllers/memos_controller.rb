class MemosController < ApplicationController
    def index
        # トップページ
        @memo = Memo.all
    end
    
    def new
        # New Memoがクリックされた時に新しいレコードを追加するアクション
    end
    
    def create
        # 新規作成ページにて送信ボタンが選択された時にレコードの追加をするアクション
        Memo.create(title:params["memos"]["title"],body:params["memos"]["body"],category_id:params["memos"]["category_id"])
        redirect_to "/"
    end
    
    def edit
        # メモの編集ページにアクセスするアクション
        @memo = Memo.find(params["id"])
    end
    
    def update
        # メモの編集を行うアクション
        memo = Memo.find(params["id"])
        memo.title = params["memos"]["title"]
        memo.body = params["memos"]["body"]
        memo.category_id = params["memos"]["category_id"]
        memo.save
        redirect_to "/"
    end
    
    def delete
        # メモの削除を行うアクション
        memo = Memo.find(params["id"])
        memo.destroy
        redirect_to "/"
    end
end
