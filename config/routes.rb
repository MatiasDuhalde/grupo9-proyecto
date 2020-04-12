Rails.application.routes.draw do
  get 'hola', to: 'greetings#hello'

  root 'greetings#hello'
end
