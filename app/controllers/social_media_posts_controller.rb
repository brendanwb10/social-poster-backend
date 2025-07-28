class SocialMediaPostsController < ApplicationController
  def index
    @social_media_posts = SocialMediaPost.all

    render json: @social_media_posts
  end

  def show
    @social_media_post = SocialMediaPost.find_by(id: params[:id])

    if @social_media_post
      render json: @social_media_post
    else
      render json: :not_found
    end
  end

  private

  def social_media_post_params
    params.require(:social_media_post).permit(:title, :post, :schedule_date)
  end
end
