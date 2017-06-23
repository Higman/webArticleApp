require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do

  describe "#new" do
    it "assigns @article" do
      get :new
      expect(assigns(:article)).to_not be_nil
    end
  end

  describe "#create" do
    it "create new article" do
      expect {
        post :create, article: { title: "test", content: "create_article_test" }
      }.to change {
        Article.count
      }.from(0).to(1)
    end
  end
end
