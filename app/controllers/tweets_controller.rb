class TweetsController < ApplicationController
  before_action :authenticate_user! , except: [:index, :kojin, :create, :dantai, :event, :show, :overview, :infomation]

  def index
        @tweets = Tweet.all
    end

    def new
        @tweet = Tweet.new
      end
    
      def create
        tweet = Tweet.new(tweet_params)
        tweet.user_id = current_user.id
        if tweet.save!
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end
      
      def show
        @tweets = Tweet.find(params[:id])
      end

      def edit
        @tweet = Tweet.find(params[:id])
      end

      def update
        tweet = Tweet.find(params[:id])
        if tweet.update(tweet_params)
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end

      def destroy
        tweet = Tweet.find(params[:id])
        tweet.destroy
        redirect_to action: :index
      end

      def overview
        @tweets = Tweet.all
      end    

      def kojin
        @tweets = Tweet.all
      end

      def dantai
        @tweets = Tweet.all
      end
          
      def event
        @tweets = Tweet.all
      end

      def infomation
        @tweets = Tweet.all
      end
      
      private
      def tweet_params
        params.require(:tweet).permit(:name, :genre, :title, :about, :goal, :category, :image)
      end
     
     
    
  
end
