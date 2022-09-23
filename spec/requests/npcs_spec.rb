require 'rails_helper'

RSpec.describe "Npcs", type: :request do
  it 'cannot be create without a name' do
    npc_params = {
      npc: {
        address: '2',
        likes: 'Walks in the park',
        image: 'https://images.unsplash.com/photo-1529778873920-4da4926a72c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1036&q=80'
      }
    }

    post '/npcs', params: npc_params
    expect(response.status).to eq 422
    json = JSON.parse(response.body)
    expect(json['name']).to include "can't be blank"
  end
  it 'cannot be create without a address' do
    npc_params = {
      npc: {
        name: '2',
        likes: 'Walks in the park',
        image: 'https://images.unsplash.com/photo-1529778873920-4da4926a72c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1036&q=80'
      }
    }

    post '/npcs', params: npc_params
    expect(response.status).to eq 422
    json = JSON.parse(response.body)
    expect(json['address']).to include "can't be blank"
  end
  it 'cannot be create without a likes' do
    npc_params = {
      npc: {
        address: '2',
        name: 'Walks in the park',
        image: 'https://images.unsplash.com/photo-1529778873920-4da4926a72c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1036&q=80'
      }
    }

    post '/npcs', params: npc_params
    expect(response.status).to eq 422
    json = JSON.parse(response.body)
    expect(json['likes']).to include "can't be blank"
  end
  it 'cannot be create without a image' do
    npc_params = {
      npc: {
        address: '2',
        likes: 'Walks in the park',
        name: 'https://images.unsplash.com/photo-1529778873920-4da4926a72c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1036&q=80'
      }
    }

    post '/npcs', params: npc_params
    expect(response.status).to eq 422
    json = JSON.parse(response.body)
    expect(json['image']).to include "can't be blank"
  end
end

