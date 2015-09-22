class CentroUsuariosController < ApplicationController
  before_action :set_centro_usuario, only: [:show, :edit, :update, :destroy]

  # GET /centro_usuarios
  # GET /centro_usuarios.json
  def index
    @centro_usuarios = CentroUsuario.all
  end

  # GET /centro_usuarios/1
  # GET /centro_usuarios/1.json
  def show
  end

  # GET /centro_usuarios/new
  def new
    @centro_usuario = CentroUsuario.new
  end

  # GET /centro_usuarios/1/edit
  def edit
  end

  # POST /centro_usuarios
  # POST /centro_usuarios.json
  def create
    @centro_usuario = CentroUsuario.new(centro_usuario_params)

    respond_to do |format|
      if @centro_usuario.save
        format.html { redirect_to @centro_usuario, notice: 'Centro usuario was successfully created.' }
        format.json { render :show, status: :created, location: @centro_usuario }
      else
        format.html { render :new }
        format.json { render json: @centro_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /centro_usuarios/1
  # PATCH/PUT /centro_usuarios/1.json
  def update
    respond_to do |format|
      if @centro_usuario.update(centro_usuario_params)
        format.html { redirect_to @centro_usuario, notice: 'Centro usuario was successfully updated.' }
        format.json { render :show, status: :ok, location: @centro_usuario }
      else
        format.html { render :edit }
        format.json { render json: @centro_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /centro_usuarios/1
  # DELETE /centro_usuarios/1.json
  def destroy
    @centro_usuario.destroy
    respond_to do |format|
      format.html { redirect_to centro_usuarios_url, notice: 'Centro usuario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_centro_usuario
      @centro_usuario = CentroUsuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def centro_usuario_params
      params.require(:centro_usuario).permit(:usuario_id, :centro_id, :rol)
    end
end
