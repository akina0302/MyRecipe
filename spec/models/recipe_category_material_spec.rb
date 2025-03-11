require 'rails_helper'

RSpec.describe RecipeCategoryMaterial, type: :model do

  before do
    user = FactoryBot.create(:user)
    @recipe_category_material = FactoryBot.build(:recipe_category_material,user_id: user.id)
  end

  describe 'レシピ登録' do
    context 'レシピ登録できる場合' do
      it '全ての情報が正しく入力された場合、新規登録できる' do
        expect(@recipe_category_material).to be_valid
      end
    end

    context '新規登録できない場合' do
      it 'レシピ名が空だと登録できない' do
        @recipe_category_material.name = ''
        @recipe_category_material.valid?
        expect(@recipe_category_material.errors.full_messages).to include('料理名を入力してください')
      end
      it 'カテゴリーが空だと登録できない' do
        @recipe_category_material.category_name=''
        @recipe_category_material.valid?
        expect(@recipe_category_material.errors.full_messages).to include('カテゴリーを入力してください')
      end
        it 'メイン食材が空だと登録できない' do
        @recipe_category_material.material_name=''
        @recipe_category_material.valid?
        expect(@recipe_category_material.errors.full_messages).to include('メイン食材を入力してください')
      end
    end
  end
end
