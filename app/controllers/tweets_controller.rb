class TweetsController < ApplicationController
    def index
        #テーブル名.new (オブジェクトの作成)
        @tweet = Tweet.new
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

    private
    def tweet_params
        params.require(:tweet).permit(:body)
    end
end
