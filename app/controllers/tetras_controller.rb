class TetrasController < ApplicationController
  before_action :set_tetra, only: [:show, :edit, :update, :destroy]

  # GET /tetras
  # GET /tetras.json
  def index
    @tetras = Tetra.all
  end

  # GET /tetras/1
  # GET /tetras/1.json
  def show
  end

  # GET /tetras/new
  def new
    @tetra = Tetra.new
  end

  # GET /tetras/1/edit
  def edit
  end

  # POST /tetras
  # POST /tetras.json
  def create
    @tetra = Tetra.new(tetra_params)

    respond_to do |format|
      if @tetra.save
        format.html { redirect_to @tetra, notice: 'Tetra was successfully created.' }
        format.json { render :show, status: :created, location: @tetra }
      else
        format.html { render :new }
        format.json { render json: @tetra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tetras/1
  # PATCH/PUT /tetras/1.json
  def update
    respond_to do |format|
      if @tetra.update(tetra_params)
        format.html { redirect_to @tetra, notice: 'Tetra was successfully updated.' }
        format.json { render :show, status: :ok, location: @tetra }
      else
        format.html { render :edit }
        format.json { render json: @tetra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tetras/1
  # DELETE /tetras/1.json
  def destroy
    @tetra.destroy
    respond_to do |format|
      format.html { redirect_to tetras_url, notice: 'Tetra was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tetra
      @tetra = Tetra.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tetra_params
      params.require(:tetra).permit(:issi, :dispositivo_id)
    end
end
