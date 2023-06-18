class HomeController < ApplicationController
    def index
        @posts = Post.includes(:comments)
    end
end
