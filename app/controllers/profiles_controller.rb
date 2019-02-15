class ProfilesController < ApplicationController
  def index
    @profiles = Profile.page(params[:page]).per(10)

    render("profile_templates/index.html.erb")
  end

  def show
    @profile = Profile.find(params.fetch("id_to_display"))

    render("profile_templates/show.html.erb")
  end

  def new_form
    @profile = Profile.new

    render("profile_templates/new_form.html.erb")
  end

  def create_row
    @profile = Profile.new

    @profile.user_id = params.fetch("user_id")
    @profile.name = params.fetch("name")
    @profile.last_name = params.fetch("last_name")
    @profile.nick_name = params.fetch("nick_name")
    @profile.phone = params.fetch("phone")
    @profile.mobile = params.fetch("mobile")
    @profile.profile_pic = params.fetch("profile_pic") if params.key?("profile_pic")
    @profile.rank_id = params.fetch("rank_id")
    @profile.city_base = params.fetch("city_base")
    @profile.address = params.fetch("address")
    @profile.active = params.fetch("active")
    @profile.slprsnid = params.fetch("slprsnid")
    @profile.salsterr_id = params.fetch("salsterr_id")
    @profile.start = params.fetch("start")
    @profile.full_name = params.fetch("full_name")

    if @profile.valid?
      @profile.save

      redirect_back(:fallback_location => "/profiles", :notice => "Profile created successfully.")
    else
      render("profile_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @profile = Profile.find(params.fetch("prefill_with_id"))

    render("profile_templates/edit_form.html.erb")
  end

  def update_row
    @profile = Profile.find(params.fetch("id_to_modify"))

    @profile.user_id = params.fetch("user_id")
    @profile.name = params.fetch("name")
    @profile.last_name = params.fetch("last_name")
    @profile.nick_name = params.fetch("nick_name")
    @profile.phone = params.fetch("phone")
    @profile.mobile = params.fetch("mobile")
    @profile.profile_pic = params.fetch("profile_pic") if params.key?("profile_pic")
    @profile.rank_id = params.fetch("rank_id")
    @profile.city_base = params.fetch("city_base")
    @profile.address = params.fetch("address")
    @profile.active = params.fetch("active")
    @profile.slprsnid = params.fetch("slprsnid")
    @profile.salsterr_id = params.fetch("salsterr_id")
    @profile.start = params.fetch("start")
    @profile.full_name = params.fetch("full_name")

    if @profile.valid?
      @profile.save

      redirect_to("/profiles/#{@profile.id}", :notice => "Profile updated successfully.")
    else
      render("profile_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @profile = Profile.find(params.fetch("id_to_remove"))

    @profile.destroy

    redirect_to("/profiles", :notice => "Profile deleted successfully.")
  end
end
