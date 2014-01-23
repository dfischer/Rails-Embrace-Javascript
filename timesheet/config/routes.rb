Timesheet::Application.routes.draw do
  resources :projects, only: [:index]
end
