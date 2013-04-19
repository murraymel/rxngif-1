Rxngif::Application.routes.draw do
  get "/pictures", :controller => "Pictures", :action => "list_of_pictures"

  get "/pictures/:number", :controller => "Pictures", :action => "picture_details"
end
