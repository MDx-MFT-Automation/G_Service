class WorkOrderDurationTypesController < ApplicationController
  before_action :set_work_order_duration_type, only: [:show, :edit, :update, :destroy]

  # GET /work_order_duration_types
  # GET /work_order_duration_types.json
  def index
    @work_order_duration_types = WorkOrderDurationType.all
  end

  # GET /work_order_duration_types/1
  # GET /work_order_duration_types/1.json
  def show
  end

  # GET /work_order_duration_types/new
  def new
    @work_order_duration_type = WorkOrderDurationType.new
  end

  # GET /work_order_duration_types/1/edit
  def edit
  end

  # POST /work_order_duration_types
  # POST /work_order_duration_types.json
  def create
    @work_order_duration_type = WorkOrderDurationType.new(work_order_duration_type_params)

    respond_to do |format|
      if @work_order_duration_type.save
        format.html { redirect_to @work_order_duration_type, notice: 'Work order duration type was successfully created.' }
        format.json { render :show, status: :created, location: @work_order_duration_type }
      else
        format.html { render :new }
        format.json { render json: @work_order_duration_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /work_order_duration_types/1
  # PATCH/PUT /work_order_duration_types/1.json
  def update
    respond_to do |format|
      if @work_order_duration_type.update(work_order_duration_type_params)
        format.html { redirect_to @work_order_duration_type, notice: 'Work order duration type was successfully updated.' }
        format.json { render :show, status: :ok, location: @work_order_duration_type }
      else
        format.html { render :edit }
        format.json { render json: @work_order_duration_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /work_order_duration_types/1
  # DELETE /work_order_duration_types/1.json
  def destroy
    @work_order_duration_type.destroy
    respond_to do |format|
      format.html { redirect_to work_order_duration_types_url, notice: 'Work order duration type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work_order_duration_type
      @work_order_duration_type = WorkOrderDurationType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def work_order_duration_type_params
      params.require(:work_order_duration_type).permit(:SAP_Material_Number, :SAP_Code, :SAP_Description, :ServiceMax_Description)
    end
end
