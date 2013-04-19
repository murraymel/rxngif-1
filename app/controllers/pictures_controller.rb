class PicturesController < ApplicationController
  def list_of_pictures
    @pictures = Picture.all
  end

  def picture_details

  end
end
