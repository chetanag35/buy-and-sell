class ItemListsController < ApplicationController
  before_action :set_item_list, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /item_lists
  # GET /item_lists.json
  def index
    @item_lists = ItemList.all
  end

  # GET /item_lists/1
  # GET /item_lists/1.json
  def show
  end

  # GET /item_lists/new
  def new
    @item_list = ItemList.new
  end

  # GET /item_lists/1/edit
  def edit
  end

  # POST /item_lists
  # POST /item_lists.json
  def create
    @item_list = ItemList.new(item_list_params)
    @item_list.user_id = current_user.id

    respond_to do |format|
      if @item_list.save
        format.html { redirect_to @item_list, notice: 'Item list was successfully created.' }
        format.json { render :show, status: :created, location: @item_list }
      else
        format.html { render :new }
        format.json { render json: @item_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /item_lists/1
  # PATCH/PUT /item_lists/1.json
  def update
    respond_to do |format|
      if @item_list.update(item_list_params)
        format.html { redirect_to @item_list, notice: 'Item list was successfully updated.' }
        format.json { render :show, status: :ok, location: @item_list }
      else
        format.html { render :edit }
        format.json { render json: @item_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_lists/1
  # DELETE /item_lists/1.json
  def destroy
    @item_list.destroy
    respond_to do |format|
      format.html { redirect_to item_lists_url, notice: 'Item list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_list
      @item_list = ItemList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_list_params
      params.require(:item_list).permit(:title, :description, :expected_cost, :image, :contact)
    end
end
