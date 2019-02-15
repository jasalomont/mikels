class RanksController < ApplicationController
  def index
    @ranks = Rank.page(params[:page]).per(10)

    render("rank_templates/index.html.erb")
  end

  def show
    @rank = Rank.find(params.fetch("id_to_display"))

    render("rank_templates/show.html.erb")
  end

  def new_form
    @rank = Rank.new

    render("rank_templates/new_form.html.erb")
  end

  def create_row
    @rank = Rank.new

    @rank.title = params.fetch("title")
    @rank.level = params.fetch("level")
    @rank.description = params.fetch("description")
    @rank.department_id = params.fetch("department_id")

    if @rank.valid?
      @rank.save

      redirect_back(:fallback_location => "/ranks", :notice => "Rank created successfully.")
    else
      render("rank_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @rank = Rank.find(params.fetch("prefill_with_id"))

    render("rank_templates/edit_form.html.erb")
  end

  def update_row
    @rank = Rank.find(params.fetch("id_to_modify"))

    @rank.title = params.fetch("title")
    @rank.level = params.fetch("level")
    @rank.description = params.fetch("description")
    @rank.department_id = params.fetch("department_id")

    if @rank.valid?
      @rank.save

      redirect_to("/ranks/#{@rank.id}", :notice => "Rank updated successfully.")
    else
      render("rank_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @rank = Rank.find(params.fetch("id_to_remove"))

    @rank.destroy

    redirect_to("/ranks", :notice => "Rank deleted successfully.")
  end
end
