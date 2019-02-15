class BudgetsController < ApplicationController
  def index
    @budgets = Budget.page(params[:page]).per(10)

    render("budget_templates/index.html.erb")
  end

  def show
    @budget = Budget.find(params.fetch("id_to_display"))

    render("budget_templates/show.html.erb")
  end

  def new_form
    @budget = Budget.new

    render("budget_templates/new_form.html.erb")
  end

  def create_row
    @budget = Budget.new

    @budget.year = params.fetch("year")
    @budget.custnmbr = params.fetch("custnmbr")
    @budget.salsterr = params.fetch("salsterr")
    @budget.gerente = params.fetch("gerente")
    @budget.slprsnid = params.fetch("slprsnid")
    @budget.sopnumbe = params.fetch("sopnumbe")
    @budget.ene = params.fetch("ene")
    @budget.feb = params.fetch("feb")
    @budget.mar = params.fetch("mar")
    @budget.abr = params.fetch("abr")
    @budget.may = params.fetch("may")
    @budget.jun = params.fetch("jun")
    @budget.jul = params.fetch("jul")
    @budget.ago = params.fetch("ago")
    @budget.oct = params.fetch("oct")
    @budget.sep = params.fetch("sep")
    @budget.nov = params.fetch("nov")
    @budget.dic = params.fetch("dic")
    @budget.total = params.fetch("total")
    @budget.agreement_id = params.fetch("agreement_id")

    if @budget.valid?
      @budget.save

      redirect_back(:fallback_location => "/budgets", :notice => "Budget created successfully.")
    else
      render("budget_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @budget = Budget.find(params.fetch("prefill_with_id"))

    render("budget_templates/edit_form.html.erb")
  end

  def update_row
    @budget = Budget.find(params.fetch("id_to_modify"))

    @budget.year = params.fetch("year")
    @budget.custnmbr = params.fetch("custnmbr")
    @budget.salsterr = params.fetch("salsterr")
    @budget.gerente = params.fetch("gerente")
    @budget.slprsnid = params.fetch("slprsnid")
    @budget.sopnumbe = params.fetch("sopnumbe")
    @budget.ene = params.fetch("ene")
    @budget.feb = params.fetch("feb")
    @budget.mar = params.fetch("mar")
    @budget.abr = params.fetch("abr")
    @budget.may = params.fetch("may")
    @budget.jun = params.fetch("jun")
    @budget.jul = params.fetch("jul")
    @budget.ago = params.fetch("ago")
    @budget.oct = params.fetch("oct")
    @budget.sep = params.fetch("sep")
    @budget.nov = params.fetch("nov")
    @budget.dic = params.fetch("dic")
    @budget.total = params.fetch("total")
    @budget.agreement_id = params.fetch("agreement_id")

    if @budget.valid?
      @budget.save

      redirect_to("/budgets/#{@budget.id}", :notice => "Budget updated successfully.")
    else
      render("budget_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @budget = Budget.find(params.fetch("id_to_remove"))

    @budget.destroy

    redirect_to("/budgets", :notice => "Budget deleted successfully.")
  end
end
