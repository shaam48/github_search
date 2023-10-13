require 'net/http'
require 'json'

class ReposController < ApplicationController
  def search
    query = params[:query]

    if query
      url = URI("https://api.github.com/search/repositories?q=#{query}")
      response = Net::HTTP.get(url)
      @repos = JSON.parse(response).deep_symbolize_keys[:items] || []
    end
  end
end
