require 'rails_helper'

RSpec.describe "Posts", type: :request do

  before do
    @post = FactoryBot.create(:post)
  end
  # describe "GET /posts" do
  #   it "indexアクションにリクエストするとレスポンスに投稿済みのpostのcontentが存在する" do
  #     get root_path
  #     expect(response.body).to include(@post.content)
  #   end
  # end
  # describe "GET /show" do
  #   it 'showアクションにリクエストすると正常にレスポンスが返ってくる' do
  #     get post_path(@post)
  #     expect(response.status).to eq 200
  #   end
  # end
end
