# The me controller takes you to your home page or profile
class MeController < ApplicationController
  before_action :authenticate
  def show
    # Show my profile
  end
end
