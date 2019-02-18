class VendedorController < ApplicationController

  def show

    profiles = Profile.where("slprsnid"=>current_user.username )
    @profile = profiles.first
    render("ventas/vendedor.html.erb")
  end

end
