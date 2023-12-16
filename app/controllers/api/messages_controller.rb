module Api
  # Controller for handling messages in the API
  class MessagesController < ApplicationController
    def index
      message = Message.order('RANDOM()').first
      render json: message
    end
  end
end
