class PaymentsController < ApplicationController
  before_action :set_event

  def index
    @payments = Payment.all
  end

  def new
    @payment = Payment.new
  end

  def create
    @payment = @event.payments.new(params.require(:payment).permit(:amount, :user_id, :event_id))

    if @payment.save
      redirect_to @event
    else
      render :new
    end
  end

  def show

  end

  private
    def set_event
      @event = Event.find(params[:event_id])
    end

end
