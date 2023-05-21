class PagesController < ApplicationController
  def home
  end

  def why
  end

  def how_we_work

  end

  def location

  end

  def apply

  end

  def new
    render file: './app/views/pages/_new.html.erb'
  @apply = Apply.new
  end
end
