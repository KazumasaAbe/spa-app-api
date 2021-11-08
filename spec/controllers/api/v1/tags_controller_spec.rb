require 'rails_helper'

RSpec.describe Api::V1::TagsController, type: :controller do
  
  before do
    @tag = FactoryBot.create(:tag)
  end
  
  describe '#index' do

    it 'responseでstatus 200を返すこと' do
      get :index
      expect(response.status).to eq 200
    end

    it 'json形式でresponseを返すこと' do
      get :index
      expect(response.content_type).to eq 'application/json; charset=utf-8'
    end

    it 'responseの要素数が1個であること' do
      get :index
      expect(JSON.parse(response.body).length).to eq 1
    end

  end
end
