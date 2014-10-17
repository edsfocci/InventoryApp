class StaticPagesController < ApplicationController
  def home
    if user_signed_in?
      redirect_to containers_path
    end
  end

  def help
  end
end
