class CustomersController < ApplicationController
  def index
    @q = Customer.ransack(params[:q])
    @customers = @q.result(:distinct => true).page(params[:page]).per(10)

    render("customer_templates/index.html.erb")
  end

  def show
    @customer = Customer.find(params.fetch("id_to_display"))

    render("customer_templates/show.html.erb")
  end

  def new_form
    @customer = Customer.new

    render("customer_templates/new_form.html.erb")
  end

  def create_row
    @customer = Customer.new

    @customer.custnmbr = params.fetch("custnmbr")
    @customer.custname = params.fetch("custname")
    @customer.customer_segment_id = params.fetch("customer_segment_id")

    if @customer.valid?
      @customer.save

      redirect_back(:fallback_location => "/customers", :notice => "Customer created successfully.")
    else
      render("customer_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @customer = Customer.find(params.fetch("prefill_with_id"))

    render("customer_templates/edit_form.html.erb")
  end

  def update_row
    @customer = Customer.find(params.fetch("id_to_modify"))

    @customer.custnmbr = params.fetch("custnmbr")
    @customer.custname = params.fetch("custname")
    @customer.customer_segment_id = params.fetch("customer_segment_id")

    if @customer.valid?
      @customer.save

      redirect_to("/customers/#{@customer.id}", :notice => "Customer updated successfully.")
    else
      render("customer_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @customer = Customer.find(params.fetch("id_to_remove"))

    @customer.destroy

    redirect_to("/customers", :notice => "Customer deleted successfully.")
  end
end
