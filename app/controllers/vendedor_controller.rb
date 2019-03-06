class VendedorController < ApplicationController

  def show

    profiles = Profile.where("slprsnid"=>current_user.username )
    @profile = profiles.first

    @q = Customer.ransack(params[:q])
    @customers = @q.result(:distinct => true).page(params[:page]).per(10)



    render("ventas/vendedor.html.erb")
  end

end
