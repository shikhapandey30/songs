class PaymentsController < InheritedResources::Base
	#before_action :authenticate_user!
	

  private

    def payment_params
      params.require(:payment).permit(:user_id, :amount, :payment_date, :due_date, :status)
    end
end

