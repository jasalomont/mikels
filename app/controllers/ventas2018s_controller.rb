class Ventas2018sController < ApplicationController
  def index
    @ventas2018s = Ventas2018.page(params[:page]).per(10)

    render("ventas2018_templates/index.html.erb")
  end

  def show
    @ventas2018 = Ventas2018.find(params.fetch("id_to_display"))

    render("ventas2018_templates/show.html.erb")
  end

  def new_form
    @ventas2018 = Ventas2018.new

    render("ventas2018_templates/new_form.html.erb")
  end

  def create_row
    @ventas2018 = Ventas2018.new


    if @ventas2018.valid?
      @ventas2018.save

      redirect_back(:fallback_location => "/ventas2018s", :notice => "Ventas2018 created successfully.")
    else
      render("ventas2018_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @ventas2018 = Ventas2018.find(params.fetch("prefill_with_id"))

    render("ventas2018_templates/edit_form.html.erb")
  end

  def update_row
    @ventas2018 = Ventas2018.find(params.fetch("id_to_modify"))


    if @ventas2018.valid?
      @ventas2018.save

      redirect_to("/ventas2018s/#{@ventas2018.id}", :notice => "Ventas2018 updated successfully.")
    else
      render("ventas2018_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @ventas2018 = Ventas2018.find(params.fetch("id_to_remove"))

    @ventas2018.destroy

    redirect_to("/ventas2018s", :notice => "Ventas2018 deleted successfully.")
  end
end
