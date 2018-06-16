Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'books' => 'books#allBooks'
  get 'books/:id' => 'books#singleBooks'
  post 'books' => 'books#createNewBooks'
end
