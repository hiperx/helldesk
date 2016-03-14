class StaticContentController < ApplicationController
  def help
    @title='Help Me'
  end

  def about
  end

  def start
    @title='From controller'
  end
end
