class TipsController < ApplicationController

    def index
        @tip = Tip.order("RANDOM()").first
    end

    def new
        @tip = Tip.new
    end

    def create
        @tip = Tip.create(tip_params)
        redirect_to root_path
    end

    def show
        @tip = Tip.find(params[:id])
    end

    private
    def tip_params
        params.require(:tip).permit(:codingtip)
    end
end
