require 'rails_helper'

RSpec.describe "Managements", type: :request do

  before do
    @post = FactoryBot.create(:post)
  end

  describe "GET /managements" do
    it "indexアクションにリクエストすると正常にレスポンスが返ってくる" do
      get root_path
      expect(response.status).to eq 200
    end
  end
end
