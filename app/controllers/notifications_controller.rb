class NotificationsController < ApplicationController

  def index
    @notifications = Notification.unread.where(user_id: current_user.id)
  end

  def update
    @notification = Notification.find_by(id: params[:id])
    @notification.update(unread: false)
    redirect_to notifications_path
  end

end
