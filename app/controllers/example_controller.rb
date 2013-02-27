class ExampleController < ApplicationController
  def index
    session[:meta_user] = ["Foo", 1233123]
  end
end
