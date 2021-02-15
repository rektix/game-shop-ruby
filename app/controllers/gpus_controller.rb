class GpusController < ApplicationController
  before_action :set_gpu, only: %i[ show edit update destroy ]
  before_action :is_admin?

  # GET /gpus or /gpus.json
  def index
    @gpus = Gpu.all
  end

  # GET /gpus/1 or /gpus/1.json
  def show
  end

  # GET /gpus/new
  def new
    @gpu = Gpu.new
  end

  # GET /gpus/1/edit
  def edit
  end

  # POST /gpus or /gpus.json
  def create
    @gpu = Gpu.new(gpu_params)

    respond_to do |format|
      if @gpu.save
        format.html { redirect_to @gpu, notice: "Gpu was successfully created." }
        format.json { render :show, status: :created, location: @gpu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gpu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gpus/1 or /gpus/1.json
  def update
    respond_to do |format|
      if @gpu.update(gpu_params)
        format.html { redirect_to @gpu, notice: "Gpu was successfully updated." }
        format.json { render :show, status: :ok, location: @gpu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gpu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gpus/1 or /gpus/1.json
  def destroy
    @gpu.destroy
    respond_to do |format|
      format.html { redirect_to gpus_url, notice: "Gpu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gpu
      @gpu = Gpu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gpu_params
      params.require(:gpu).permit(:name, :ram)
    end
end
