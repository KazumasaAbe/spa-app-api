require 'rails_helper'

RSpec.describe Api::V1::HostDetailsController, type: :controller do

  describe '#index' do
    let!(:hostDetail) { create_list(:hostDetail, 11) }

    it 'responseでstatus 200を返すこと' do
      get :index
      expect(response.status).to eq 200
    end

    it 'json形式でresponseを返すこと' do
      get :index
      expect(response.content_type).to eq 'application/json; charset=utf-8'
    end

    it 'responseの要素数が11個であること' do
      get :index
      expect(JSON.parse(response.body).length).to eq 11
    end

  end

end