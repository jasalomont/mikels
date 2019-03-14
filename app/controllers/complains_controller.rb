class ComplainsController < ApplicationController
  def index
    @q = Complain.ransack(params[:q])
    @complains = @q.result(:distinct => true).page(params[:page]).per(10)

    render("complain_templates/index.html.erb")
  end

  def indexspec
    @q = Complain.where("department_id"=>params.fetch("id_to_display")).ransack(params[:q])
    @complains = @q.result(:distinct => true).page(params[:page]).per(10)

    render("complain_templates/indexspec.html.erb")
  end

  def indexuser
    @q2 = Complain.ransack(params[:q])
    @complains = @q2.result(:distinct => true).page(params[:page]).per(10)

    render("complain_templates/indexuser.html.erb")
  end

  def show
    @complain = Complain.find(params.fetch("id_to_display"))
    if @complain.solution != nil
      @solution = Solution.where("complain_id"=>params.fetch("id_to_display"))

    else
      @solution = ""
    end

    render("complain_templates/show.html.erb")
  end

  def new_form
    @complain = Complain.new
    @complaintype
    render("complain_templates/new_form.html.erb")
  end

  def create_row
    @complain = Complain.new

    @complain.user_id = params.fetch("user_id")
    @complain.complaintype_id = params.fetch("complaintype_id")
    @complain.solved = params.fetch("solved")
    @complain.description = params.fetch("description")
    @complain.department_id = params.fetch("department_id")
    @complain.itemnmbr = params.fetch("itemnmbr")
    @complain.sopnumbe = params.fetch("sopnumbe")
    @complain.profile_id = params.fetch("profile_id")
    @complain.rating = params.fetch("rating")
    @complain.status = params.fetch("status")
    @complain.title = params.fetch("title")

    if @complain.valid?
      @complain.save

      redirect_to("/complains/#{@complain.id}", :notice => "Ticket creado exitosamente.")
    else
      render("complain_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @complain = Complain.find(params.fetch("prefill_with_id"))

    render("complain_templates/edit_form.html.erb")
  end

  def update_row
    @complain = Complain.find(params.fetch("id_to_modify"))

    @complain.user_id = params.fetch("user_id")
    @complain.complaintype_id = params.fetch("complaintype_id")
    @complain.solved = params.fetch("solved")
    @complain.description = params.fetch("description")
    @complain.department_id = params.fetch("department_id")
    @complain.itemnmbr = params.fetch("itemnmbr")
    @complain.sopnumbe = params.fetch("sopnumbe")
    @complain.profile_id = params.fetch("profile_id")
    @complain.rating = params.fetch("rating")
    @complain.status = params.fetch("status")
    @complain.title = params.fetch("title")

    if @complain.valid?
      @complain.save

      redirect_to("/complains/#{@complain.id}", :notice => "Complain updated successfully.")
    else
      render("complain_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @complain = Complain.find(params.fetch("id_to_remove"))

    @complain.destroy

    redirect_to("/complainuser", :notice => "Complain deleted successfully.")
  end
end
