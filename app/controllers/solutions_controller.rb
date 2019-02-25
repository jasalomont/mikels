class SolutionsController < ApplicationController
  def index
    @q = Solution.ransack(params[:q])
    @solutions = @q.result(:distinct => true).page(params[:page]).per(10)

    render("solution_templates/index.html.erb")
  end

  def show
    @solution = Solution.find(params.fetch("id_to_display"))

    render("solution_templates/show.html.erb")
  end

  def new_form
    @solution = Solution.new
    @complainid = params.fetch(:id_to_create)
    @complain = Complain.find(params.fetch("id_to_create"))

    render("solution_templates/new_form.html.erb")
  end

  def create_row
    @solution = Solution.new

    @solution.complain_id = params.fetch("complain_id")
    @solution.message = params.fetch("message")
    @solution.close = params.fetch("close")
    @solution.user_id = params.fetch("user_id")
    @solution.like = params.fetch("like")
    @solution.scomment_id = params.fetch("scomment_id")
    @solution.title = params.fetch("title")

    if @solution.valid?
      @solution.save

      redirect_to("/complains/#{@solution.complain_id}", :notice => "Solution created successfully.")
    else
      render("solution_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @solution = Solution.find(params.fetch("prefill_with_id"))

    render("solution_templates/edit_form.html.erb")
  end

  def update_row
    @solution = Solution.find(params.fetch("id_to_modify"))

    @solution.complain_id = params.fetch("complain_id")
    @solution.message = params.fetch("message")
    @solution.close = params.fetch("close")
    @solution.user_id = params.fetch("user_id")
    @solution.like = params.fetch("like")
    @solution.scomment_id = params.fetch("scomment_id")
    @solution.title = params.fetch("title")

    if @solution.valid?
      @solution.save

      redirect_to("/solutions/#{@solution.id}", :notice => "Solution updated successfully.")
    else
      render("solution_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @solution = Solution.find(params.fetch("id_to_remove"))

    @solution.destroy

    redirect_to("/solutions", :notice => "Solution deleted successfully.")
  end
end
