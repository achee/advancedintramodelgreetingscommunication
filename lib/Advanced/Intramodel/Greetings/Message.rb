class Message < ActiveRecord::Base
  def generate_message_for(user=nil)
    Communication.open_for(user)
    generate_message
  end
  
  protected
  def generate_message
    message
  end
  
  
  private
  def message
    "Hello World"
  end
  
end