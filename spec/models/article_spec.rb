require 'rails_helper'

RSpec.describe Article, type: :model do
  describe "validation"  do
    describe "title" do 
      let(:no_title) { Article.new(title: nil, content: "content") }    

      it "require title" do
        expect(no_title).to_not be_valid
        expect(no_title.errors[:title]).to_not be_empty
      end
    end

    describe "content" do 
      let(:no_content) { Article.new(title: "title", content: nil) }    

      it "require content" do
        expect(no_content).to_not be_valid
        expect(no_content.errors[:content]).to_not be_empty
      end
    end
  end
end 