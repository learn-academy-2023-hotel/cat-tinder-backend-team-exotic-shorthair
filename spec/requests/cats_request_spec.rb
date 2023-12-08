require 'rails_helper'

describe "cannot create a cat without valid attributes" do
    it "can't create cat without a name" do
      cat_params = {
        cat: {
          age: 2,
          enjoys: 'Tacos',
          image: 'https://images.unsplash.com/photo-1529778873920-4da4926a72c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1036&q=80'
        }
      }
      post '/cats', params: cat_params
      expect(response.status).to eq 422
      json = JSON.parse(response.body)
      expect(json['name']).to include "can't be blank"
    end 
  end