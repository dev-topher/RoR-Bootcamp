class PostsController < ApplicationController

    before_action :current_user_admin

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        respond_to do |format|
            if @post.save
                format.html { redirect_to root_path, notice: "Post was successfully created." }
                format.json { render :show, status: :created, location: @post }
            else
                format.html { render :new, status: :unprocessable_entity }
                format.json { render json: @post.errors, status: :unprocessable_entity }
            end
        end
    end

    def destroy
        @post.destroy
        respond_to do |format|
            format.html { redirect_to root_path, notice: "Post was successfully destroyed." }
        end
    end

    private

    def set_post
        @post = Post.find(params[:id])
    end

    def post_params
        params.require(:post).permit(:title, :image, :description).merge(user_id: current_user.id)
    end
end
