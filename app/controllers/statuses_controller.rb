class StatusesController < ApplicationController
  before_action :set_status, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: :index
  before_action :verify_admin, except: :index

  layout 'admin', except: ['index']
  # layout 'clean', only: ['index']

  # GET /statuses
  def index
    @page_title = "System Status"
    @title_tag = "#{Settings.site_name}: #{@page_title}"
    @meta_desc = "See the current status of #{Settings.site_name} systems here."
    @keywords = "System Status"

    add_breadcrumb "Status Board"
    @statuses = Status.all
  end

  def admin
    @statuses = Status.all
  end

  # GET /statuses/1
  def show
  end

  # GET /statuses/new
  def new
    @status = Status.new
  end

  # GET /statuses/1/edit
  def edit
  end

  # POST /statuses
  def create
    @status = Status.new(status_params)

    if @status.save
      redirect_to admin_status_path
    else
      render :new
    end
  end

  # PATCH/PUT /statuses/1
  def update
    if @status.update(status_params)
      redirect_to admin_status_path
    else
      render :edit
    end
  end

  # DELETE /statuses/1
  def destroy
    @status.destroy
    redirect_to admin_status_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_status
      @status = Status.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def status_params
      params.require(:status).permit(:service, :description, :status, :active)
    end

    def verify_admin
      (current_user.nil?) ? redirect_to(root_path) : (redirect_to(root_path) unless current_user.admin?)
    end




end
