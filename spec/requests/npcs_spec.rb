require 'rails_helper'

RSpec.describe "Npcs", type: :request do
  describe "GET /index" do
    it "gets a list of cats" do
      Npc.create(
        name: "Abigail",
        address: "Pierre's General Store",
        likes: "Amethyst",
        image: "https://stardewvalleywiki.com/mediawiki/images/8/88/Abigail.png"
      )
      get '/npcs'

      npc = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(npc.length).to eq 1
    end
  end
  describe "POST /create" do
    it "creates a npc" do
      npc_params = {
        npc: {
          name: 'Linus',
          address: 'Tent',
          likes: 'Blueberry Tart',
          image: 'https://stardewvalleywiki.com/mediawiki/images/3/31/Linus.png'
        }
      }
      post '/npcs', params: npc_params
      expect(response).to have_http_status(200)
  
      npc = Npc.first

      expect(npc.name).to eq 'Linus'
    end
  end

  describe "PATCH /update" do
    it "updates an exisiting character" do
      Npc.create(
        name: 'charlie',
        address: 'string',
        likes: 'listening to music',
        image: 'string'
      )

      npc = Npc.first

      npc_params = {
        character: {
          address: 'new string',
        }
      }

      patch "/npcs/#{npc.id}", params: character_params

      npc = Npc.first

      expect(npc.address).to eq('new string')
  
    end
  end

  describe "DELETE /destory" do
    it "deletes an exisiting npc" do
      Character.create(
        name: 'charlie',
        address: 'string',
        likes: 'other string',
        image: 'string'
      )

      npc = Npc.first

      delete "/npcs/#{npc.id}"

      expect(response.status).to eq(204)

      npcs = Npc.all
      expect(npc).to be_empty
    end
  end
  
  it "checks whether a name is present or not" do
    npc_params ={
      npc: {
        address: 'string',
        interests: 'string',
        image: 'string'
      }
    }
  
    post '/npcs', params: npc_params
  
    expect(response.status).to eq 422
    
    json = JSON.parse(response.body)
    expect(json['name']).to include "can't be blank"
  end

  it "checks whether an address is present or not" do
    npc_params ={
      npc: {
        name: 'string',
        interests: 'string',
        image: 'string'
      }
    }
  
    post '/npcs', params: npc_params
    
    json = JSON.parse(response.body)
  
    expect(response.status).to eq 422
    expect(json['address']).to include "can't be blank"
  end

  it "checks whether an likes is present or not" do
      npc_params ={
      character: {
        name: 'string',
        address: 'string',
        image: 'string'
      }
    }
  
    post '/npcs', params: npc_params
    
    json = JSON.parse(response.body)
  
    expect(response.status).to eq 422
    expect(json['likes']).to include "can't be blank"
  end

  it "checks whether an image is present or not" do
    npc_params ={
      npc: {
        name: 'string',
        address: 'string',
        likes: 'string'
      }
    }
  
    post '/npcs', params: npcs_params
    
    json = JSON.parse(response.body)
  
    expect(response.status).to eq 422
    expect(json['image']).to include "can't be blank"
  end

  it 'checking to make sure that interests are at least 10 characters long for npc' do
    npc_params ={
      npc: {
        name: 'string',
        address: 'string',
        likes: 'Black',
        image: 'string'
      }
    }

    post '/npcs', params: npc_params
  
    json = JSON.parse(response.body)

    expect(response.status).to eq 422 
    expect(json['likes']).to include "is too short (minimum is 10 characters)"
    expect(json['likes']).to_not be_empty
    
  end

  it "checks whether the udpated info is present or not" do
    Npc.create(
      name: 'string',
      address: 'string',
      likes: 'string',
      image: 'string'
    )

    npc = Npc.first

    npc_params = {
      npc: {
        likes: 'Eagles',
        name: 'Le'
      }
    }

    patch "/npcs/#{npc.id}", params: npc_params

    npc = Npc.first

    json = JSON.parse(response.body)

    expect(response.status).to eq 422
    expect(json['likes']).to include "is too short (minimum is 10 characters)"
    expect(json['likes']).to_not be_empty
    expect(json['name']).to include "is too short (minimum is 3 characters)"
  end
end

