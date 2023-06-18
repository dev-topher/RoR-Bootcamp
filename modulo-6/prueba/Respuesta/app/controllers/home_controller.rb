class HomeController < ApplicationController
    def index
        @jobs = Job.all
        @apply_count = Apply.where(status: "active").count
    end
end