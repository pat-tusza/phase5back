class MembersController < ApplicationController

    def index 
        @all = Member.all
        render json: @all
    end

    def show
        @member = Member.where(cid: params[:id])
        render json: @member
    end


end
