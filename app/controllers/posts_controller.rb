class PostsController < ApplicationController
	def new
	end

	def index
		@posts=Post.all
		@likes = Like.where(post_id: params[:post_id])
	end

	def show
		@post=Post.find(params[:id])
	end

	def create
		@post=Post.new(post_params)
		@post.save
		redirect_to @post
	end

	private
		def post_params
			params.require(:post).permit(:text)
		end
end
