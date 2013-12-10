class RequestsController < ApplicationController

before_action(:authorize_user)

def authorize_user
  unless user_signed_in?
    redirect_to new_user_session_path, notice: "You must be signed in."
  end
end

CATEGORIES = ['business', 'leisure']

  def index
    @requests = Request.all
  end

  def show
    @request = Request.find_by(id: params[:id])
  end

  def new
    @request = Request.new
  end

  def create
    @request = Request.new
    @request.user_id = current_user.id
    @request.created_date = params[:created_date]
    @request.trip_start_date = params[:trip_start_date]
    @request.trip_end_date = params[:trip_end_date]
    @request.travel_to_city = params[:travel_to_city]
    @request.travel_to_state = params[:travel_to_state]
    @request.category = params[:category]
    @request.request_text = params[:request_text]

    if @request.save
      redirect_to requests_url, notice: "Request created successfully."
    else
      render 'new'
    end
  end

  def edit
    @request = Request.find_by(id: params[:id])
  end

  def update
    @request = Request.find_by(id: params[:id])
    @request.user_id = params[:user_id]
    @request.created_date = params[:created_date]
    @request.trip_start_date = params[:trip_start_date]
    @request.trip_end_date = params[:trip_end_date]
    @request.travel_to_city = params[:travel_to_city]
    @request.travel_to_state = params[:travel_to_state]
    @request.category = params[:category]
    @request.request_text = params[:request_text]

    if @request.save
      redirect_to requests_url, notice: "Request updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @request = Request.find_by(id: params[:id])
    @request.destroy

    redirect_to requests_url, notice: "Request deleted."
  end
end
