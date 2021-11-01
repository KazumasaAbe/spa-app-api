require 'rails_helper'

RSpec.describe HostDetail, type: :model do

  before do
    @hostDetail = FactoryBot.create(:hostDetail)
  end

  # factory_botが有効かどうかを検査。
  it "has a valid factory of hostDetail" do
    expect(@hostDetail).to be_valid
  end

  describe 'バリデーションのテスト' do
    context 'nameカラム' do
      it '空欄でないこと' do
        @hostDetail.name = ''
        is_expected.not_to be_valid
      end
      it '30文字以下であること' do
        @hostDetail.name = "a" * 31
        expect(@hostDetail).to be_invalid
      end
    end

    context 'latitudeカラム' do
      it '空欄でないこと' do
        @hostDetail.latitude = ''
        is_expected.not_to be_valid
      end
      it '11桁以下であること' do
        @hostDetail.latitude = "1" * 12
        expect(@hostDetail).to be_invalid
      end
    end

    context 'longitudeカラム' do
      it '空欄でないこと' do
        @hostDetail.longitude =  ''
        is_expected.not_to be_valid
      end
      it '11桁以下であること' do
        @hostDetail.longitude = "1" * 12
        expect(@hostDetail).to be_invalid
      end
    end
  end

end
