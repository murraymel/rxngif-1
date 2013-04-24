Rxngif::Application.routes.draw do
  # CREATE
  get "/pictures/new", :controller => "Pictures", :action => "new"
  post "/pictures", :controller => "Pictures", :action => "create"

  # READ
  get "/pictures", :controller => "Pictures", :action => "index"
  get "/pictures/:id", :controller => "Pictures", :action => "show"

  # UPDATE
  get "/pictures/:id/edit", :controller => "Pictures", :action => "edit"
  put "/pictures/:id", :controller => "Pictures", :action => "update"

  # DELETE
  delete "/pictures/:id", :controller => 'Pictures', :action => 'destroy'
end
