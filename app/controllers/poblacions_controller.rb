class PoblacionsController < ApplicationController
  before_action :set_poblacion, only: [:show, :edit, :update, :destroy]

  # GET /poblacions
  # GET /poblacions.json
  def index
    @poblacions = Poblacion.all
  end

  # GET /poblacions/1
  # GET /poblacions/1.json
  def show
  end

  # GET /poblacions/new
  def new
    @poblacion = Poblacion.new
  end

  # GET /poblacions/1/edit
  def edit
  end

  # POST /poblacions
  # POST /poblacions.json
  def create
    @poblacion = Poblacion.new(poblacion_params)

    respond_to do |format|
      if @poblacion.save
        format.html { redirect_to @poblacion, notice: 'Poblacion was successfully created.' }
        format.json { render :show, status: :created, location: @poblacion }
      else
        format.html { render :new }
        format.json { render json: @poblacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poblacions/1
  # PATCH/PUT /poblacions/1.json
  def update
    respond_to do |format|
      if @poblacion.update(poblacion_params)
        format.html { redirect_to @poblacion, notice: 'Poblacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @poblacion }
      else
        format.html { render :edit }
        format.json { render json: @poblacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poblacions/1
  # DELETE /poblacions/1.json
  def destroy
    @poblacion.destroy
    respond_to do |format|
      format.html { redirect_to poblacions_url, notice: 'Poblacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poblacion
      @poblacion = Poblacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def poblacion_params
      params.require(:poblacion).permit(:centro_id, :nombre, :codigo, :pl, :gc, :epes)
    end
end
