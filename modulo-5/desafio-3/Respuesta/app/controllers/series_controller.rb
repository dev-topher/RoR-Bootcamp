class SeriesController < ApplicationController
  def index
    @series = Serie.all
  end

  def create
    @serie = Serie.new(serie_params)
    if @serie.save
      redirect_to series_index_path, notice: 'Serie creada exitosamente.'
    else
      render :new
    end
  end
  
  def new
    @serie = Serie.new
  end

  def serie_params
    params.require(:serie).permit(:name, :synopsis, :director)
  end

end
