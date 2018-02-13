class NotificationsController < ApplicationController

  def index
    byebug
    @notifications = Notification.where(user_id: current_user.id)
  end

  def show
  end


end
