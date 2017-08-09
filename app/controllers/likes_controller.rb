class LikesController < ApplicationController
	def create
		@like = Like.create(post_id: params[:post_id])
		@likes = Like.where(post_id: params[:post_id])
	end
end
