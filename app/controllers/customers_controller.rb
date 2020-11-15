class CustomersController < ApplicationController
  def new
    @customer =Customer.new
  end
  def edit
    @customer=Customer.find(params[:id])
  end
  def create
      @customer =Customer.new(customer_params)

      if @customer.save
        redirect_to @customer
      else
        render 'new'
      end
  end	
  def index
    @customers=Customer.all
  end
  def show
      @customer=Customer.find(params[:id])
  end
  def update
    @customer=Customer.find(params[:id])

    if params[:customer][:customer_gr].nil? 
      @customer.customer_groups.clear
    else
      @customer_groups = CustomerGroup.find(params[:customer][:customer_gr])
      #render plain: @customer_groups.inspect
      @customer.customer_groups=@customer_groups
    end

    if @customer.update(customer_params)
      redirect_to @customer
    else
      render 'edit'
    end
  end
  def destroy
    @customer=Customer.find(params[:id])

    @customer.destroy
      
    redirect_to customers_path

   

  end

  private
    def customer_params
        params.require(:customer).permit(:English_name,:Chinese_name,:description)
    end
end
