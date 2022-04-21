Rails.application.routes.draw do
  get 'cards/index'
  get 'cards' => 'cards#index'

  get 'cards/add'
  post 'cards/add'

  get 'cards/:id' => 'cards#show'

  get 'cards/edit/:id' => 'cards#edit'
  patch 'cards/edit/:id' => 'cards#edit'

  get 'cards/delete/:id' => 'cards#delete'

end
