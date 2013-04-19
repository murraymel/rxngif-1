Rxngif::Application.routes.draw do
  get("/pictures", { :controller => "Pictures", :action => "list_of_pictures" })
end
