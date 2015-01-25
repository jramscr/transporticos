class RequestsController < ApplicationController
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
    1/0
    if @request.save
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
      :direction_to_pick_id_attributes[ :province_id, :township_id, :district_id, :description ],
      :deliver_date,
      :direction_to_deliver_id_attributes[ :province_id, :township_id, :district_id, :description ],
      :budget
      )
  end

  def find_request
    @request = current_user.request.find(params[:id])
  end
end
