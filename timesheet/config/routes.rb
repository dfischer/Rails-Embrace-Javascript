Timesheet::Application.routes.draw do
  resources :projects, only:[] do 
    get :all, :on => :collection
  end
end
