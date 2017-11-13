require 'rails_helper'
include RandomData

RSpec.describe QuestionController, type: :controller do
  let (:my_question) do
    Question.create(
    id: 1,
    title: "New Question Title",
    body: "New Question Body",
    resolved: false,
    )
  end

  describe "GET show" do
    it "returns http success" do
      get :show, {id: my_question.id}
      expect(response).to have_http_status(:success)
    end
    it "assigns my_question to @question" do
      get :index
      expect(assigns(:questions)).to eq([my_question])
    end
  end

  describe  "GET show" do
    it "returns http success" do
      get :show, {id: my_question.id}
      expect(response).to render_template :show
    end

    it "renders the #show view" do
      get :show, {id: my_question.id}
      expect(response).to render_template :show
    end

    it "assigns my_question to @question" do
      get :show, {id: my_question.id}
      expect(assigns(:question)).to eq(my_question)
    end
  end

  # describe "GET #index" do
  #   it "returns http success" do
  #     get :index
  #     expect(response).to have_http_status(:success)
  #   end
  # end
  #
  #
  # describe "GET #new" do
  #   it "returns http success" do
  #     get :new
  #     expect(response).to have_http_status(:success)
  #   end
  # end
  #
  # describe "GET #create" do
  #   it "returns http success" do
  #     get :create
  #     expect(response).to have_http_status(:success)
  #   end
  # end
  #
end
