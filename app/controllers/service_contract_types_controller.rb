class ServiceContractTypesController < ApplicationController
  before_action :set_service_contract_type, only: [:show, :edit, :update, :destroy]

  # GET /service_contract_types
  # GET /service_contract_types.json
  def index
    @service_contract_types = ServiceContractType.all
  end

  # GET /service_contract_types/1
  # GET /service_contract_types/1.json
  def show
  end

  # GET /service_contract_types/new
  def new
    @service_contract_type = ServiceContractType.new
  end

  # GET /service_contract_types/1/edit
  def edit
  end

  # POST /service_contract_types
  # POST /service_contract_types.json
  def create
    @service_contract_type = ServiceContractType.new(service_contract_type_params)

    respond_to do |format|
      if @service_contract_type.save
        format.html { redirect_to @service_contract_type, notice: 'Service contract type was successfully created.' }
        format.json { render :show, status: :created, location: @service_contract_type }
      else
        format.html { render :new }
        format.json { render json: @service_contract_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_contract_types/1
  # PATCH/PUT /service_contract_types/1.json
  def update
    respond_to do |format|
      if @service_contract_type.update(service_contract_type_params)
        format.html { redirect_to @service_contract_type, notice: 'Service contract type was successfully updated.' }
        format.json { render :show, status: :ok, location: @service_contract_type }
      else
        format.html { render :edit }
        format.json { render json: @service_contract_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_contract_types/1
  # DELETE /service_contract_types/1.json
  def destroy
    @service_contract_type.destroy
    respond_to do |format|
      format.html { redirect_to service_contract_types_url, notice: 'Service contract type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_contract_type
      @service_contract_type = ServiceContractType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def service_contract_type_params
      params.require(:service_contract_type).permit(:Name, :Description)
    end
end
