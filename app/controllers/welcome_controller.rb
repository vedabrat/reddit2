class WelcomeController < ApplicationController
  def index
    @posts = Post.all

  end

  def about
  end

  def faq
  end
end
