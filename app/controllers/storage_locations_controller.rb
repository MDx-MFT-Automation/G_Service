class StorageLocationsController < ApplicationController
  before_action :set_storage_location, only: [:show, :edit, :update, :destroy]

  # GET /storage_locations
  # GET /storage_locations.json
  def index
    @storage_locations = StorageLocation.all
  end

  # GET /storage_locations/1
  # GET /storage_locations/1.json
  def show
  end

  # GET /storage_locations/new
  def new
    @storage_location = StorageLocation.new
  end

  # GET /storage_locations/1/edit
  def edit
  end

  # POST /storage_locations
  # POST /storage_locations.json
  def create
    @storage_location = StorageLocation.new(storage_location_params)

    respond_to do |format|
      if @storage_location.save
        format.html { redirect_to @storage_location, notice: 'Storage location was successfully created.' }
        format.json { render :show, status: :created, location: @storage_location }
      else
        format.html { render :new }
        format.json { render json: @storage_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /storage_locations/1
  # PATCH/PUT /storage_locations/1.json
  def update
    respond_to do |format|
      if @storage_location.update(storage_location_params)
        format.html { redirect_to @storage_location, notice: 'Storage location was successfully updated.' }
        format.json { render :show, status: :ok, location: @storage_location }
      else
        format.html { render :edit }
        format.json { render json: @storage_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /storage_locations/1
  # DELETE /storage_locations/1.json
  def destroy
    @storage_location.destroy
    respond_to do |format|
      format.html { redirect_to storage_locations_url, notice: 'Storage location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_storage_location
      @storage_location = StorageLocation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def storage_location_params
      params.require(:storage_location).permit(:storage_location_name, :storage_location_description, :actual_location)
    end
end
