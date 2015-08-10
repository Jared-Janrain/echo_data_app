class StaticPagesController < ApplicationController

  skip_before_filter :verify_authenticity_token, only: [:show_data]

  def home
  end

  def show_data
    @data = params
    @file
    @file_hash = {}
    params.each do |key, value|
      # byebug
      if value.class == ActionDispatch::Http::UploadedFile
        @file = value
        @file_hash = JSON.parse(@file.read)

      end
    end

    render 'show_data'
  end

end
