class ReactionsController < ApplicationController

    before_action :current_user_logged

    def create
        @reaction = Reaction.new(reaction_params)
        respond_to do |format|
            if @reaction.save
                format.html { redirect_to root_path, notice: "Reaction was successfully created." }
            else
                format.html { redirect_to root_path, status: :unprocessable_entity }
            end
        end
        
    end

    def destroy
        @reaction = current_user.reactions.find(params[:id])
        @reaction.destroy
        respond_to do |format|
            format.html { redirect_to root_path, notice: "Reaction was successfully destroyed." }
        end
    end

    private

    def reaction_params
        params.require(:reaction).permit(:post_id).merge(user_id: current_user.id)
    end
end