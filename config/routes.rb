Rails.application.routes.draw do
  get 'hola', to: 'greetings#hello'
 
  root "greetings#hello"    #ESto es para que lo que esta en la acciòn hello dentro del controlador "greetings", salga inmediatamente de pagina de inicio

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
