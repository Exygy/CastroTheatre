require 'test_helper'

class RoomTest < ActiveSupport::TestCase
  test "a rooom has a floor" do
    r = rooms(:room1)
    f = floors(:one)
    r.floor = f
    r.save

    assert r.floor.id == f.id
  end

  test "a room has many movies" do
    r = rooms(:room1)
    
    m1 = movies(:superman)
    m2 = movies(:spiderman)
    
    r.movies << m1
    r.movies << m2

    assert r.movies.collect{|m| m.id }.sort == [m1.id, m2.id].sort
  end

end
