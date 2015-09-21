class PaymentsController < ApplicationController

 def new
    @payment = Payment.new
    @hotel = User.find(params[:user_id])
  end

  def create
    user = User.find(params[:user_id])
    payment = Review.new(params.require(:payment).permit(:description, :rating))

    user.payments << payment

    if payment.save
      redirect_to user
    else
      render 'new'
    end
  end

  def show

  end

end
