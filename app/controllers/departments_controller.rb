class DepartmentsController < ApplicationController
  def index
    @q = Department.ransack(params[:q])
    @departments = @q.result(:distinct => true).page(params[:page]).per(10)

    render("department_templates/index.html.erb")
  end

  def show
    @department = Department.find(params.fetch("id_to_display"))

    render("department_templates/show.html.erb")
  end

  def new_form
    @department = Department.new

    render("department_templates/new_form.html.erb")
  end

  def create_row
    @department = Department.new

    @department.code = params.fetch("code")
    @department.name = params.fetch("name")

    if @department.valid?
      @department.save

      redirect_back(:fallback_location => "/departments", :notice => "Department created successfully.")
    else
      render("department_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @department = Department.find(params.fetch("prefill_with_id"))

    render("department_templates/edit_form.html.erb")
  end

  def update_row
    @department = Department.find(params.fetch("id_to_modify"))

    @department.code = params.fetch("code")
    @department.name = params.fetch("name")

    if @department.valid?
      @department.save

      redirect_to("/departments/#{@department.id}", :notice => "Department updated successfully.")
    else
      render("department_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @department = Department.find(params.fetch("id_to_remove"))

    @department.destroy

    redirect_to("/departments", :notice => "Department deleted successfully.")
  end
end
