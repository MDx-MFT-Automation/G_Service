class ContactPeopleController < ApplicationController
  before_action :set_contact_person, only: [:show, :edit, :update, :destroy]

  # GET /contact_people
  # GET /contact_people.json
  def index
    @contact_people = ContactPerson.all
  end

  # GET /contact_people/1
  # GET /contact_people/1.json
  def show
  end

  # GET /contact_people/new
  def new
    @contact_person = ContactPerson.new
    
  end

  # GET /contact_people/1/edit
  def edit
  end

  # POST /contact_people
  # POST /contact_people.json
  def create
    @contact_person = ContactPerson.new(contact_person_params)
    if params[:contact_person][:customer_id].nil? 
      @contact_person.customers.clear
    else
      @customers = Customer.find(params[:contact_person][:customer_id])
      @contact_person.customers=@customers
    end

    respond_to do |format|
      if @contact_person.save
        format.html { redirect_to @contact_person, notice: 'Contact person was successfully created.' }
        format.json { render :show, status: :created, location: @contact_person }
      else
        format.html { render :new }
        format.json { render json: @contact_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contact_people/1
  # PATCH/PUT /contact_people/1.json
  def update

    if params[:contact_person][:customer_id].nil? 
      @contact_person.customers.clear
    else
      @customers = Customer.find(params[:contact_person][:customer_id])
      @contact_person.customers=@customers
    end

    respond_to do |format|
      if @contact_person.update(contact_person_params)
        format.html { redirect_to @contact_person, notice: 'Contact person was successfully updated.' }
        format.json { render :show, status: :ok, location: @contact_person }
      else
        format.html { render :edit }
        format.json { render json: @contact_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_people/1
  # DELETE /contact_people/1.json
  def destroy
    @contact_person.destroy
    respond_to do |format|
      format.html { redirect_to contact_people_url, notice: 'Contact person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact_person
      @contact_person = ContactPerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contact_person_params
      params.require(:contact_person).permit(:English_Family_Name, :Chinese_Family_Name, :English_Given_Name, :Chinese_Given_Name, :customer_id, :English_Middle_Name,:tag)
    end
end
