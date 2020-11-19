class TweetsController < ApplicationController
    def index
        #テーブル名.new (オブジェクトの作成)
        @tweet = Tweet.new
    end

    def new
        #テーブル名.new (オブジェクトの作成)
        @tweet = Tweet.new
    end

    def mypage
    end 
end
