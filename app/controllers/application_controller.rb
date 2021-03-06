# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(user)
    if user.twitter.nil?
      root_path
    else
      friends_path
    end
  end
end
