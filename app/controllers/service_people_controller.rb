class ServicePeopleController < ApplicationController
  before_action :set_service_person, only: [:show, :edit, :update, :destroy]

  # GET /service_people
  # GET /service_people.json
  def index
    @service_people = ServicePerson.all
  end

  # GET /service_people/1
  # GET /service_people/1.json
  def show
  end

  # GET /service_people/new
  def new
    @service_person = ServicePerson.new
  end

  # GET /service_people/1/edit
  def edit
  end

  # POST /service_people
  # POST /service_people.json
  def create
    @service_person = ServicePerson.new(service_person_params)

    respond_to do |format|
      if @service_person.save
        format.html { redirect_to @service_person, notice: 'Service person was successfully created.' }
        format.json { render :show, status: :created, location: @service_person }
      else
        format.html { render :new }
        format.json { render json: @service_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_people/1
  # PATCH/PUT /service_people/1.json
  def update
    respond_to do |format|
      if @service_person.update(service_person_params)
        format.html { redirect_to @service_person, notice: 'Service person was successfully updated.' }
        format.json { render :show, status: :ok, location: @service_person }
      else
        format.html { render :edit }
        format.json { render json: @service_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_people/1
  # DELETE /service_people/1.json
  def destroy
    @service_person.destroy
    respond_to do |format|
      format.html { redirect_to service_people_url, notice: 'Service person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_person
      @service_person = ServicePerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def service_person_params
      params.require(:service_person).permit(:contact_person_id, :comment)
    end
end
