class PagesController < ApplicationController
  def index
    @characters = Character.all
  end
end
