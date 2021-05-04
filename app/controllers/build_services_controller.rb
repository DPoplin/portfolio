class BuildServicesController < ApplicationController
  before_action :set_build_service, only: %i[ show edit update destroy ]

  # GET /build_services or /build_services.json
  def index
    @build_services = BuildService.all
  end

  # GET /build_services/1 or /build_services/1.json
  def show
  end

  # GET /build_services/new
  def new
    @build_service = BuildService.new
  end

  # GET /build_services/1/edit
  def edit
  end

  # POST /build_services or /build_services.json
  def create
    @build_service = BuildService.new(build_service_params)

    respond_to do |format|
      if @build_service.save
        format.html { redirect_to @build_service, notice: "Build service was successfully created." }
        format.json { render :show, status: :created, location: @build_service }
        # send email to me with build service details
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @build_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /build_services/1 or /build_services/1.json
  def update
    respond_to do |format|
      if @build_service.update(build_service_params)
        format.html { redirect_to @build_service, notice: "Build service was successfully updated." }
        format.json { render :show, status: :ok, location: @build_service }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @build_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /build_services/1 or /build_services/1.json
  def destroy
    @build_service.destroy
    respond_to do |format|
      format.html { redirect_to build_services_url, notice: "Build service was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_build_service
      @build_service = BuildService.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def build_service_params
      params.require(:build_service).permit(:name, :email, :keyboard, :switches, :lube_service, :build_timeline, :address, :paypal)
    end
end
