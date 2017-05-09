Rails.application.routes.draw do
  ActiveAdmin.routes(self)
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

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
