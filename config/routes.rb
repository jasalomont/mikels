Rails.application.routes.draw do
  # Routes for the Rank resource:

  # CREATE
  get("/ranks/new", { :controller => "ranks", :action => "new_form" })
  post("/create_rank", { :controller => "ranks", :action => "create_row" })

  # READ
  get("/ranks", { :controller => "ranks", :action => "index" })
  get("/ranks/:id_to_display", { :controller => "ranks", :action => "show" })

  # UPDATE
  get("/ranks/:prefill_with_id/edit", { :controller => "ranks", :action => "edit_form" })
  post("/update_rank/:id_to_modify", { :controller => "ranks", :action => "update_row" })

  # DELETE
  get("/delete_rank/:id_to_remove", { :controller => "ranks", :action => "destroy_row" })

  #------------------------------

  # Routes for the Profile resource:

  # CREATE
  get("/profiles/new", { :controller => "profiles", :action => "new_form" })
  post("/create_profile", { :controller => "profiles", :action => "create_row" })

  # READ
  get("/profiles", { :controller => "profiles", :action => "index" })
  get("/profiles/:id_to_display", { :controller => "profiles", :action => "show" })

  # UPDATE
  get("/profiles/:prefill_with_id/edit", { :controller => "profiles", :action => "edit_form" })
  post("/update_profile/:id_to_modify", { :controller => "profiles", :action => "update_row" })

  # DELETE
  get("/delete_profile/:id_to_remove", { :controller => "profiles", :action => "destroy_row" })

  #------------------------------

  devise_for :users
  # Routes for the User resource:

  # READ
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:id_to_display", { :controller => "users", :action => "show" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
