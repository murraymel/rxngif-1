class PicturesController < ApplicationController

  def destroy
    @pic = Picture.find_by_id(params[:id])
    @pic.destroy

    respond_to do |format|
      format.js
      format.html { redirect_to pictures_url }
    end
  end

  def index
    @pictures = Picture.order("id DESC").limit(5)
  end

  def show
    @pic = Picture.find_by_id(params[:id])
  end

  def new

  end

  def create
    @pic = Picture.new

    @pic.source = params[:source]
    @pic.caption = params[:caption]
    @pic.favorite = params[:favorite]
    @pic.save

    respond_to do |format|
      format.js
      format.html { redirect_to pictures_url }
    end
  end

  def edit
    @pic = Picture.find_by_id(params[:id])

    respond_to do |format|
      format.js
      format.html
    end
  end

  def update
    @pic = Picture.find_by_id(params[:id])
    @pic.source = params[:source]
    @pic.caption = params[:caption]
    @pic.favorite = params[:favorite]
    @pic.save
    respond_to do |format|
      format.js
      format.html {redirect_to picture_url(@pic.id)}
    end
  end
end

















