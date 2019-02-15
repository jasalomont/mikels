class SalsterrsController < ApplicationController
  def index
    @salsterrs = Salsterr.page(params[:page]).per(10)

    render("salsterr_templates/index.html.erb")
  end

  def show
    @salsterr = Salsterr.find(params.fetch("id_to_display"))

    render("salsterr_templates/show.html.erb")
  end

  def new_form
    @salsterr = Salsterr.new

    render("salsterr_templates/new_form.html.erb")
  end

  def create_row
    @salsterr = Salsterr.new

    @salsterr.name = params.fetch("name")
    @salsterr.code = params.fetch("code")

    if @salsterr.valid?
      @salsterr.save

      redirect_back(:fallback_location => "/salsterrs", :notice => "Salsterr created successfully.")
    else
      render("salsterr_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @salsterr = Salsterr.find(params.fetch("prefill_with_id"))

    render("salsterr_templates/edit_form.html.erb")
  end

  def update_row
    @salsterr = Salsterr.find(params.fetch("id_to_modify"))

    @salsterr.name = params.fetch("name")
    @salsterr.code = params.fetch("code")

    if @salsterr.valid?
      @salsterr.save

      redirect_to("/salsterrs/#{@salsterr.id}", :notice => "Salsterr updated successfully.")
    else
      render("salsterr_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @salsterr = Salsterr.find(params.fetch("id_to_remove"))

    @salsterr.destroy

    redirect_to("/salsterrs", :notice => "Salsterr deleted successfully.")
  end
end
