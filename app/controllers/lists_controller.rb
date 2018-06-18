class ListsController < ApplicationController
  before_action :set_list

  def move
    @list.insert_at(list_params[:position].to_i)
    render status: 200, json: @list.to_json
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list
      @list = List.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def list_params
      params.require(:list).permit(:name, :position)
    end
end
