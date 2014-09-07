class Api::PlayersController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create 
    @player = Player.new(player_params)
    @player.money = 600
    if @player.save 
      render json: @player
    else
      render json: @player.errors
    end
  end
  private
    def player_params
      params.require(:player).permit(:nickname, :email, :color)
    end
end
