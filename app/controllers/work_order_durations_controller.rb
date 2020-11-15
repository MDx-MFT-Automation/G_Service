class WorkOrderDurationsController < ApplicationController
  before_action :set_work_order_duration, only: [:show, :edit, :update, :destroy]

  # GET /work_order_durations
  # GET /work_order_durations.json
  def index
    @work_order_durations = WorkOrderDuration.all
  end

  # GET /work_order_durations/1
  # GET /work_order_durations/1.json
  def show
  end

  # GET /work_order_durations/new
  def new
    @work_order_duration = WorkOrderDuration.new
  end

  # GET /work_order_durations/1/edit
  def edit
  end

  # POST /work_order_durations
  # POST /work_order_durations.json
  def create
    @work_order_duration = WorkOrderDuration.new(work_order_duration_params)

    respond_to do |format|
      if @work_order_duration.save
        format.html { redirect_to @work_order_duration, notice: 'Work order duration was successfully created.' }
        format.json { render :show, status: :created, location: @work_order_duration }
      else
        format.html { render :new }
        format.json { render json: @work_order_duration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /work_order_durations/1
  # PATCH/PUT /work_order_durations/1.json
  def update
    respond_to do |format|
      if @work_order_duration.update(work_order_duration_params)
        format.html { redirect_to @work_order_duration, notice: 'Work order duration was successfully updated.' }
        format.json { render :show, status: :ok, location: @work_order_duration }
      else
        format.html { render :edit }
        format.json { render json: @work_order_duration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /work_order_durations/1
  # DELETE /work_order_durations/1.json
  def destroy
    @work_order_duration.destroy
    respond_to do |format|
      format.html { redirect_to work_order_durations_url, notice: 'Work order duration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work_order_duration
      @work_order_duration = WorkOrderDuration.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def work_order_duration_params
      params.require(:work_order_duration).permit(:work_order_id, :work_order_duration_type_id, :Actual_Time, :Actual_Start_Date, :Actual_End_Date, :Description)
    end
end
