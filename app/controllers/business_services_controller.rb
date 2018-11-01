class BusinessServicesController < ApplicationController
	def index
		@businesses = Business.all
	end
	def new
		@business = Business.new
	end
	def show
		@business = Business.friendly.find(params[:id])
	end
	def create
		@business = Business.new(business_params)
		if @business.save
			redirect_to @business
		else
			render 'new'
		end
	end
	private
	def business_params
		params.require(:business).permit(:title,:category,:text,:formation,:photo,:video)
	end
end
