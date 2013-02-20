class ExampleController < ApplicationController
  def index
    session[:meta_user] = "This is in the session"
  end
end
