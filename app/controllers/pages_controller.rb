class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @chatroom_id = Chatroom.first.id
    @last_message_id = Message.last.id
  end
end
