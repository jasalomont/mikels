class AgreementsController < ApplicationController
  def index
    @agreements = Agreement.all

    render("agreement_templates/index.html.erb")
  end

  def show
    @agreement = Agreement.find(params.fetch("id_to_display"))

    render("agreement_templates/show.html.erb")
  end

  def new_form
    @agreement = Agreement.new

    render("agreement_templates/new_form.html.erb")
  end

  def create_row
    @agreement = Agreement.new

    @agreement.custnmbr = params.fetch("custnmbr")
    @agreement.timespan = params.fetch("timespan")
    @agreement.start = params.fetch("start")
    @agreement.end = params.fetch("end")
    @agreement.amount_level1 = params.fetch("amount_level1")
    @agreement.category = params.fetch("category")
    @agreement.pcnt_level1 = params.fetch("pcnt_level1")
    @agreement.pcnt_level2 = params.fetch("pcnt_level2")
    @agreement.pcnt_level3 = params.fetch("pcnt_level3")
    @agreement.amount_level2 = params.fetch("amount_level2")
    @agreement.amount_level3 = params.fetch("amount_level3")

    if @agreement.valid?
      @agreement.save

      redirect_back(:fallback_location => "/agreements", :notice => "Agreement created successfully.")
    else
      render("agreement_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @agreement = Agreement.find(params.fetch("prefill_with_id"))

    render("agreement_templates/edit_form.html.erb")
  end

  def update_row
    @agreement = Agreement.find(params.fetch("id_to_modify"))

    @agreement.custnmbr = params.fetch("custnmbr")
    @agreement.timespan = params.fetch("timespan")
    @agreement.start = params.fetch("start")
    @agreement.end = params.fetch("end")
    @agreement.amount_level1 = params.fetch("amount_level1")
    @agreement.category = params.fetch("category")
    @agreement.pcnt_level1 = params.fetch("pcnt_level1")
    @agreement.pcnt_level2 = params.fetch("pcnt_level2")
    @agreement.pcnt_level3 = params.fetch("pcnt_level3")
    @agreement.amount_level2 = params.fetch("amount_level2")
    @agreement.amount_level3 = params.fetch("amount_level3")

    if @agreement.valid?
      @agreement.save

      redirect_to("/agreements/#{@agreement.id}", :notice => "Agreement updated successfully.")
    else
      render("agreement_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @agreement = Agreement.find(params.fetch("id_to_remove"))

    @agreement.destroy

    redirect_to("/agreements", :notice => "Agreement deleted successfully.")
  end
end
