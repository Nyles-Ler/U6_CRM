class CustomersController < ApplicationController

  # GET /customers loads every customer from the database
  def index
    @customers = Customer.all
  end

  # GET /customers/alphabetized sorts customers alphabetically
  def alphabetized
    @customers = Customer.order(:full_name)
  end

  # GET /customers/missing_email finds customers without an email address
  def missing_email
    @customers = Customer.where(email_address: [nil, ""])
  end

end
