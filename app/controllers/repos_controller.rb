class ReposController < ApplicationController
  def search
    @repos = GithubService.search(params[:query])
  end
end
