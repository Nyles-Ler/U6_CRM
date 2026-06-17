class CustomersController < ApplicationController

  # GET /customers
  def index
    @customers = Customer.all
  end

  # GET /customers/alphabetized
  def alphabetized
    @customers = Customer.order(:full_name)
  end

  # GET /customers/missing_email
  def missing_email
    @customers = Customer.where(email_address: [nil, ""])
  end

end
