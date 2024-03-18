class PaymentController < ApplicationController
 def index

 end

 def create
   id=current_user.id
   Userbook.where(user_id: id).destroy_all
   redirect_to root_path, notice: 'Payment done!!!'
 end

end