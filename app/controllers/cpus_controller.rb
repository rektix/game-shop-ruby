class CpusController < ApplicationController
  before_action :set_cpu, only: %i[ show edit update destroy ]
  before_action :is_admin?

  # GET /cpus or /cpus.json
  def index
    @cpus = Cpu.all
  end

  # GET /cpus/1 or /cpus/1.json
  def show
  end

  # GET /cpus/new
  def new
    @cpu = Cpu.new
  end

  # GET /cpus/1/edit
  def edit
  end

  # POST /cpus or /cpus.json
  def create
    @cpu = Cpu.new(cpu_params)

    respond_to do |format|
      if @cpu.save
        format.html { redirect_to @cpu, notice: "Cpu was successfully created." }
        format.json { render :show, status: :created, location: @cpu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cpu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cpus/1 or /cpus/1.json
  def update
    respond_to do |format|
      if @cpu.update(cpu_params)
        format.html { redirect_to @cpu, notice: "Cpu was successfully updated." }
        format.json { render :show, status: :ok, location: @cpu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cpu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cpus/1 or /cpus/1.json
  def destroy
    @cpu.destroy
    respond_to do |format|
      format.html { redirect_to cpus_url, notice: "Cpu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cpu
      @cpu = Cpu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cpu_params
      params.require(:cpu).permit(:name, :cores)
    end
end
