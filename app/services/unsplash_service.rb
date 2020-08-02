class UnsplashService 
  def background_api_call(location)
    conn = Faraday.new(url: "https://api.unsplash.com") do |faraday|
      faraday.headers["Authorization"] = "Client-ID #{ENV["UNSPLASH_API_KEY"]}"
    end 
    response = conn.get("/search/photos?page=1&query=#{location}")
    json = JSON.parse(response.body, symbolize_names: true)
  end 
end 