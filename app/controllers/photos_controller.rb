class PhotosController < ApplicationController

before_action(:authorize_user)

def authorize_user
  unless user_signed_in?
    redirect_to new_user_session_path, notice: "You must be signed in."
  end
end

  def index
    @photos = Photo.all
  end

  def show
    @photo = Photo.find_by(id: params[:id])
  end

  def new
  end

  def create
    @photo = Photo.new
    @photo.reply_id = params[:reply_id]
    @photo.photo_url = params[:photo_url]
    @photo.photo_caption = params[:photo_caption]
  
    if @photo.save
      redirect_to photos_url, notice: "Photo created successfully."
    else
      render 'new'
    end
  end

  def edit
    @photo = Photo.find_by(id: params[:id])
  end

  def update
    @photo = Photo.find_by(id: params[:id])
    @photo.reply_id = params[:reply_id]
    @photo.photo_url = params[:photo_url]
    @photo.photo_caption = params[:photo_caption]

    if @photo.save
      redirect_to photos_url, notice: "Photo updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @photo = Photo.find_by(id: params[:id])
    @photo.destroy

    redirect_to photos_url, notice: "Photo deleted."
  end
end
