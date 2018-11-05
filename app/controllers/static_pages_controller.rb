class StaticPagesController < ApplicationController
  def home
  end

  def help
  	 unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to home_path
      end
  end

  def about
  end

  def contact
  end
end
