class Movie
  require 'httparty'
  require 'json'

  attr_accessor :url

  def initialize(url)
    @movie = HTTParty.get(url)
    @movie_title = @movie["Title"]
    @movie_director =@movie["Director"]
    @movie_plot=@movie["Plot"]

  end

  def to_s
    p "#{@movie_title} is about #{@movie_plot} and is really really good"
  end


  def to_hash
    my_hash = {
      :movie => @movie,
      :title => @movie_title,
      :director => @movie_director,
      :plot => @movie_plot
    }
    return my_hash
  end

  def to_json
    self.to_hash.to_json
  end

end

The_Godfather = Movie.new('http://www.omdbapi.com/?t=the+godfather&y=&plot=short&r=json')
