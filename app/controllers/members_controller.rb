class MembersController < ApplicationController

    def index 
        @all = Member.all
        render json: @all
    end

    def show
        @member = Member.where(cid: params[:id])
        render json: @member
    end

    # def compare
    #     @member_one = Member.find(params[:cid1])
    #     @member_two = Member.find(params[:cid2])
    #     render json: @member_one, @member_two
    # end
end
