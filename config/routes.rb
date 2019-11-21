Rails.application.routes.draw do

  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help', as: 'helf'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get '/ueas', to: 'ueas#ueas'
  get '/ueas/consul' ,to:'ueas#hola'
  get '/profesor', to: 'profesor#profesor'
  #paginas preguntas UEAs
  post 'ueas/consulta', to: 'ueas#consultar'
  post 'ueas/pregunta2', to: 'ueas#pregunta2'
  post 'ueas/pregunta3', to: 'ueas#pregunta3'
  post 'ueas/pregunta4', to: 'ueas#pregunta4'
  post 'ueas/pregunta5', to: 'ueas#pregunta5'
  post 'ueas/pregunta6', to: 'ueas#pregunta6'
  post 'ueas/pregunta7', to: 'ueas#pregunta7'
  #paginas pregunta profesor
  post 'profesor/pregunta1', to: 'profesor#pregunta1'
  post 'profesor/pregunta2', to: 'profesor#pregunta2'
  post 'profesor/pregunta3', to: 'profesor#pregunta3'
  post 'profesor/pregunta4', to: 'profesor#pregunta4'
  post 'profesor/pregunta5', to: 'profesor#pregunta5'
  post 'profesor/pregunta6', to: 'profesor#pregunta6'

end
