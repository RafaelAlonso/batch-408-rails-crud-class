Rails.application.routes.draw do

  # verb path, to: 'control#action'

  # READ - MOSTRAR TODOS OS RESTAURANTES / MOSTRAR UM RESTAURANTE ESPECIFICO
  # get '/restaurants', to: 'restaurants#index'
  # get '/restaurants/:id', to: 'restaurants#show'

  # # CREATE - CRIAR UM NOVO RESTAURANTE
  # # 1. rota pra levar o usuario ao formulário
  # get '/restaurants/new', to: 'restaurants#new'

  # # 2. rota pra levar as infos que o usuário inputou p/ o controller
  # post '/restaurants', to: 'restaurants#create'

  # # UPDATE - EDITAR UM RESTAURANTE ESPECIFICO
  # # 1. rota pra levar o usuario ao formulário
  # get '/restaurants/:id/edit', to: 'restaurants#edit'

  # # 2. rota pra levar as infos que o usuário inputou p/ o controller
  # patch '/restaurants/:id', to: 'restaurants#update'

  # # DELETE - DELETAR UM RESTAURANTE ESPECIFICO
  # delete '/restaurants/:id', to: 'restaurants#delete'

  resources :restaurants
end
