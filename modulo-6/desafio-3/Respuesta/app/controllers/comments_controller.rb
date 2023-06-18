class CommentsController < ApplicationController
    
    before_action :current_user_logged

    def new
        @post = params[:post]
        @comment = Comment.new
    end
    
    def edit
    end

    def create
        @comment = Comment.new(comment_params)
        respond_to do |format|
            if @comment.save
                format.html { redirect_to root_path, notice: "El comentario ha sido añadido correctamente." }
            else
                format.html { render :new, status: :unprocessable_entity }
            end
        end
    end

    def update
        respond_to do |format|
            if @comment.update(comment_params)
              format.html { redirect_to root_path, notice: "El comentario ha sido actualizado correctamente." }
            else
              format.html { render :edit, status: :unprocessable_entity }
            end
        end
    end

    def destroy
        @comment.destroy
        respond_to do |format|
          format.html { redirect_to root_path, notice: "El comentario ha sido eliminado correctamente." }
        end
    end

    private

    def set_comment
        @comment = Comment.find(params[:id])
      end

    def comment_params
        params.require(:comment).permit(:content, :post_id).merge(user_id: current_user.id)
    end
end
