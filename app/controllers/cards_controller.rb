class CardsController < ApplicationController

  def new
    if request.post? then
      Card.create(card_params)
    else
      @card = Card.new
    end
  end

  def index
    @cards = Card.all
  end

  def show
    @card = Card.find(params[:id])
  end

  def edit
    @card = Card.find(params[:id])
    if request.patch? then
      @card.update(card_params)
      goback
    end
  end

  def delete
    Card.find(params[:id]).destroy
    goback
  end

  private

  def card_params
    params.require(:card).permit(:title, :author, :pricd, :publishor, :memo)
  end

  def goback
    redirect_to "/cards"
  end

end
