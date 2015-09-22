class OperadorVirtualsController < ApplicationController
  before_action :set_operador_virtual, only: [:show, :edit, :update, :destroy]

  # GET /operador_virtuals
  # GET /operador_virtuals.json
  def index
    @operador_virtuals = OperadorVirtual.all
  end

  # GET /operador_virtuals/1
  # GET /operador_virtuals/1.json
  def show
  end

  # GET /operador_virtuals/new
  def new
    @operador_virtual = OperadorVirtual.new
  end

  # GET /operador_virtuals/1/edit
  def edit
  end

  # POST /operador_virtuals
  # POST /operador_virtuals.json
  def create
    @operador_virtual = OperadorVirtual.new(operador_virtual_params)

    respond_to do |format|
      if @operador_virtual.save
        format.html { redirect_to @operador_virtual, notice: 'Operador virtual was successfully created.' }
        format.json { render :show, status: :created, location: @operador_virtual }
      else
        format.html { render :new }
        format.json { render json: @operador_virtual.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /operador_virtuals/1
  # PATCH/PUT /operador_virtuals/1.json
  def update
    respond_to do |format|
      if @operador_virtual.update(operador_virtual_params)
        format.html { redirect_to @operador_virtual, notice: 'Operador virtual was successfully updated.' }
        format.json { render :show, status: :ok, location: @operador_virtual }
      else
        format.html { render :edit }
        format.json { render json: @operador_virtual.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /operador_virtuals/1
  # DELETE /operador_virtuals/1.json
  def destroy
    @operador_virtual.destroy
    respond_to do |format|
      format.html { redirect_to operador_virtuals_url, notice: 'Operador virtual was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_operador_virtual
      @operador_virtual = OperadorVirtual.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def operador_virtual_params
      params.require(:operador_virtual).permit(:user_id, :descripcion)
    end
end
