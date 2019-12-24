class CardsController < ApplicationController

    before_action :find_card, only: [:show, :update, :destroy]

    def index
        @cards = Card.all 
        render json: @cards 
    end

    def show
        render json: @card 
    end

    def create
        @card = Card.create(card_params)
        render json: @card
    end

    def update
        @card.update(card_params)
        render json: @card
    end

    def destroy
        @card.destroy 
    end

    private

    def find_card
        @card = Card.find(params[:id])
    end

    def card_params
        params.require(:card).permit(:name, :content)
    end

end
