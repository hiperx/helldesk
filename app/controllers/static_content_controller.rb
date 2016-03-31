class StaticContentController < ApplicationController
  #dostep do tresci poza logowaniem do na (help)
  skip_before_action :authorize, :only => [:help]

  def help
    @title='Help Me'
  end

  def about
  end

  def start
    @title='From controller'
  end
end
