class StaticPagesController < ApplicationController
  def home
  end

  def show_data
    @data = params
    render 'show_data'
  end

end
