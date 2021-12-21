require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @post = FactoryBot.build(:post)
  end

  describe 'postの投稿機能' do
    context '投稿できる場合' do
      it 'imageとcontentを投稿できる' do
        expect(@post).to be_valid
      end
      it 'contentが空でも投稿できる' do
        @post.content = ''
        expect(@post).to be_valid
      end
      it 'imageが空でも投稿できる' do
        @post.image = nil
        expect(@post).to be_valid
      end
    end
    context 'ツイートが投稿できない場合' do
      it 'contentとimageが空では投稿できない' do
        @post.content = ''
        @post.image = nil
        @post.valid?
        expect(@post.errors.full_messages).to include("Content or Image can't be blank")
      end     
      it 'ユーザーが紐付いていなければ投稿できない' do
        @post.user = nil
        @post.valid?
        expect(@post.errors.full_messages).to include('User must exist')
      end
    end
  end
end
