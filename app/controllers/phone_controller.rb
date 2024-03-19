class PhoneController < ApplicationController

    def index
    end

    def new
        render 'phone/create'
    end

    def search
        @phone = Phone.find_by(phone_number: params[:phone_number])
        if @phone
          # Optionally, you can redirect to a show page or render a specific view here
          render :show
        else
          flash[:error] = "Putty configuration not found"
          render :show
        end
    end

    def create
        @phone = Phone.new(phone_params)
        if @phone.save
          redirect_to @phone, notice: 'Phone record was successfully created.'
        else
          render :new
        end
      end
    
      private
    
    def phone_params
        params.require(:phone).permit(:phone_number, :access, :message)
    end

end
