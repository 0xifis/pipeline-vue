class CardsController < ApplicationController
  before_action :set_card

  def move
    @card.update(card_params)
    render status: 200, json: @card.to_json
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_card
      @card = Card.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def card_params
      params.require(:card).permit(:position, :list_id, :listing)
    end
end
