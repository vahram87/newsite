class VideosController < ApplicationController
	http_basic_authenticate_with name: "vahram" ,password: "vahram87",
	except: [:index,:show]
	def index
		@videos = Video.all.order("created_at DESC").paginate(page: params[:page],per_page: 3)
	end

	def new
		@video = Video.new
		@videos = Video.all
	end
	def show
		@video = Video.friendly.find(params[:id])
	end
	def edit
		@video =Video.find(params[:id])
	end

	def update
		@video = Video.find(params[:id])
		if @video.update(video_params)
			redirect_to @video
		else
			render 'edit'
		end
	end
	def create
		@video = Video.new(video_params)
		if @video.save
			redirect_to @video
		else
			render 'new'
		end
	end
	def destroy
		@video = Video.find(params[:id])
		@video.destroy
		redirect_to videos_path
	end
private 
	def video_params
		params.require(:video).permit(:title,:category,:clip)	
	end	
end
