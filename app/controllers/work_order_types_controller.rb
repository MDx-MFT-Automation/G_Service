class WorkOrderTypesController < ApplicationController
  before_action :set_work_order_type, only: [:show, :edit, :update, :destroy]

  # GET /work_order_types
  # GET /work_order_types.json
  def index
    @work_order_types = WorkOrderType.all
  end

  # GET /work_order_types/1
  # GET /work_order_types/1.json
  def show
  end

  # GET /work_order_types/new
  def new
    @work_order_type = WorkOrderType.new
  end

  # GET /work_order_types/1/edit
  def edit
  end

  # POST /work_order_types
  # POST /work_order_types.json
  def create
    @work_order_type = WorkOrderType.new(work_order_type_params)

    respond_to do |format|
      if @work_order_type.save
        format.html { redirect_to @work_order_type, notice: 'Work order type was successfully created.' }
        format.json { render :show, status: :created, location: @work_order_type }
      else
        format.html { render :new }
        format.json { render json: @work_order_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /work_order_types/1
  # PATCH/PUT /work_order_types/1.json
  def update
    respond_to do |format|
      if @work_order_type.update(work_order_type_params)
        format.html { redirect_to @work_order_type, notice: 'Work order type was successfully updated.' }
        format.json { render :show, status: :ok, location: @work_order_type }
      else
        format.html { render :edit }
        format.json { render json: @work_order_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /work_order_types/1
  # DELETE /work_order_types/1.json
  def destroy
    @work_order_type.destroy
    respond_to do |format|
      format.html { redirect_to work_order_types_url, notice: 'Work order type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work_order_type
      @work_order_type = WorkOrderType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def work_order_type_params
      params.require(:work_order_type).permit(:Work_Type_Name)
    end
end
