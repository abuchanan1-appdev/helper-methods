class DirectorsController < ApplicationController


  def create
    movie_attributes = params.require(:movie).permit(:title, :description)
    @movie = Movie.new(movie_attributes)
    

    if @movie.valid?
      @movie.save
      redirect_to movies_url,  notice: "Movie created successfully." 
    else
      render "new"
    end
  end