class CustomersController < ApplicationController

  # GET /customers
  def index
    @customers = Customer.all
  end

  # GET /customers/alphabetized
  def alphabetized
    @customers = Customer.order(:full_name)
  end
end
