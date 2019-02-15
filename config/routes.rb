Rails.application.routes.draw do
  # Routes for the Nineteensale resource:

  # CREATE
  get("/nineteensales/new", { :controller => "nineteensales", :action => "new_form" })
  post("/create_nineteensale", { :controller => "nineteensales", :action => "create_row" })

  # READ
  get("/nineteensales", { :controller => "nineteensales", :action => "index" })
  get("/nineteensales/:id_to_display", { :controller => "nineteensales", :action => "show" })

  # UPDATE
  get("/nineteensales/:prefill_with_id/edit", { :controller => "nineteensales", :action => "edit_form" })
  post("/update_nineteensale/:id_to_modify", { :controller => "nineteensales", :action => "update_row" })

  # DELETE
  get("/delete_nineteensale/:id_to_remove", { :controller => "nineteensales", :action => "destroy_row" })

  #------------------------------

  # Routes for the Ventas2018 resource:

  # CREATE
  get("/ventas2018s/new", { :controller => "ventas2018s", :action => "new_form" })
  post("/create_ventas2018", { :controller => "ventas2018s", :action => "create_row" })

  # READ
  get("/ventas2018s", { :controller => "ventas2018s", :action => "index" })
  get("/ventas2018s/:id_to_display", { :controller => "ventas2018s", :action => "show" })

  # UPDATE
  get("/ventas2018s/:prefill_with_id/edit", { :controller => "ventas2018s", :action => "edit_form" })
  post("/update_ventas2018/:id_to_modify", { :controller => "ventas2018s", :action => "update_row" })

  # DELETE
  get("/delete_ventas2018/:id_to_remove", { :controller => "ventas2018s", :action => "destroy_row" })

  #------------------------------

  # Routes for the Region resource:

  # CREATE
  get("/regions/new", { :controller => "regions", :action => "new_form" })
  post("/create_region", { :controller => "regions", :action => "create_row" })

  # READ
  get("/regions", { :controller => "regions", :action => "index" })
  get("/regions/:id_to_display", { :controller => "regions", :action => "show" })

  # UPDATE
  get("/regions/:prefill_with_id/edit", { :controller => "regions", :action => "edit_form" })
  post("/update_region/:id_to_modify", { :controller => "regions", :action => "update_row" })

  # DELETE
  get("/delete_region/:id_to_remove", { :controller => "regions", :action => "destroy_row" })

  #------------------------------

  # Routes for the Salsterr resource:

  # CREATE
  get("/salsterrs/new", { :controller => "salsterrs", :action => "new_form" })
  post("/create_salsterr", { :controller => "salsterrs", :action => "create_row" })

  # READ
  get("/salsterrs", { :controller => "salsterrs", :action => "index" })
  get("/salsterrs/:id_to_display", { :controller => "salsterrs", :action => "show" })

  # UPDATE
  get("/salsterrs/:prefill_with_id/edit", { :controller => "salsterrs", :action => "edit_form" })
  post("/update_salsterr/:id_to_modify", { :controller => "salsterrs", :action => "update_row" })

  # DELETE
  get("/delete_salsterr/:id_to_remove", { :controller => "salsterrs", :action => "destroy_row" })

  #------------------------------

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
