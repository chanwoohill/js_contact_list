# Homepage (Root path)
get '/' do
  erb :index
end

# get all contacts (possibly with search)
get '/api/contacts' do
  content_type :json
  @contacts = Contact.all.order(:name)
  @contacts.to_json
end

get '/api/contact/:id' do
  content_type :json
  @contact = Contact.find(params[:id].to_i)

  if @contact
    @contact.to_json
  else
    halt 404
  end
end

# post '/contacts' do
#   ...
#   @contact = Contact.create(params[:contact])
#   ...
# end



# TODO: use jQUERY/AJAX for different routes.

# get '/contacts/:id' do
#   ...
#   @contact = Contact.find(params[:id])
#   ...
# end

# post '/contacts' do
#   ...
#   @contact = Contact.create(params[:contact])
#   ...
# end


# delete '/contacts/:id' do
#   ...
#   contact.destroy(params[:id])
#   ...
# end