class CatsController < ApplicationController
  def index
    @cats = Cat.all
  end
  def new
    @cat = Cat.new
  end

  def show
    @cat = Cat.find(params[:id])
  end

  def create
    @cat = Cat.new(params[:cat])
    if @cat.save
      redirect_to cat_url(@cat)
    else
      redirect_to new_cat_url( :name => @cat.name)
    end
  end

end
