class LogOperadorVirtualsController < ApplicationController
  before_action :set_log_operador_virtual, only: [:show, :edit, :update, :destroy]

  # GET /log_operador_virtuals
  # GET /log_operador_virtuals.json
  def index
    @log_operador_virtuals = LogOperadorVirtual.all
  end

  # GET /log_operador_virtuals/1
  # GET /log_operador_virtuals/1.json
  def show
  end

  # GET /log_operador_virtuals/new
  def new
    @log_operador_virtual = LogOperadorVirtual.new
  end

  # GET /log_operador_virtuals/1/edit
  def edit
  end

  # POST /log_operador_virtuals
  # POST /log_operador_virtuals.json
  def create
    @log_operador_virtual = LogOperadorVirtual.new(log_operador_virtual_params)

    respond_to do |format|
      if @log_operador_virtual.save
        format.html { redirect_to @log_operador_virtual, notice: 'Log operador virtual was successfully created.' }
        format.json { render :show, status: :created, location: @log_operador_virtual }
      else
        format.html { render :new }
        format.json { render json: @log_operador_virtual.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /log_operador_virtuals/1
  # PATCH/PUT /log_operador_virtuals/1.json
  def update
    respond_to do |format|
      if @log_operador_virtual.update(log_operador_virtual_params)
        format.html { redirect_to @log_operador_virtual, notice: 'Log operador virtual was successfully updated.' }
        format.json { render :show, status: :ok, location: @log_operador_virtual }
      else
        format.html { render :edit }
        format.json { render json: @log_operador_virtual.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /log_operador_virtuals/1
  # DELETE /log_operador_virtuals/1.json
  def destroy
    @log_operador_virtual.destroy
    respond_to do |format|
      format.html { redirect_to log_operador_virtuals_url, notice: 'Log operador virtual was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_log_operador_virtual
      @log_operador_virtual = LogOperadorVirtual.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def log_operador_virtual_params
      params.require(:log_operador_virtual).permit(:operador_virtual_id, :tipo, :mensaje, :fecha)
    end
end
