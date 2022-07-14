class User < ApplicationRecord
  include Wisper::Publisher
  
  after_commit :publish_creation_message, on: :create
  after_commit :publish_destroy_message, on: :destroy

  private 

  def publish_creation_message
    broadcast(:creation_message, self)
  end

  def publish_destroy_message
    broadcast(:destroy_message, self)
  end
end
