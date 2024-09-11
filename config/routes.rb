Rails.application.routes.draw do
  delete 'yokohamas/:id' => 'yokohamas#destroy'
  devise_for :users
  get'yokohamas/top'=>'yokohamas#top'
  get'yokohamas/schedule'=>'yokohamas#schedule'
  get'yokohamas/history'=>'yokohamas#history'
  get'yokohamas/introduce'=>'yokohamas#introduce'
  get'yokohamas/sing'=>'yokohamas#sing'
  get'yokohamas/access'=>'yokohamas#access'
  get'yokohamas/miura'=>'yokohamas#miura'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :yokohamas
  root 'yokohamas#top'

end
