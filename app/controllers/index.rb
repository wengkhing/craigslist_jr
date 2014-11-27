get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/categories/:id/posts' do
  @posts = Category.find(params[:id]).posts
  erb :list_post
end

get '/categories/:id/posts/new' do
  # @category = Category.find(params[:category_id])
  erb :new_post
end

post '/categories/:id/posts/new/success' do
  Post.create(title: params[:title], description: params[:description], price: params[:price], email: params[:email], category: Category.find(params[:id]))
  erb :success
end

get '/categories/:c_id/posts/edit/:p_id' do
  @post = Post.find(params[:p_id])
  erb :edit_post
end

post '/categories/:id/posts/edit/:p_id/success' do
  post = Post.find(params[:p_id])
  post.title = params[:title]
  post.description = params[:description]
  post.price = params[:price]
  post.email = params[:email]
  post.save
  erb :success
end

get '/categories/:id/posts/view/:p_id' do
  @post = Post.find(params[:p_id])
  erb :view_post
end