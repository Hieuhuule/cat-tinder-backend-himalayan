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
end

