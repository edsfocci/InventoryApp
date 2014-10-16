class ItemContainersController < ApplicationController
  before_action :set_item_container, only: [:show, :edit, :update, :destroy]

  # GET /item_containers
  # GET /item_containers.json
  def index
    @item_containers = ItemContainer.all
  end

  # GET /item_containers/1
  # GET /item_containers/1.json
  def show
  end

  # GET /item_containers/new
  def new
    @item_container = ItemContainer.new
  end

  # GET /item_containers/1/edit
  def edit
  end

  # POST /item_containers
  # POST /item_containers.json
  def create
    @item_container = ItemContainer.new(item_container_params)

    respond_to do |format|
      if @item_container.save
        format.html { redirect_to @item_container, notice: 'Item container was successfully created.' }
        format.json { render :show, status: :created, location: @item_container }
      else
        format.html { render :new }
        format.json { render json: @item_container.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /item_containers/1
  # PATCH/PUT /item_containers/1.json
  def update
    respond_to do |format|
      if @item_container.update(item_container_params)
        format.html { redirect_to @item_container, notice: 'Item container was successfully updated.' }
        format.json { render :show, status: :ok, location: @item_container }
      else
        format.html { render :edit }
        format.json { render json: @item_container.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_containers/1
  # DELETE /item_containers/1.json
  def destroy
    @item_container.destroy
    respond_to do |format|
      format.html { redirect_to item_containers_url, notice: 'Item container was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_container
      @item_container = ItemContainer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_container_params
      params.require(:item_container).permit(:item_id, :container_id)
    end
end
