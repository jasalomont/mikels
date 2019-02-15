Rails.application.routes.draw do
  # Routes for the Subcategory resource:

  # CREATE
  get("/subcategories/new", { :controller => "subcategories", :action => "new_form" })
  post("/create_subcategory", { :controller => "subcategories", :action => "create_row" })

  # READ
  get("/subcategories", { :controller => "subcategories", :action => "index" })
  get("/subcategories/:id_to_display", { :controller => "subcategories", :action => "show" })

  # UPDATE
  get("/subcategories/:prefill_with_id/edit", { :controller => "subcategories", :action => "edit_form" })
  post("/update_subcategory/:id_to_modify", { :controller => "subcategories", :action => "update_row" })

  # DELETE
  get("/delete_subcategory/:id_to_remove", { :controller => "subcategories", :action => "destroy_row" })

  #------------------------------

  # Routes for the Category resource:

  # CREATE
  get("/categories/new", { :controller => "categories", :action => "new_form" })
  post("/create_category", { :controller => "categories", :action => "create_row" })

  # READ
  get("/categories", { :controller => "categories", :action => "index" })
  get("/categories/:id_to_display", { :controller => "categories", :action => "show" })

  # UPDATE
  get("/categories/:prefill_with_id/edit", { :controller => "categories", :action => "edit_form" })
  post("/update_category/:id_to_modify", { :controller => "categories", :action => "update_row" })

  # DELETE
  get("/delete_category/:id_to_remove", { :controller => "categories", :action => "destroy_row" })

  #------------------------------

  # Routes for the Brand resource:

  # CREATE
  get("/brands/new", { :controller => "brands", :action => "new_form" })
  post("/create_brand", { :controller => "brands", :action => "create_row" })

  # READ
  get("/brands", { :controller => "brands", :action => "index" })
  get("/brands/:id_to_display", { :controller => "brands", :action => "show" })

  # UPDATE
  get("/brands/:prefill_with_id/edit", { :controller => "brands", :action => "edit_form" })
  post("/update_brand/:id_to_modify", { :controller => "brands", :action => "update_row" })

  # DELETE
  get("/delete_brand/:id_to_remove", { :controller => "brands", :action => "destroy_row" })

  #------------------------------

  # Routes for the Product resource:

  # CREATE
  get("/products/new", { :controller => "products", :action => "new_form" })
  post("/create_product", { :controller => "products", :action => "create_row" })

  # READ
  get("/products", { :controller => "products", :action => "index" })
  get("/products/:id_to_display", { :controller => "products", :action => "show" })

  # UPDATE
  get("/products/:prefill_with_id/edit", { :controller => "products", :action => "edit_form" })
  post("/update_product/:id_to_modify", { :controller => "products", :action => "update_row" })

  # DELETE
  get("/delete_product/:id_to_remove", { :controller => "products", :action => "destroy_row" })

  #------------------------------

  # Routes for the Solution resource:

  # CREATE
  get("/solutions/new", { :controller => "solutions", :action => "new_form" })
  post("/create_solution", { :controller => "solutions", :action => "create_row" })

  # READ
  get("/solutions", { :controller => "solutions", :action => "index" })
  get("/solutions/:id_to_display", { :controller => "solutions", :action => "show" })

  # UPDATE
  get("/solutions/:prefill_with_id/edit", { :controller => "solutions", :action => "edit_form" })
  post("/update_solution/:id_to_modify", { :controller => "solutions", :action => "update_row" })

  # DELETE
  get("/delete_solution/:id_to_remove", { :controller => "solutions", :action => "destroy_row" })

  #------------------------------

  # Routes for the Complaintype resource:

  # CREATE
  get("/complaintypes/new", { :controller => "complaintypes", :action => "new_form" })
  post("/create_complaintype", { :controller => "complaintypes", :action => "create_row" })

  # READ
  get("/complaintypes", { :controller => "complaintypes", :action => "index" })
  get("/complaintypes/:id_to_display", { :controller => "complaintypes", :action => "show" })

  # UPDATE
  get("/complaintypes/:prefill_with_id/edit", { :controller => "complaintypes", :action => "edit_form" })
  post("/update_complaintype/:id_to_modify", { :controller => "complaintypes", :action => "update_row" })

  # DELETE
  get("/delete_complaintype/:id_to_remove", { :controller => "complaintypes", :action => "destroy_row" })

  #------------------------------

  # Routes for the Department resource:

  # CREATE
  get("/departments/new", { :controller => "departments", :action => "new_form" })
  post("/create_department", { :controller => "departments", :action => "create_row" })

  # READ
  get("/departments", { :controller => "departments", :action => "index" })
  get("/departments/:id_to_display", { :controller => "departments", :action => "show" })

  # UPDATE
  get("/departments/:prefill_with_id/edit", { :controller => "departments", :action => "edit_form" })
  post("/update_department/:id_to_modify", { :controller => "departments", :action => "update_row" })

  # DELETE
  get("/delete_department/:id_to_remove", { :controller => "departments", :action => "destroy_row" })

  #------------------------------

  # Routes for the Complain resource:

  # CREATE
  get("/complains/new", { :controller => "complains", :action => "new_form" })
  post("/create_complain", { :controller => "complains", :action => "create_row" })

  # READ
  get("/complains", { :controller => "complains", :action => "index" })
  get("/complains/:id_to_display", { :controller => "complains", :action => "show" })

  # UPDATE
  get("/complains/:prefill_with_id/edit", { :controller => "complains", :action => "edit_form" })
  post("/update_complain/:id_to_modify", { :controller => "complains", :action => "update_row" })

  # DELETE
  get("/delete_complain/:id_to_remove", { :controller => "complains", :action => "destroy_row" })

  #------------------------------

  # Routes for the Budget resource:

  # CREATE
  get("/budgets/new", { :controller => "budgets", :action => "new_form" })
  post("/create_budget", { :controller => "budgets", :action => "create_row" })

  # READ
  get("/budgets", { :controller => "budgets", :action => "index" })
  get("/budgets/:id_to_display", { :controller => "budgets", :action => "show" })

  # UPDATE
  get("/budgets/:prefill_with_id/edit", { :controller => "budgets", :action => "edit_form" })
  post("/update_budget/:id_to_modify", { :controller => "budgets", :action => "update_row" })

  # DELETE
  get("/delete_budget/:id_to_remove", { :controller => "budgets", :action => "destroy_row" })

  #------------------------------

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
