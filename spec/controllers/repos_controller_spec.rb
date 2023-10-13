require 'rails_helper'

RSpec.describe ReposController, type: :controller do
  describe "GET #search" do
    it "renders the search template" do
      get :search
      expect(response).to render_template(:search)
    end

    it "assigns @repos based on the query" do
      allow(GithubService).to receive(:search).and_return([{ full_name: "test/repo" }])
      
      get :search, params: { query: "test" }
      expect(assigns(:repos)).to eq([{ full_name: "test/repo" }])
    end
  end
end
