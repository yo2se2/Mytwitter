class TweetsController < ApplicationController
    #authenticate_モデル名! 
    #tweetsコントローラのページにアクセスしようとするユーザに対して，ログイン済みかどうかを確認してくれる。
    before_action :authenticate_user!


    def index
        #テーブル名.new (オブジェクトの作成)
        @tweet = Tweet.new
        @tweets = Tweet.all
    end

    def create
        tweet = Tweet.new(tweet_params)
        if tweet.save #tweetをデータベースに保存
            
            #redirect_to コントローラのアクションを自動的に切り替える。
            redirect_to :action => "index"
        end
    end   

    def mypage
    end 

    def show
        #クラス変数に，送られてきたidのツイート情報を代入していく
        @tweet = Tweet.find(params[:id])
    end

    def edit
        @tweet = Tweet.find(params[:id])
    end

    def update
        tweet = Tweet.find(parms[:id])
        if tweet.update(tweet_params)
            redirect_to :action => "show", :id => tweet.id
        else
            redirect_to :action => "index"
        end
    end

    def destroy
        tweet = Tweet.find(params[:id])
        #destroy  tweet変数の中に格納されているツイートに対応するレコードを削除してくれる。
        tweet.destroy
        redirect_to action: :index
    end 
    private
    def tweet_params
        #require(モデル名)でtweetモデルを指定
        #permit(カラム名（キー)) 受け取る情報を絞る 
        params.require(:tweet).permit(:body, :title)
    end
end
