class EmotionsController < ApplicationController
  def index 
    @emotions = Emotion.find(:all)
  end

  def new 
    @emotion = Emotion.new
  end

  def edit 
    @emotion = Emotion.find_by_id(params[:id])
  end

  def update 
    Emotion.find_by_id(params[:id]).update_attributes(params[:emotion])
    redirect_to emotions_path
  end

  def create
    @emotion = Emotion.new params[:emotion]
    @emotion.save
    redirect_to emotions_path
  end
end
