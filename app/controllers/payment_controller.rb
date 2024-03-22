class PaymentController < ApplicationController
 def index
  @show_logout_cart=true;
  @payment=Payment.new
 end

  def create
   @payment=Payment.new(payment_params)
   byebug
   if @payment.save
    redirect_to payment_path, notice: "Payment successful"
   else
    render "new" ,notice: "Payment failed"
  end

end

  private
  def payment_params
    params.require(:payment).permit(:card_number, :expiry, :cvv)
  end

  end


