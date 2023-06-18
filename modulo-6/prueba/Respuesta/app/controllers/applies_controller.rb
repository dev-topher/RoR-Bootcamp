class AppliesController < ApplicationController

    before_action :current_user_logged, only: [:index, :new, :create]
    before_action :current_user_admin, only: [:show, :edit, :update]

    before_action :set_apply, only: [:show, :edit, :update]

    def index
        @applies = Apply.where(user_id: current_user.id).all
    end

    def new
        if current_user.admin?
            redirect_to root_path and return
        end
        @job_finder = params[:job]
        @job = Job.find_by(id: @job_finder)
        @apply_check = Apply.where(job_id: @job_finder, user_id: current_user.id).first
      
        if @apply_check.present?
          redirect_to root_path, alert: 'Ya tienes una postulación en esta vacante'
        else
          @apply = Apply.new
        end
    end

    def edit
        if !current_user.admin?
            redirect_to root_path and return
        end
        applies_id = params[:id]
        @apply = Apply.find(applies_id)
    end

    def create
        if current_user.admin?
            redirect_to root_path and return
        end
        @apply = Apply.new(apply_params)
        respond_to do |format|
            if @apply.save
                format.html { redirect_to root_path, notice: "La postulación ha sido realizada exitosamente." }
            else
                format.html { render :roo, status: :unprocessable_entity }
            end
        end
    end

    def update
        if current_user.admin?
          redirect_to root_path and return
        end
        
        respond_to do |format|
            if @apply.update(status: apply_params[:status])
              format.html { redirect_to root_path, notice: "La postulación ha sido modificada exitosamente." }
            else
              format.html { render :edit, status: :unprocessable_entity }
            end
          end
    end
      

    private

    def set_apply
        @apply = Apply.find(params[:id])
    end

    def apply_params
        params.require(:apply).permit(:application, :status, :job_id).merge(user_id: current_user.id)
    end

end