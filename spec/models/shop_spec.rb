require 'rails_helper'

describe Shop do
  before do
    @shop = FactoryBot.build(:shop)
  end

  describe '店舗登録' do
    context '店舗登録がうまくいくとき' do
      it 'image,item_name,item_info,item_category_id,item_condition_id,item_fee_status_id,item_prefecture_id,item_scheduled_id,item_priceが存在すれば登録できる' do
        expect(@shop).to be_valid
      end
    end
    context '店舗登録がうまくいかないとき' do
      it '画像が空だと登録不可なこと' do
        @shop.image = nil
        @shop.valid?
        expect(@shop.errors.full_messages).to include("Image can't be blank")
      end
      it '店舗名が空だと登録不可なこと' do
        @shop.shop_name = nil
        @shop.valid?
        expect(@shop.errors.full_messages).to include("Shop name can't be blank")
      end

      it '店舗の説明が空だと登録不可なこと' do
        @shop.info = nil
        @shop.valid?
        expect(@shop.errors.full_messages).to include("Info can't be blank")
      end

      it 'カテゴリーが1ならば登録不可なこと' do
        @shop.category_id = 1
        @shop.valid?
        expect(@shop.errors.full_messages).to include('Category must be other than 1')
      end

      it '値段が1なら登録不可なこと' do
        @shop.price_id = 1
        @shop.valid?
        expect(@shop.errors.full_messages).to include('Price must be other than 1')
      end
    end
  end
end
