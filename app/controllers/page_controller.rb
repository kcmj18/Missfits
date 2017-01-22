class PageController < ApplicationController
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
# render layout:false
  end

  def contact_us
  end
end
