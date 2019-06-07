class StaticPagesController < ApplicationController
  before_action :autheticate_user!

  def home
  end
end
