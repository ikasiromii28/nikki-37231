require 'rails_helper'
describe PostsController, type: :request do

  before do
    @user = FactoryBot.build(:user)
    @post = FactoryBot.build(:post)
  end

  describe 'GET #index' do
    it 'indexアクションにリクエストすると正常にレスポンスが返ってくる' do 
      sign_in @user
      get root_path
      expect(response.status).to eq 200
    end
  end 
end