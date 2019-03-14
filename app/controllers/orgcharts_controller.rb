class OrgchartsController < ApplicationController
  def index
    @q = Orgchart.ransack(params[:q])
    @orgcharts = @q.result(:distinct => true).page(params[:page]).per(10)

    render("orgchart_templates/index.html.erb")
  end

  def show
    @orgchart = Orgchart.find(params.fetch("id_to_display"))

    render("orgchart_templates/show.html.erb")
  end

  def new_form
    @orgchart = Orgchart.new

    render("orgchart_templates/new_form.html.erb")
  end

  def create_row
    @orgchart = Orgchart.new

    @orgchart.department_id = params.fetch("department_id")
    @orgchart.salsterr_id = params.fetch("salsterr_id")
    @orgchart.slprsnid = params.fetch("slprsnid")

    if @orgchart.valid?
      @orgchart.save

      redirect_back(:fallback_location => "/orgcharts", :notice => "Customer segment created successfully.")
    else
      render("orgchart_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @orgchart = Orgchart.find(params.fetch("prefill_with_id"))

    render("orgchart_templates/edit_form.html.erb")
  end

  def update_row
    @orgchart = Orgchart.find(params.fetch("id_to_modify"))

    @orgchart.name = params.fetch("name")
    @orgchart.code = params.fetch("code")
    @orgchart.description = params.fetch("description")

    if @orgchart.valid?
      @orgchart.save

      redirect_to("/orgcharts/#{@orgchart.id}", :notice => "Customer segment updated successfully.")
    else
      render("orgchart_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @orgchart = Orgchart.find(params.fetch("id_to_remove"))

    @orgchart.destroy

    redirect_to("/orgcharts", :notice => "Customer segment deleted successfully.")
  end
end
