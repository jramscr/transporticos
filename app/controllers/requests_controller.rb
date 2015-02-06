class RequestsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_request, only: [:show, :edit, :update, :destroy]

  def index
    @requests = Request.where(user:current_user)
  end

  def new
    @request = Request.new
  end

  def create
    @request = Request.new(request_params)
    @request.user_id = current_user.id
    if @request.save
      RequestMailer.request_published(@request).deliver_now
      redirect_to users_path
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @request.update(request_params)
      redirect_to users_path
    end
  end

  def destroy
    @request.destroy
  end

  private

  def request_params
    params.require(:request).permit(
      :pick_date,
      :departure_direction,
      :deliver_date,
      :arrival_direction,
      :budget
      )
  end

  def find_request
    @request = Request.find(params[:id])
  end
end
