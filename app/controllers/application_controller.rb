class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    render html: "Cindy and Jeff's Tweet library rulez"
  end
end