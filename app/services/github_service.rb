require 'net/http'
require 'json'

class GithubService
  BASE_URL = "https://api.github.com/search/repositories"

  def self.search(query)
    return [] unless query.present?

    url = URI("#{BASE_URL}?q=#{query}")
    response = Net::HTTP.get(url)
    JSON.parse(response).deep_symbolize_keys[:items] || []
  end
end
