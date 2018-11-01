class ArticlesController < ApplicationController
	http_basic_authenticate_with name: "vahram" ,password: "vahram87",
	except: [:index,:show]
	def index
		@articles = Article.all.order("created_at DESC").paginate(page: params[:page],per_page: 3)
	end
	#new article--------------------------------------------------------
	def new
		@article = Article.new
		@articles = Article.all
	end
	#show action---------------------------------------------------------
	def show
		@article = Article.friendly.find(params[:id])
		#set_meta_tags title: @article.title

	end

	# Edit action -------------------------------------------------------
	def edit
		@article = Article.find(params[:id])
	end

	#Update action
	def update
		@article = Article.find(params[:id])
		if @article.update(article_params)
			redirect_to @article
		else
			render 'edit'
		end
	end
	# Create action -----------------------------------------------------
	def create
		@article = Article.new(article_params)
		if @article.save
			redirect_to @article
		else
			render 'new'
		end
	end
	# delete action
	def destroy
		@article = Article.find(params[:id])
		@article.destroy
		redirect_to articles_path
	end
	
private
	def article_params
		params.require(:article).permit(:title,:text,:photo)
	end
end
