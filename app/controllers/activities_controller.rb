class ActivitiesController < ApplicationController
  #before_action :confirm_logged_in
  def index
    @activities=PublicActivity::Activity.order(created_at: :desc)
  end
end
