Rails.application.routes.draw do

  devise_for :clients
  get "/", :controller => "projects", :action => "index"
  get "/dashboard", :controller => "projects", :action => "index"

  # Routes for the Item resource:
  # CREATE
  get "/items/new/:project_id", :controller => "items", :action => "new"
  get "/items/add/:project_id", :controller => "items", :action => "add"
  post "/create_item", :controller => "items", :action => "create"
  post "/revise_item", :controller => "items", :action => "revise_item"

  # READ
  get "/items", :controller => "items", :action => "index"
  get "/items/:id", :controller => "items", :action => "show"

  # UPDATE
  get "/items/:id/edit", :controller => "items", :action => "edit"
  get "/items/revise/:project_id", :controller => "items", :action => "revise"
  post "/update_item/:project_id", :controller => "items", :action => "update"

  # DELETE
  get "/delete_item/:id", :controller => "items", :action => "destroy"


  #------------------------------

  # Routes for the Project resource:
  # CREATE
  get "/projects/start", :controller => "projects", :action => "start"
  get "/projects/new", :controller => "projects", :action => "new"
  post "/create_project", :controller => "projects", :action => "create"
  get "/projects/review/:id", :controller => "projects", :action => "review"
  get "/projects/revise-submit/:id", :controller => "projects", :action => "revise_submit"

  # READ
  get "/projects", :controller => "projects", :action => "index"
  get "/projects/:id", :controller => "projects", :action => "show"

  # UPDATE
  get "/projects/:id/edit", :controller => "projects", :action => "edit"
  post "/update_project/:id", :controller => "projects", :action => "update"

  # DELETE
  get "/delete_project/:id", :controller => "projects", :action => "destroy"
  #------------------------------

  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
