AppraisalSystem::Engine.routes.draw do

  resources :appraisal_modules do
    resources :competences
  end

  root to: 'appraisal_modules#index'
end
