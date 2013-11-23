require 'test_helper'

class RoomTest < ActiveSupport::TestCase
  test "a rooom has a floor" do
    r = rooms(:room1)
    f = floors(:one)
    r.floor = f
    r.save

    assert r.floor.id == f.id
  end
end
