require 'torquebox-stomp'
require 'json'

class SessionWatcherStomplet < TorqueBox::Stomp::JmsStomplet

  def configure(opts)
    super
  end

  def on_subscribe(subscriber)
    Rails.logger.info "GOT SUB:"
    Rails.logger.info subscriber.destination
    Rails.logger.info subscriber.session[:meta_user]
    Rails.logger.info subscriber.session
    Rails.logger.info "HELLO WORLD!"
    Rails.logger.info subscriber.getSession.getAttributeNames
  end

  def on_message(message,session)
    puts "Message Received!\n"*5
    puts message.getContentAsString
    puts session.inspect
    puts session.getAttributeNames
  end
end