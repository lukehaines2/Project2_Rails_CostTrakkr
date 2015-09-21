class PaymentsController < ApplicationController

  def index
    @payments = Payment.all
  end

 def new
    @payment = Payment.new
    # @user_payment = User.find(params[:user_id])
  end

  def create
    user = User.find(params[:user_id])
    payment = Payment.new(params.require(:payment).permit(:amount))

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
