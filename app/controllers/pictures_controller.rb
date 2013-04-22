class PicturesController < ApplicationController
  def list_of_pictures
    @pictures = Picture.all
  end

  def picture_details
    @pic = Picture.find_by_id(params[:number])
  end

  def new_picture_form

  end

  def insert_picture
    p = Picture.new

    p.source = params[:source]
    p.caption = params[:caption]
    p.favorite = params[:favorite]
    p.save

    redirect_to "http://localhost:3000/pictures"
  end

  def edit_picture_form

  end
end

















