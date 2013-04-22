Rxngif::Application.routes.draw do
  get "/pictures", :controller => "Pictures", :action => "list_of_pictures"
  get "/pictures/new", :controller => "Pictures", :action => "new_picture_form"
  get "/pictures/:number", :controller => "Pictures", :action => "picture_details"
end
