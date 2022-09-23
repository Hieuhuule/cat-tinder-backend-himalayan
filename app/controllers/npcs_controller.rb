class NpcsController < ApplicationController
    def index
        npcs = Npc.all
        render json: npcs
    end
  
    def create
        npc = Npc.create(npc_params)
        render json: npc
      end

      private
      def npc_params
        params.require(:npc).permit(:name, :address, :likes, :image)
      end
  
    def update
    end
  
    def destroy
    end
end

