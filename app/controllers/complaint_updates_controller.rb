class ComplaintUpdatesController < ApplicationController
  before_action :set_complaint_update, only: [:show, :edit, :update, :destroy]

  # GET /complaint_updates
  # GET /complaint_updates.json
  def index
    @complaint_updates = ComplaintUpdate.all
  end

  # GET /complaint_updates/1
  # GET /complaint_updates/1.json
  def show
  end

  # GET /complaint_updates/new
  def new
    @complaint_update = ComplaintUpdate.new
  end

  # GET /complaint_updates/1/edit
  def edit
  end

  # POST /complaint_updates
  # POST /complaint_updates.json
  def create
    @complaint_update = ComplaintUpdate.new(complaint_update_params)

    respond_to do |format|
      if @complaint_update.save
        format.html { redirect_to @complaint_update, notice: 'Complaint update was successfully created.' }
        format.json { render :show, status: :created, location: @complaint_update }
      else
        format.html { render :new }
        format.json { render json: @complaint_update.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /complaint_updates/1
  # PATCH/PUT /complaint_updates/1.json
  def update
    respond_to do |format|
      if @complaint_update.update(complaint_update_params)
        format.html { redirect_to @complaint_update, notice: 'Complaint update was successfully updated.' }
        format.json { render :show, status: :ok, location: @complaint_update }
      else
        format.html { render :edit }
        format.json { render json: @complaint_update.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /complaint_updates/1
  # DELETE /complaint_updates/1.json
  def destroy
    @complaint_update.destroy
    respond_to do |format|
      format.html { redirect_to complaint_updates_url, notice: 'Complaint update was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_complaint_update
      @complaint_update = ComplaintUpdate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def complaint_update_params
      params.require(:complaint_update).permit(:complaint_id, :Description, :complain_status_id, :Last_Updated_On)
    end
end
