require 'test_helper'

class RoomTest < ActiveSupport::TestCase
  test "a room has a floor" do 
    r = rooms(:one)
    f = floors(:one)
    r.floor = f
    r.save

    assert r.floor.id == f.id

  end
end
