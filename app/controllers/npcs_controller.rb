class NpcsController < ApplicationController
    def index
        npcs = Npc.all
        render json: npcs
    end
  
    def create
        npc = Npc.create(npc_params)
        if npc.valid?
        render json: npc
        else
          render json: npc.errors, status: 422
        end
      end

      
  
    def update
      npc = Npc.find(params[:id])
      npc.update(npc_params)
      if npc.valid?
        render json: npc
      else
        render json: npc.errors, status: 422
      end
    end
  
    def destroy
      npc = Npc.find(params[:id])
      if npc.destroy
        render json: npc, status: 204
      else
        render json: npc.errors
      end
    end

    private
      def npc_params
        params.require(:npc).permit(:name, :address, :likes, :image)
      end
end

