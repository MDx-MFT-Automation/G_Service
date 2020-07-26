class UpdatesController < ApplicationController
    def create
        @customer =Customer.find(params[:customer_id])
        @update=@customer.updates.create(update_params)
        redirect_to customer_path(@customer)
    end
    def destroy
        @customer =Customer.find(params[:customer_id])
        @update=@customer.updates.find(params[:id])
        @update.destroy
        redirect_to customer_path(@customer)
    end
    def edit
        @customer =Customer.find(params[:customer_id])
        @update=@customer.updates.find(params[:id])
    end
    def update
        @customer =Customer.find(params[:customer_id])
        @update=@customer.updates.find(params[:id])
        if @update.update(update_params)
            redirect_to customer_path(@customer)
        else
            render 'edit'
        end
        
    end

    

    private
        def update_params
            params.require(:update).permit(:comment,:happened_time)
        end
end
