Rails.application.routes.draw do
  resources(:authors) do
    resources(:blog_posts, only: [:index])
  end
  resources(:blog_posts)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "blog_posts#index"
end
