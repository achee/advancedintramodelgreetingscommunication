module CommunicationHelper
  def display_message_for(user)
    return Message.generate_message_for(user)
  end
end