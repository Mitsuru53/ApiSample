class PoemsController < ApplicationController
  before_action :set_poem, only: [:show]

  def index
    @poems = Poem.all
    render json: @poems
  end

  def show
    # @poem = Poem(poems_params)
    render json: @poem
  end

  private
  def poems_params
    params.require(:poem).permit(:title, :content)
  end

  def set_poem
    @poem = Poem.find(params[:id])
  end
end
