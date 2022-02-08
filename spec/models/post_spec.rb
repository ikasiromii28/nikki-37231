require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @post = FactoryBot.build(:post)
  end

  describe '投稿の保存' do
    context '投稿できる場合' do
      it '入力項目が全て埋まっている' do
        expect(@post).to be_valid
      end
    end
    context 'ツイートが投稿できない場合' do
      it 'タイトルが空では投稿できない' do
        @post.title = ''
        @post.valid?
        expect(@post.errors.full_messages).to include('タイトルは入力されていません')
      end
      it '本文が空では投稿できない' do
        @post.text = ''
        @post.valid?
        expect(@post.errors.full_messages).to include('本文は入力されていません')
      end
      it '画像が空では投稿できない' do
        @post.image = nil
        @post.valid?
        expect(@post.errors.full_messages).to include('画像は入力されていません')
      end
      it 'ユーザーが紐付いていなければ投稿できない' do
        @post.user = nil
        @post.valid?
        expect(@post.errors.full_messages).to include('ユーザー名を入力してください')
      end
    end
  end
end
