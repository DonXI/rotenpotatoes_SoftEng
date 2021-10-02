Feature: User can add movie by searching for it in The Movie Database (TMDb)
 
  As a movie fan
  So that I can add new movies without manual tedium
  I want to add movies by looking up their details in TMDb
 
Scenario: Try to add nonexistent movie (sad path)
 
  Given I am on the RottenPotatoes home page
  Then I should see "Search TMDB for a movie"
  When I fill in "Search Terms" with "Movie That Does Not Exist"
  Then I should see "Sorry, No match for 'Movie That Does Not Exist'"

  When I fill in "Search Terms" with ""
  Then I should see "You cannot blank"
