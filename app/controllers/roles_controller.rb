class RolesController < ApplicationController
  def index
    @roles = Role.all
  end

  def new
    @role = Role.new
    #@companies = Company.all
  end

  def create

  end
end
