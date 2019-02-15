class ProductlinesController < ApplicationController
  def index
    @q = Productline.ransack(params[:q])
    @productlines = @q.result(:distinct => true).page(params[:page]).per(10)

    render("productline_templates/index.html.erb")
  end

  def show
    @productline = Productline.find(params.fetch("id_to_display"))

    render("productline_templates/show.html.erb")
  end

  def new_form
    @productline = Productline.new

    render("productline_templates/new_form.html.erb")
  end

  def create_row
    @productline = Productline.new

    @productline.name = params.fetch("name")
    @productline.description = params.fetch("description")
    @productline.subcategory_id = params.fetch("subcategory_id")

    if @productline.valid?
      @productline.save

      redirect_back(:fallback_location => "/productlines", :notice => "Productline created successfully.")
    else
      render("productline_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @productline = Productline.find(params.fetch("prefill_with_id"))

    render("productline_templates/edit_form.html.erb")
  end

  def update_row
    @productline = Productline.find(params.fetch("id_to_modify"))

    @productline.name = params.fetch("name")
    @productline.description = params.fetch("description")
    @productline.subcategory_id = params.fetch("subcategory_id")

    if @productline.valid?
      @productline.save

      redirect_to("/productlines/#{@productline.id}", :notice => "Productline updated successfully.")
    else
      render("productline_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @productline = Productline.find(params.fetch("id_to_remove"))

    @productline.destroy

    redirect_to("/productlines", :notice => "Productline deleted successfully.")
  end
end
