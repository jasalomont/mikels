class ComplaintypesController < ApplicationController
  def index
    @q = Complaintype.ransack(params[:q])
    @complaintypes = @q.result(:distinct => true).page(params[:page]).per(10)

    render("complaintype_templates/index.html.erb")
  end

  def show
    @complaintype = Complaintype.find(params.fetch("id_to_display"))

    render("complaintype_templates/show.html.erb")
  end

  def new_form
    @complaintype = Complaintype.new

    render("complaintype_templates/new_form.html.erb")
  end

  def create_row
    @complaintype = Complaintype.new

    @complaintype.title = params.fetch("title")
    @complaintype.code = params.fetch("code")
    @complaintype.description = params.fetch("description")

    if @complaintype.valid?
      @complaintype.save

      redirect_back(:fallback_location => "/complaintypes", :notice => "Complaintype created successfully.")
    else
      render("complaintype_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @complaintype = Complaintype.find(params.fetch("prefill_with_id"))

    render("complaintype_templates/edit_form.html.erb")
  end

  def update_row
    @complaintype = Complaintype.find(params.fetch("id_to_modify"))

    @complaintype.title = params.fetch("title")
    @complaintype.code = params.fetch("code")
    @complaintype.description = params.fetch("description")

    if @complaintype.valid?
      @complaintype.save

      redirect_to("/complaintypes/#{@complaintype.id}", :notice => "Complaintype updated successfully.")
    else
      render("complaintype_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @complaintype = Complaintype.find(params.fetch("id_to_remove"))

    @complaintype.destroy

    redirect_to("/complaintypes", :notice => "Complaintype deleted successfully.")
  end
end
