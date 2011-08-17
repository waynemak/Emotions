class EmotionsController < ApplicationController
  def index 
    @emotions = Emotion.find(:all)
  end

  def new 
    @emotion = Emotion.new
  end

  def create
    @emotion = Emotion.new params[:emotion]
    @emotion.save
    redirect_to emotions_path
  end
end
