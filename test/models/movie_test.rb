require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  
  test "movies should have a title" do    
    m = movies(:superman)
    assert m.title == "Superman"
  end

  test "movie title should be unique" do
    # create new movie with movie title already presnet in the db
    m = Movie.create(title: "Superman")

    # movie should not save == should not have an id
    assert m.id == nil, "Movie id #{m.id} should not exist here"
  end  

  test "movie should have many rooms" do
    m = movies(:superman)

    r1 = rooms(:one)
    r2 = rooms(:two)
    
    m.rooms << r1
    m.rooms << r2

    # assert m.rooms.first.id == r1.id
    assert m.rooms.collect{|r| r.id }.sort == [r1.id, r2.id].sort
  end  

end