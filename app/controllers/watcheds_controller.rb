class WatchedsController < ApplicationController

    skip_before_action :verify_authenticity_token

    def index
        @all = Watched.all
        render json: @all
    end

    def show
        @list = Watched.where(user_id: params[:id])
        render json: @list
    end

    def create
        @watched = Watched.create(watched_params)
        render json: @watched
    end

    def destroy
        @watch = Watched.find(params[:id])
        @watch.destroy 
        render json: Watched.all
    end

    def update
        @watch = Watched.find(params[:id])
        @watch.update(comments: params[:comments])
        render json: @watch
    end

    # def make
    #     @watched = Watched.create(user_id: params[:id]], member_id: [:cid]])
    #     render json: @watched
    # end

    private

    def watched_params
        params.permit(:user_id, :member_id, :comments)
    end

end
