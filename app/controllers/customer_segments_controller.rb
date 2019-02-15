class CustomerSegmentsController < ApplicationController
  def index
    @q = CustomerSegment.ransack(params[:q])
    @customer_segments = @q.result(:distinct => true).page(params[:page]).per(10)

    render("customer_segment_templates/index.html.erb")
  end

  def show
    @customer_segment = CustomerSegment.find(params.fetch("id_to_display"))

    render("customer_segment_templates/show.html.erb")
  end

  def new_form
    @customer_segment = CustomerSegment.new

    render("customer_segment_templates/new_form.html.erb")
  end

  def create_row
    @customer_segment = CustomerSegment.new

    @customer_segment.name = params.fetch("name")
    @customer_segment.code = params.fetch("code")
    @customer_segment.description = params.fetch("description")

    if @customer_segment.valid?
      @customer_segment.save

      redirect_back(:fallback_location => "/customer_segments", :notice => "Customer segment created successfully.")
    else
      render("customer_segment_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @customer_segment = CustomerSegment.find(params.fetch("prefill_with_id"))

    render("customer_segment_templates/edit_form.html.erb")
  end

  def update_row
    @customer_segment = CustomerSegment.find(params.fetch("id_to_modify"))

    @customer_segment.name = params.fetch("name")
    @customer_segment.code = params.fetch("code")
    @customer_segment.description = params.fetch("description")

    if @customer_segment.valid?
      @customer_segment.save

      redirect_to("/customer_segments/#{@customer_segment.id}", :notice => "Customer segment updated successfully.")
    else
      render("customer_segment_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @customer_segment = CustomerSegment.find(params.fetch("id_to_remove"))

    @customer_segment.destroy

    redirect_to("/customer_segments", :notice => "Customer segment deleted successfully.")
  end
end
