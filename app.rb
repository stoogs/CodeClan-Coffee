require( 'sinatra' )
require( 'sinatra/contrib/all' ) if development?
require_relative('controllers/patron_controller')
require_relative('controllers/review_controller')
require_relative('controllers/recipe_controller')


get '/' do
    $patron_length = Patron.show_all
    $review_length = Review.show_all
    $recipe_length = Recipe.show_all
    erb( :index)
end
