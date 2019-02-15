class NineteensalesController < ApplicationController
  def index
    @nineteensales = Nineteensale.page(params[:page]).per(10)

    render("nineteensale_templates/index.html.erb")
  end

  def show
    @nineteensale = Nineteensale.find(params.fetch("id_to_display"))

    render("nineteensale_templates/show.html.erb")
  end

  def new_form
    @nineteensale = Nineteensale.new

    render("nineteensale_templates/new_form.html.erb")
  end

  def create_row
    @nineteensale = Nineteensale.new

    @nineteensale.custnmbr = params.fetch("custnmbr")
    @nineteensale.salsterr = params.fetch("salsterr")
    @nineteensale.slprsnid = params.fetch("slprsnid")
    @nineteensale.gerente = params.fetch("gerente")
    @nineteensale.sopnumbe = params.fetch("sopnumbe")
    @nineteensale.itemnmbr = params.fetch("itemnmbr")
    @nineteensale.vta = params.fetch("vta")
    @nineteensale.cantidad = params.fetch("cantidad")
    @nineteensale.cost = params.fetch("cost")
    @nineteensale.vta_ene = params.fetch("vta_ene")
    @nineteensale.cantidad_ene = params.fetch("cantidad_ene")
    @nineteensale.cost_ene = params.fetch("cost_ene")
    @nineteensale.vta_feb = params.fetch("vta_feb")
    @nineteensale.cantidad_feb = params.fetch("cantidad_feb")
    @nineteensale.cost_feb = params.fetch("cost_feb")
    @nineteensale.vta_mar = params.fetch("vta_mar")
    @nineteensale.cantidad_mar = params.fetch("cantidad_mar")
    @nineteensale.cost_mar = params.fetch("cost_mar")
    @nineteensale.vta_abr = params.fetch("vta_abr")
    @nineteensale.cantidad_abr = params.fetch("cantidad_abr")
    @nineteensale.cost_abr = params.fetch("cost_abr")
    @nineteensale.vta_may = params.fetch("vta_may")
    @nineteensale.cantidad_may = params.fetch("cantidad_may")
    @nineteensale.cost_may = params.fetch("cost_may")
    @nineteensale.vta_jun = params.fetch("vta_jun")
    @nineteensale.cantidad_jun = params.fetch("cantidad_jun")
    @nineteensale.cost_jun = params.fetch("cost_jun")
    @nineteensale.vta_jul = params.fetch("vta_jul")
    @nineteensale.cantidad_jul = params.fetch("cantidad_jul")
    @nineteensale.cost_jul = params.fetch("cost_jul")
    @nineteensale.vta_ago = params.fetch("vta_ago")
    @nineteensale.cantidad_ago = params.fetch("cantidad_ago")
    @nineteensale.cost_ago = params.fetch("cost_ago")
    @nineteensale.vta_sep = params.fetch("vta_sep")
    @nineteensale.cantidad_sep = params.fetch("cantidad_sep")
    @nineteensale.cost_sep = params.fetch("cost_sep")
    @nineteensale.vta_oct = params.fetch("vta_oct")
    @nineteensale.cantidad_oct = params.fetch("cantidad_oct")
    @nineteensale.cost_oct = params.fetch("cost_oct")
    @nineteensale.vta_nov = params.fetch("vta_nov")
    @nineteensale.cantidad_nov = params.fetch("cantidad_nov")
    @nineteensale.cost_nov = params.fetch("cost_nov")
    @nineteensale.vta_dic = params.fetch("vta_dic")
    @nineteensale.cantidad_dic = params.fetch("cantidad_dic")
    @nineteensale.cost_dic = params.fetch("cost_dic")
    @nineteensale.dia = params.fetch("dia")

    if @nineteensale.valid?
      @nineteensale.save

      redirect_back(:fallback_location => "/nineteensales", :notice => "Nineteensale created successfully.")
    else
      render("nineteensale_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @nineteensale = Nineteensale.find(params.fetch("prefill_with_id"))

    render("nineteensale_templates/edit_form.html.erb")
  end

  def update_row
    @nineteensale = Nineteensale.find(params.fetch("id_to_modify"))

    @nineteensale.custnmbr = params.fetch("custnmbr")
    @nineteensale.salsterr = params.fetch("salsterr")
    @nineteensale.slprsnid = params.fetch("slprsnid")
    @nineteensale.gerente = params.fetch("gerente")
    @nineteensale.sopnumbe = params.fetch("sopnumbe")
    @nineteensale.itemnmbr = params.fetch("itemnmbr")
    @nineteensale.vta = params.fetch("vta")
    @nineteensale.cantidad = params.fetch("cantidad")
    @nineteensale.cost = params.fetch("cost")
    @nineteensale.vta_ene = params.fetch("vta_ene")
    @nineteensale.cantidad_ene = params.fetch("cantidad_ene")
    @nineteensale.cost_ene = params.fetch("cost_ene")
    @nineteensale.vta_feb = params.fetch("vta_feb")
    @nineteensale.cantidad_feb = params.fetch("cantidad_feb")
    @nineteensale.cost_feb = params.fetch("cost_feb")
    @nineteensale.vta_mar = params.fetch("vta_mar")
    @nineteensale.cantidad_mar = params.fetch("cantidad_mar")
    @nineteensale.cost_mar = params.fetch("cost_mar")
    @nineteensale.vta_abr = params.fetch("vta_abr")
    @nineteensale.cantidad_abr = params.fetch("cantidad_abr")
    @nineteensale.cost_abr = params.fetch("cost_abr")
    @nineteensale.vta_may = params.fetch("vta_may")
    @nineteensale.cantidad_may = params.fetch("cantidad_may")
    @nineteensale.cost_may = params.fetch("cost_may")
    @nineteensale.vta_jun = params.fetch("vta_jun")
    @nineteensale.cantidad_jun = params.fetch("cantidad_jun")
    @nineteensale.cost_jun = params.fetch("cost_jun")
    @nineteensale.vta_jul = params.fetch("vta_jul")
    @nineteensale.cantidad_jul = params.fetch("cantidad_jul")
    @nineteensale.cost_jul = params.fetch("cost_jul")
    @nineteensale.vta_ago = params.fetch("vta_ago")
    @nineteensale.cantidad_ago = params.fetch("cantidad_ago")
    @nineteensale.cost_ago = params.fetch("cost_ago")
    @nineteensale.vta_sep = params.fetch("vta_sep")
    @nineteensale.cantidad_sep = params.fetch("cantidad_sep")
    @nineteensale.cost_sep = params.fetch("cost_sep")
    @nineteensale.vta_oct = params.fetch("vta_oct")
    @nineteensale.cantidad_oct = params.fetch("cantidad_oct")
    @nineteensale.cost_oct = params.fetch("cost_oct")
    @nineteensale.vta_nov = params.fetch("vta_nov")
    @nineteensale.cantidad_nov = params.fetch("cantidad_nov")
    @nineteensale.cost_nov = params.fetch("cost_nov")
    @nineteensale.vta_dic = params.fetch("vta_dic")
    @nineteensale.cantidad_dic = params.fetch("cantidad_dic")
    @nineteensale.cost_dic = params.fetch("cost_dic")
    @nineteensale.dia = params.fetch("dia")

    if @nineteensale.valid?
      @nineteensale.save

      redirect_to("/nineteensales/#{@nineteensale.id}", :notice => "Nineteensale updated successfully.")
    else
      render("nineteensale_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @nineteensale = Nineteensale.find(params.fetch("id_to_remove"))

    @nineteensale.destroy

    redirect_to("/nineteensales", :notice => "Nineteensale deleted successfully.")
  end
end
