require 'rails_helper'

RSpec.describe SponsoredPostsController, type: :controller do

  describe "GET #show" do
    let(:sponsored_post) { SponsoredPost.create! }
    let(:params) {{ id: sponsored_post.id }}

    def do_request
      get :show, params: params
    end

    it "returns http success" do
      do_request
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit
      expect(response).to have_http_status(:success)
    end
  end
end
