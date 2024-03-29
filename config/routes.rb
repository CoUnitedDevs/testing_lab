Rails.application.routes.draw do
  resources :somthings
  root "patients#index"
  devise_for :users, path_names: { sign_out: 'sign_out' }
  # root :to => "users#"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :urine_examination_reports
  resources :blood_examination_reports
  resources :patients
  resources :stool_examinationreports do
    member do
      get :stool_exam_pdf
    end
  end
  resources :widal_reaction_reports
end
