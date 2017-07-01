class OfflinePaymentsController < InheritedResources::Base

	def create
		@offline_payment = OfflinePayment.new(offline_payment_params)
		@offline_payment.save
		redirect_to @offline_payment
	end

	def show
		@offline_payment  = OfflinePayment.find(params[:id])
	end

  private

    def offline_payment_params
      params.require(:offline_payment).permit(:cash, :check, :customer_id, :plan_id,:check_number,:bank_name)
    end
end
