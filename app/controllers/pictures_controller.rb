class PicturesController < ApplicationController

  def destroy
    p = Picture.find_by_id(params[:id])
    p.destroy
    redirect_to pictures_url # http://myapp.com/pictures
  end

  def index
    @pictures = Picture.all
  end

  def show
    @pic = Picture.find_by_id(params[:id])
  end

  def new

  end

  def create
    p = Picture.new

    p.source = params[:source]
    p.caption = params[:caption]
    p.favorite = params[:favorite]
    p.save

    redirect_to pictures_url
  end

  def edit
    @pic = Picture.find_by_id(params[:id])
  end

  def update
    p = Picture.find_by_id(params[:id])

    p.source = params[:source]
    p.caption = params[:caption]
    p.favorite = params[:favorite]
    p.save

    redirect_to picture_url(p.id)
  end
end

















