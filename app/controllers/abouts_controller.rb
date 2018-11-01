class AboutsController < ApplicationController
	def index
		@abouts = About.all
		@about = About.new
	end
	def new
		@about = About.new
		@abouts = About.all
	end

	def create
		@about = About.new(about_params)
		if @about.save
			redirect_to @about
		else
			render 'new'
		end
	end
	def show
		@about = About.find(params[:id])
	end

	def edit
		@about = About.find(params[:id])
	end

	def update
		@about = About.find(params[:id])
		if @about.update(about_params)
			redirect_to @about
		else
			render 'edit'
		end
	end

	def destroy
		@about = About.find(params[:id])
		@about.destroy
		redirect_to abouts_path
	end
	private
	def about_params
		params.require(:about).permit(:title)
	end	
end
