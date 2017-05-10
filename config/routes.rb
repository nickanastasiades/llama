Rails.application.routes.draw do

  get "/", :controller => "projects", :action => "index"
  get "/dashboard", :controller => "projects", :action => "index"

  # Routes for the Item resource:
  # CREATE
  get "/items/new/:id", :controller => "items", :action => "new"
  post "/create_item", :controller => "items", :action => "create"

  # READ
  get "/items", :controller => "items", :action => "index"
  get "/items/:id", :controller => "items", :action => "show"

  # UPDATE
  get "/items/:id/edit", :controller => "items", :action => "edit"
  post "/update_item/:id", :controller => "items", :action => "update"

  # DELETE
  get "/delete_item/:id", :controller => "items", :action => "destroy"
  #------------------------------

  # Routes for the File resource:
  # CREATE
  get "/files/new", :controller => "files", :action => "new"
  post "/create_file", :controller => "files", :action => "create"

  # READ
  get "/files", :controller => "files", :action => "index"
  get "/files/:id", :controller => "files", :action => "show"

  # UPDATE
  get "/files/:id/edit", :controller => "files", :action => "edit"
  post "/update_file/:id", :controller => "files", :action => "update"

  # DELETE
  get "/delete_file/:id", :controller => "files", :action => "destroy"
  #------------------------------

  # Routes for the Designer resource:
  # CREATE
  get "/designers/new", :controller => "designers", :action => "new"
  post "/create_designer", :controller => "designers", :action => "create"

  # READ
  get "/designers", :controller => "designers", :action => "index"
  get "/designers/:id", :controller => "designers", :action => "show"

  # UPDATE
  get "/designers/:id/edit", :controller => "designers", :action => "edit"
  post "/update_designer/:id", :controller => "designers", :action => "update"

  # DELETE
  get "/delete_designer/:id", :controller => "designers", :action => "destroy"
  #------------------------------

  # Routes for the Company resource:
  # CREATE
  get "/companies/new", :controller => "companies", :action => "new"
  post "/create_company", :controller => "companies", :action => "create"

  # READ
  get "/companies", :controller => "companies", :action => "index"
  get "/companies/:id", :controller => "companies", :action => "show"

  # UPDATE
  get "/companies/:id/edit", :controller => "companies", :action => "edit"
  post "/update_company/:id", :controller => "companies", :action => "update"

  # DELETE
  get "/delete_company/:id", :controller => "companies", :action => "destroy"
  #------------------------------

  # Routes for the Project resource:
  # CREATE
  get "/projects/start", :controller => "projects", :action => "start"
  get "/projects/new", :controller => "projects", :action => "new"
  post "/create_project", :controller => "projects", :action => "create"

  # READ
  get "/projects", :controller => "projects", :action => "index"
  get "/projects/:id", :controller => "projects", :action => "show"

  # UPDATE
  get "/projects/:id/edit", :controller => "projects", :action => "edit"
  post "/update_project/:id", :controller => "projects", :action => "update"

  # DELETE
  get "/delete_project/:id", :controller => "projects", :action => "destroy"
  #------------------------------

  # Routes for the Client resource:
  # CREATE
  get "/clients/new", :controller => "clients", :action => "new"
  post "/create_client", :controller => "clients", :action => "create"

  # READ
  get "/clients", :controller => "clients", :action => "index"
  get "/clients/:id", :controller => "clients", :action => "show"

  # UPDATE
  get "/clients/:id/edit", :controller => "clients", :action => "edit"
  post "/update_client/:id", :controller => "clients", :action => "update"

  # DELETE
  get "/delete_client/:id", :controller => "clients", :action => "destroy"
  #------------------------------

  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
