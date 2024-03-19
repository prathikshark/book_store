class PaymentController < ApplicationController
 def index
  @show_logout_cart=true;

 end

 def create
  
 puts(params)
cnum=params[:card_number]
expiry=params[:expiry_date]
cvv=params[:cvv]

if  card_valid?(cnum) && expiry_valid?(expiry) && cvv_valid?(cvv)
  id=current_user.id
  Userbook.where(user_id: id).destroy_all
  redirect_to root_path ,notice:"Payment done"
else
  redirect_to payment_path ,notice:"Invalid data"
end



private
def card_valid?(cnum)
  cnum.present? && cnum.length == 16 && cnum =~ /\A\d+\z/
end

def expiry_valid?(expire)
  expiry.present? && expiry =~ /\A\d{2}\/\d{2}\z/
end

def cvv_valid?(cvv)
  cvv.present? && cvv.length == 3 && cvv =~ /\A\d+\z/

end

end
end