require 'rails_helper'

RSpec.describe Tag, type: :model do

  before do
    @hostDetail = FactoryBot.create(:hostDetail)
    @tag = @hostDetail.tags.build
  end

  it "hostDetailのfactory_botが有効かどうかを検査" do
    expect(@hostDetail).to be_valid
  end

  it "tagのfactory_botが有効かどうかを検査" do
    expect(@tag).to be_valid
  end

  it "タグモデルのタグ、外部キー（host_detail_id）があれば有効" do
    expect(@tag).to be_valid
  end

  describe 'バリデーションのテスト' do
    context 'tagカラム' do
      it '20文字以下であること' do
        @tag.tag = "a" * 21
        expect(@tag).to be_invalid
      end
    end
  end
  
end
