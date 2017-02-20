class MainController < ApplicationController
  def index
  end

  def about
  end

  def projects
  end

  def playground
  end

  def movies
    response = Curl.get("http://localhost:3001/movies") do |http|
      # http.headers['X-Token'] = Rails.application.secrets.api_token
      http.headers['Content-Type'] = 'application/json'
    end
    @movies = JSON.parse(response.body)['movies']

    @movies_by_location = {
      'betelgeuse' => @movies.select { |d| d['location'] == 'betelgeuse' }.size,
      'fenchurch' => @movies.select { |d| d['location'] == 'fenchurch' }.size,
      'kali' => @movies.select { |d| d['location'] == 'kali' }.size,
      'vega' => @movies.select { |d| d['location'] == 'vega' }.size
    }
  end
end
