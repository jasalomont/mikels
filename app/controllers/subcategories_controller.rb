class SubcategoriesController < ApplicationController
  def index
    @subcategories = Subcategory.all

    render("subcategory_templates/index.html.erb")
  end

  def show
    @subcategory = Subcategory.find(params.fetch("id_to_display"))

    render("subcategory_templates/show.html.erb")
  end

  def new_form
    @subcategory = Subcategory.new

    render("subcategory_templates/new_form.html.erb")
  end

  def create_row
    @subcategory = Subcategory.new

    @subcategory.category_id = params.fetch("category_id")
    @subcategory.name = params.fetch("name")
    @subcategory.description = params.fetch("description")

    if @subcategory.valid?
      @subcategory.save

      redirect_back(:fallback_location => "/subcategories", :notice => "Subcategory created successfully.")
    else
      render("subcategory_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @subcategory = Subcategory.find(params.fetch("prefill_with_id"))

    render("subcategory_templates/edit_form.html.erb")
  end

  def update_row
    @subcategory = Subcategory.find(params.fetch("id_to_modify"))

    @subcategory.category_id = params.fetch("category_id")
    @subcategory.name = params.fetch("name")
    @subcategory.description = params.fetch("description")

    if @subcategory.valid?
      @subcategory.save

      redirect_to("/subcategories/#{@subcategory.id}", :notice => "Subcategory updated successfully.")
    else
      render("subcategory_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @subcategory = Subcategory.find(params.fetch("id_to_remove"))

    @subcategory.destroy

    redirect_to("/subcategories", :notice => "Subcategory deleted successfully.")
  end
end
