class ServiceContractsController < ApplicationController
  before_action :set_service_contract, only: [:show, :edit, :update, :destroy]

  # GET /service_contracts
  # GET /service_contracts.json
  def index
    @service_contracts = ServiceContract.all
  end

  # GET /service_contracts/1
  # GET /service_contracts/1.json
  def show
  end

  # GET /service_contracts/new
  def new
    @service_contract = ServiceContract.new
  end

  # GET /service_contracts/1/edit
  def edit
  end

  # POST /service_contracts
  # POST /service_contracts.json
  def create
    @service_contract = ServiceContract.new(service_contract_params)

    respond_to do |format|
      if @service_contract.save
        format.html { redirect_to @service_contract, notice: 'Service contract was successfully created.' }
        format.json { render :show, status: :created, location: @service_contract }
      else
        format.html { render :new }
        format.json { render json: @service_contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_contracts/1
  # PATCH/PUT /service_contracts/1.json
  def update
    respond_to do |format|
      if @service_contract.update(service_contract_params)
        format.html { redirect_to @service_contract, notice: 'Service contract was successfully updated.' }
        format.json { render :show, status: :ok, location: @service_contract }
      else
        format.html { render :edit }
        format.json { render json: @service_contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_contracts/1
  # DELETE /service_contracts/1.json
  def destroy
    @service_contract.destroy
    respond_to do |format|
      format.html { redirect_to service_contracts_url, notice: 'Service contract was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_contract
      @service_contract = ServiceContract.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def service_contract_params
      params.require(:service_contract).permit(:instrument_id, :SAP_ServiceContract_Number, :Start_Date, :End_Date, :service_contract_type_id, :price, :Comment)
    end
end
