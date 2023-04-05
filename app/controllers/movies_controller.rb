class MoviesController < ApplicationController
  # before_action :authorize

   # GET /movies
   def index
    render json: Movie.all, status: :ok
end

# GET /movies/{id}
def show
    # check whether the movie exists
    movie = Movie.find_by(id:params[:id])

    if movie
        # return it
        render json: movie, status: :ok
    else
        # throw a not found error
        render json: {error: "Movie not found"}, status: :not_found
    end
end
    
# POST /movies
def create
    # get the body of the movie to be created
    movie = Movie.create(movie_params)

    # check whether the movie is valid => valid
    if movie.valid?
        # add the movies to the db if its valid
        render json: movie, status: :accepted
    else
        # throw an unprocessable entity error the user
        render json: {errors: "An error occured. Please try again"}
    end
end

# PUT/PATCH /movies/{id}
def update
    # check whether the movie exists
    movie = Movie.find_by(id:params[:id])

    if movie
        movie.update(movie_params)
        # return it
        render json: movie, status: :accepted
    else
        # throw a not found error
        render json: {error: "Movie not found"}, status: :not_found
    end
end

# DELETE /movies/{id}
def destroy
     # check whether the movie exists
     movie = Movie.find_by(id:params[:id])
    
    #  delete the movie
    if movie
        movie.destroy
        head :no_content
    #  return a not found movie
    else 
        render json: {error: 'Movie not found'}, status: not_found
    end
end

private

def movie_params
    params.permit(
        :title, :description, :location, :age_limit, :image, :capacity, :date, :time
    )
end
end
#   # GET /movies
#   def index
#     @movies = Movie.all

#     render json: @movies
#   end

#   # GET /movies/1
#   def show
#     render json: @movie
#   end

#   # POST /movies
#   def create
#     @movie = Movie.new(movie_params)

#     if @movie.save
#       render json: @movie, status: :created, location: @movie
#     else
#       render json: @movie.errors, status: :unprocessable_entity
#     end
#   end

#   # PATCH/PUT /movies/1
#   def update
#     if @movie.update(movie_params)
#       render json: @movie
#     else
#       render json: @movie.errors, status: :unprocessable_entity
#     end
#   end

#   # DELETE /movies/1
#   def destroy
#     @movie.destroy
#   end

#   private
#     # Use callbacks to share common setup or constraints between actions.
#     def set_movie
#       @movie = Movie.find(params[:id])
#     end

#     # Only allow a list of trusted parameters through.
#     def movie_params
#       params.require(:movie).permit(:name, :description, :genre, :image_url, :director)
#     end
# end
