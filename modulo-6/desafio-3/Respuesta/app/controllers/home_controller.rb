class HomeController < ApplicationController
    def index
        @posts = Post.includes(:comments)
        if user_signed_in?
            post_ids = @posts.pluck(:id)
            user_reactions = current_user.reactions.where(post_id: post_ids)
            @user_reactions = user_reactions.index_by(&:post_id)
        end
    end
end
