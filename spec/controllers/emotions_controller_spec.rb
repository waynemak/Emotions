require 'spec_helper'

describe EmotionsController do
  describe "GET 'index'" do
    it "should be success" do
      get 'index'
    end
  end

  describe "GET 'new'" do
    it "should be success" do
      get 'new'
    end
  end

  describe "POST 'create'" do
    let(:params) do 
      {
        :emotion => { 
          :feeling => 'happy', 
          :description => 'i got my paycheck today!' 
        } 
      }
    end

    it "should be success" do
      put 'create', params
    end
  end
end
