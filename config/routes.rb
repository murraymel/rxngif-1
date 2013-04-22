Rxngif::Application.routes.draw do
  # CREATE
  get "/pictures/new", :controller => "Pictures", :action => "new_picture_form"
  get "/add_to_pictures", :controller => "Pictures", :action => "insert_picture"

  # READ
  get "/pictures", :controller => "Pictures", :action => "list_of_pictures"
  get "/pictures/:number", :controller => "Pictures", :action => "picture_details"

  # UPDATE
  get "/pictures/:number/edit", :controller => "Pictures", :action => "edit_picture_form"
  get "/update_picture/:number", :controller => "Pictures", :action => "update_picture"
end
