class PaymentsController < ApplicationController
  before_action :set_finding

  def new
  end

  def create
    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email:  params[:stripeEmail]
    )

    charge = Stripe::Charge.create({
      customer:     customer.id,   # You should store this customer id and re-use it.
      amount:       (@finding.amount_cents_cents / 100 ).to_f,
      description:  "Donation to #{@finding.cause.name} for finding #{@finding.id}",
      currency:     'eur'
    })

    @finding.update(payment: charge.to_json, state: 'paid')
    redirect_to finding_path(@finding)

  rescue Stripe::CardError => e
    flash[:alert] = e.message
    redirect_to new_finding_payment_path(@finding)
  end

  private

  def set_finding
    @finding = Finding.includes(:item).where(items: { user_id: current_user.id }, state: 'pending').find(params[:finding_id])
    authorize @finding
  end
end
