Rxngif::Application.routes.draw do
  # CREATE
  get "/pictures/new", :controller => "Pictures", :action => "new", :as => 'new_picture'
  post "/pictures", :controller => "Pictures", :action => "create", :as => 'pictures'

  get "/pictures", :controller => "Pictures", :action => "index", :as => 'pictures'
  get "/pictures/:id", :controller => "Pictures", :action => "show", :as => 'picture'

  # UPDATE
  get "/pictures/:id/edit/jeff_is_cool", :controller => "Pictures", :action => "edit", :as => 'edit_picture'
  put "/pictures/:id", :controller => "Pictures", :action => "update", :as => 'picture'

  # DELETE
  delete "/pictures/:id", :controller => 'Pictures', :action => 'destroy', :as => 'picture'
end
