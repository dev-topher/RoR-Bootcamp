class JobsController < ApplicationController
    before_action :current_user_admin

    def new
        @job = Job.new
    end

    def show
        @job = Job.find(params[:id])
        @applies = Apply.where(job_id: @job.id) 

    end

    def create
        @job = Job.new(jobs_params)
        respond_to do |format|
            if @job.save
                format.html { redirect_to root_path, notice: "La postulación ha sido realizada exitosamente." }
            else
                format.html { render :new, status: :unprocessable_entity }
            end
        end
    end



    def update
        respond_to do |format|
            if @job.update(jobs_params)
              format.html { redirect_to root_path, notice: "La postulación ha sido modificada exitosamente." }
            else
              format.html { render :edit, status: :unprocessable_entity }
            end
        end
    end

    private

    def set_job
        @job = Job.find(params[:id])
    end

    def jobs_params
        params.require(:job).permit(:title, :image, :description)
    end


end