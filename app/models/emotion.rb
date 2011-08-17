class Emotion < ActiveRecord::Base
  def self.avg_feeling 
    @emotions = find(:all)
    { 
      :happy_percent => @emotions.select { |emotion| emotion.feeling == "Happy" }.count.to_f / Emotion.count
    }
  end

end
