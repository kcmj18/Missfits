class PageController < ApplicationController
  #before_filter :authenticate_user!

  layout('application', except: :account)
  def home
  end

  def classes
  end

  def people
  end

  def inbox
  end

  def account

  end

  def contact_us
  end
end
