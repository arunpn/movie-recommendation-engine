class MoviesController < ApplicationController

  def index
    
    # @movies = Movie.released.min_score.where(default: true)

    # filter results by films playing in zip
    theater_data = Fandango.movies_near(20024)

    @movies = Movie.all.select {|movie| theater_data.to_s.include? movie[:title]}
  end

  def show

    @rank = params[:rank].to_i

    movies = Movie.where(default: true)

    @movie = movies[@rank-1]

    @rank = 0 if @rank == movies.size

  end

end
