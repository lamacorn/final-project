Rails.application.routes.draw do
  devise_for :coaches
  # Routes for the Product concern resource:

  # CREATE
  match("/new_product_concern_form", { :controller => "product_concerns", :action => "blank_form", :via => "get" })
  match("/insert_product_concern_record", { :controller => "product_concerns", :action => "save_new_info", :via => "post" })

  # READ
  match("/product_concerns", { :controller => "product_concerns", :action => "list", :via => "get" })
  match("/product_concerns/:id_to_display", { :controller => "product_concerns", :action => "details", :via => "get" })

  # UPDATE
  match("/existing_product_concern_form/:id_to_prefill", { :controller => "product_concerns", :action => "prefilled_form", :via => "get" })
  match("/update_product_concern_record/:id_to_modify", { :controller => "product_concerns", :action => "save_edits", :via => "post" })

  # DELETE
  match("/delete_product_concern/:id_to_remove", { :controller => "product_concerns", :action => "remove_row", :via => "get" })

  #------------------------------

  # Routes for the Customer concern resource:

  # CREATE
  match("/new_customer_concern_form", { :controller => "customer_concerns", :action => "blank_form", :via => "get" })
  match("/insert_customer_concern_record", { :controller => "customer_concerns", :action => "save_new_info", :via => "post" })

  # READ
  match("/customer_concerns", { :controller => "customer_concerns", :action => "list", :via => "get" })
  match("/customer_concerns/:id_to_display", { :controller => "customer_concerns", :action => "details", :via => "get" })

  # UPDATE
  match("/existing_customer_concern_form/:id_to_prefill", { :controller => "customer_concerns", :action => "prefilled_form", :via => "get" })
  match("/update_customer_concern_record/:id_to_modify", { :controller => "customer_concerns", :action => "save_edits", :via => "post" })

  # DELETE
  match("/delete_customer_concern/:id_to_remove", { :controller => "customer_concerns", :action => "remove_row", :via => "get" })

  #------------------------------

  # Routes for the Concern resource:

  # CREATE
  match("/new_concern_form", { :controller => "concerns", :action => "blank_form", :via => "get" })
  match("/insert_concern_record", { :controller => "concerns", :action => "save_new_info", :via => "post" })

  # READ
  match("/concerns", { :controller => "concerns", :action => "list", :via => "get" })
  match("/concerns/:id_to_display", { :controller => "concerns", :action => "details", :via => "get" })

  # UPDATE
  match("/existing_concern_form/:id_to_prefill", { :controller => "concerns", :action => "prefilled_form", :via => "get" })
  match("/update_concern_record/:id_to_modify", { :controller => "concerns", :action => "save_edits", :via => "post" })

  # DELETE
  match("/delete_concern/:id_to_remove", { :controller => "concerns", :action => "remove_row", :via => "get" })

  #------------------------------

  # Routes for the Usefrequency resource:

  # CREATE
  match("/new_usefrequency_form", { :controller => "usefrequencies", :action => "blank_form", :via => "get" })
  match("/insert_usefrequency_record", { :controller => "usefrequencies", :action => "save_new_info", :via => "post" })

  # READ
  match("/usefrequencies", { :controller => "usefrequencies", :action => "list", :via => "get" })
  match("/usefrequencies/:id_to_display", { :controller => "usefrequencies", :action => "details", :via => "get" })

  # UPDATE
  match("/existing_usefrequency_form/:id_to_prefill", { :controller => "usefrequencies", :action => "prefilled_form", :via => "get" })
  match("/update_usefrequency_record/:id_to_modify", { :controller => "usefrequencies", :action => "save_edits", :via => "post" })

  # DELETE
  match("/delete_usefrequency/:id_to_remove", { :controller => "usefrequencies", :action => "remove_row", :via => "get" })

  #------------------------------

  # Routes for the Routine product resource:

  # CREATE
  match("/new_routine_product_form", { :controller => "routine_products", :action => "blank_form", :via => "get" })
  match("/insert_routine_product_record", { :controller => "routine_products", :action => "save_new_info", :via => "post" })

  # READ
  match("/routine_products", { :controller => "routine_products", :action => "list", :via => "get" })
  match("/routine_products/:id_to_display", { :controller => "routine_products", :action => "details", :via => "get" })

  # UPDATE
  match("/existing_routine_product_form/:id_to_prefill", { :controller => "routine_products", :action => "prefilled_form", :via => "get" })
  match("/update_routine_product_record/:id_to_modify", { :controller => "routine_products", :action => "save_edits", :via => "post" })

  # DELETE
  match("/delete_routine_product/:id_to_remove", { :controller => "routine_products", :action => "remove_row", :via => "get" })

  #------------------------------

  # Routes for the Routine resource:

  # CREATE
  match("/new_routine_form", { :controller => "routines", :action => "blank_form", :via => "get" })
  match("/insert_routine_record", { :controller => "routines", :action => "save_new_info", :via => "post" })

  # READ
  match("/routines", { :controller => "routines", :action => "list", :via => "get" })
  match("/routines/:id_to_display", { :controller => "routines", :action => "details", :via => "get" })

  # UPDATE
  match("/existing_routine_form/:id_to_prefill", { :controller => "routines", :action => "prefilled_form", :via => "get" })
  match("/update_routine_record/:id_to_modify", { :controller => "routines", :action => "save_edits", :via => "post" })

  # DELETE
  match("/delete_routine/:id_to_remove", { :controller => "routines", :action => "remove_row", :via => "get" })

  #------------------------------

  # Routes for the Category resource:

  # CREATE
  match("/new_category_form", { :controller => "categories", :action => "blank_form", :via => "get" })
  match("/insert_category_record", { :controller => "categories", :action => "save_new_info", :via => "post" })

  # READ
  match("/categories", { :controller => "categories", :action => "list", :via => "get" })
  match("/categories/:id_to_display", { :controller => "categories", :action => "details", :via => "get" })

  # UPDATE
  match("/existing_category_form/:id_to_prefill", { :controller => "categories", :action => "prefilled_form", :via => "get" })
  match("/update_category_record/:id_to_modify", { :controller => "categories", :action => "save_edits", :via => "post" })

  # DELETE
  match("/delete_category/:id_to_remove", { :controller => "categories", :action => "remove_row", :via => "get" })

  #------------------------------

  # Routes for the Product resource:

  # CREATE
  match("/new_product_form", { :controller => "products", :action => "blank_form", :via => "get" })
  match("/insert_product_record", { :controller => "products", :action => "save_new_info", :via => "post" })

  # READ
  match("/products", { :controller => "products", :action => "list", :via => "get" })
  match("/products/:id_to_display", { :controller => "products", :action => "details", :via => "get" })

  # UPDATE
  match("/existing_product_form/:id_to_prefill", { :controller => "products", :action => "prefilled_form", :via => "get" })
  match("/update_product_record/:id_to_modify", { :controller => "products", :action => "save_edits", :via => "post" })

  # DELETE
  match("/delete_product/:id_to_remove", { :controller => "products", :action => "remove_row", :via => "get" })

  #------------------------------

  # Routes for the Customer resource:

  # CREATE
  match("/new_customer_form", { :controller => "customers", :action => "blank_form", :via => "get" })
  match("/insert_customer_record", { :controller => "customers", :action => "save_new_info", :via => "post" })

  # READ
  match("/customers", { :controller => "customers", :action => "list", :via => "get" })
  match("/customers/:id_to_display", { :controller => "customers", :action => "details", :via => "get" })

  # UPDATE
  match("/existing_customer_form/:id_to_prefill", { :controller => "customers", :action => "prefilled_form", :via => "get" })
  match("/update_customer_record/:id_to_modify", { :controller => "customers", :action => "save_edits", :via => "post" })

  # DELETE
  match("/delete_customer/:id_to_remove", { :controller => "customers", :action => "remove_row", :via => "get" })

  #------------------------------

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
