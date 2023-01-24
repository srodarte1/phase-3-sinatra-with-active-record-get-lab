class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get '/bakeries' do
    "Hello World"
    #get all the bakeries from the db
    # snd them back as a JSON array
    bakeries = Bakery.all
    bakeries.to_json

  end

  get '/bakeries/:id' do
    bakery = Bakery.find(params[:id])
    bakery.to_json(only: [:name], include: { baked_goods: {only: [:name, :price]}})
  end

end
