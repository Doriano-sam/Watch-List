class ListsController < ApplicationController

  def index
    @lists = List.all
  end
  # GET /restaurants/1
  def show
    @list = List.find(params[:id])
  end

  # GET /restaurants/new
  def new
    @list = List.new
  end

  # GET /restaurants/1/edit
  def edit; end

  # POST /restaurants
  def create
    @list = List.new(list_params)

    if @list.save
      redirect_to @list, notice: 'List was successfully created.'
    else
      render :new
    end
  end
  private
  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name)
  end
end
