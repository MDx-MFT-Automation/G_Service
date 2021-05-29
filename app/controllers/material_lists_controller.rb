class MaterialListsController < ApplicationController
  before_action :set_material_list, only: [:show, :edit, :update, :destroy]

  # GET /material_lists
  # GET /material_lists.json
  def index
    @material_lists = MaterialList.all
  end

  # GET /material_lists/1
  # GET /material_lists/1.json
  def show
  end

  # GET /material_lists/new
  def new
    @material_list = MaterialList.new
  end

  # GET /material_lists/1/edit
  def edit
  end

  # POST /material_lists
  # POST /material_lists.json
  def create
    @material_list = MaterialList.new(material_list_params)

    respond_to do |format|
      if @material_list.save
        format.html { redirect_to @material_list, notice: 'Material list was successfully created.' }
        format.json { render :show, status: :created, location: @material_list }
      else
        format.html { render :new }
        format.json { render json: @material_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /material_lists/1
  # PATCH/PUT /material_lists/1.json
  def update
    respond_to do |format|
      if @material_list.update(material_list_params)
        format.html { redirect_to @material_list, notice: 'Material list was successfully updated.' }
        format.json { render :show, status: :ok, location: @material_list }
      else
        format.html { render :edit }
        format.json { render json: @material_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /material_lists/1
  # DELETE /material_lists/1.json
  def destroy
    @material_list.destroy
    respond_to do |format|
      format.html { redirect_to material_lists_url, notice: 'Material list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_material_list
      @material_list = MaterialList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def material_list_params
      params.require(:material_list).permit(:instrument_id, :name, :description)
    end
end
