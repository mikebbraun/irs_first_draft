class StaticController < ApplicationController
  def welcome
    @companies = Company.all
  end
end
