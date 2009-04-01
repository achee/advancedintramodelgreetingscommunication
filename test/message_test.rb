class MessageTest < ActiveSupport::TestCase
  def test_should_generate_message
    return true
  end

  def test_should_not_generate_message
    return rand(2) == 1 ? true : false
  end

end
