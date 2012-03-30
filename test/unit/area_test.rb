require 'test_helper'
require 'securerandom'


class AreaTest < ActiveSupport::TestCase
  test "gym and name cannot be empty" do
    area = Area.new
    assert area.invalid?
    assert area.errors[:name].any?
    assert area.errors[:gym_id].any?
  end
  
  test "description cannot be longer than 1000 chars" do
    area = Area.new
    area.description = SecureRandom.urlsafe_base64(1001)
    assert area.invalid?
    assert area.errors[:description].any?
  end
end
