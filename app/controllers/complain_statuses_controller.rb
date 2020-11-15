class ComplainStatusesController < ApplicationController
  before_action :set_complain_status, only: [:show, :edit, :update, :destroy]

  # GET /complain_statuses
  # GET /complain_statuses.json
  def index
    @complain_statuses = ComplainStatus.all
  end

  # GET /complain_statuses/1
  # GET /complain_statuses/1.json
  def show
  end

  # GET /complain_statuses/new
  def new
    @complain_status = ComplainStatus.new
  end

  # GET /complain_statuses/1/edit
  def edit
  end

  # POST /complain_statuses
  # POST /complain_statuses.json
  def create
    @complain_status = ComplainStatus.new(complain_status_params)

    respond_to do |format|
      if @complain_status.save
        format.html { redirect_to @complain_status, notice: 'Complain status was successfully created.' }
        format.json { render :show, status: :created, location: @complain_status }
      else
        format.html { render :new }
        format.json { render json: @complain_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /complain_statuses/1
  # PATCH/PUT /complain_statuses/1.json
  def update
    respond_to do |format|
      if @complain_status.update(complain_status_params)
        format.html { redirect_to @complain_status, notice: 'Complain status was successfully updated.' }
        format.json { render :show, status: :ok, location: @complain_status }
      else
        format.html { render :edit }
        format.json { render json: @complain_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /complain_statuses/1
  # DELETE /complain_statuses/1.json
  def destroy
    @complain_status.destroy
    respond_to do |format|
      format.html { redirect_to complain_statuses_url, notice: 'Complain status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_complain_status
      @complain_status = ComplainStatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def complain_status_params
      params.require(:complain_status).permit(:Status)
    end
end
