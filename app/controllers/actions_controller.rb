class ActionsController < ApplicationController
  # GET /actions
  def index
    @actions = Action.all
  end
end
