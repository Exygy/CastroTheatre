# Read about tests at http://guides.rubyonrails.org/testing.html
# run test with rake test test/models/movie_test.rb

require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  
  test "movies should have a title" do
  	m = movies(:superman)
  	assert m.title == "Superman"
  end

  test "movie title should be unique" do
  	# create new movie with movie title already presnet in the db
  	m = Movie.create(title: "Superman")
  	# movie should save == should not have an id
  	assert m.id == nil
  end  

  test "movie should have many rooms" do
    m = movies(:superman)

    r1 = rooms(:room1)
    r2 = rooms(:room2)
    
    m.rooms << r1
    m.rooms << r2

    assert m.rooms.collect{|r| r.id }.sort == [r1.id, r2.id].sort
  end

end
