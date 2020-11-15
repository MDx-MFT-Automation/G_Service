class WorkOrderStatusesController < ApplicationController
  before_action :set_work_order_status, only: [:show, :edit, :update, :destroy]

  # GET /work_order_statuses
  # GET /work_order_statuses.json
  def index
    @work_order_statuses = WorkOrderStatus.all
  end

  # GET /work_order_statuses/1
  # GET /work_order_statuses/1.json
  def show
  end

  # GET /work_order_statuses/new
  def new
    @work_order_status = WorkOrderStatus.new
  end

  # GET /work_order_statuses/1/edit
  def edit
  end

  # POST /work_order_statuses
  # POST /work_order_statuses.json
  def create
    @work_order_status = WorkOrderStatus.new(work_order_status_params)

    respond_to do |format|
      if @work_order_status.save
        format.html { redirect_to @work_order_status, notice: 'Work order status was successfully created.' }
        format.json { render :show, status: :created, location: @work_order_status }
      else
        format.html { render :new }
        format.json { render json: @work_order_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /work_order_statuses/1
  # PATCH/PUT /work_order_statuses/1.json
  def update
    respond_to do |format|
      if @work_order_status.update(work_order_status_params)
        format.html { redirect_to @work_order_status, notice: 'Work order status was successfully updated.' }
        format.json { render :show, status: :ok, location: @work_order_status }
      else
        format.html { render :edit }
        format.json { render json: @work_order_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /work_order_statuses/1
  # DELETE /work_order_statuses/1.json
  def destroy
    @work_order_status.destroy
    respond_to do |format|
      format.html { redirect_to work_order_statuses_url, notice: 'Work order status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work_order_status
      @work_order_status = WorkOrderStatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def work_order_status_params
      params.require(:work_order_status).permit(:Status)
    end
end
