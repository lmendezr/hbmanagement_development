class SeccionesController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_seccione, only: [:show, :edit, :update, :destroy]

  # GET /secciones
  # GET /secciones.json
  def index
    @secciones = Seccione.all
  end

  # GET /secciones/1
  # GET /secciones/1.json
  def show
  end

  # GET /secciones/new
  def new
    @seccione = Seccione.new
  end

  # GET /secciones/1/edit
  def edit
  end

  # POST /secciones
  # POST /secciones.json
  def create
    @seccione = Seccione.new(seccione_params)

    respond_to do |format|
      if @seccione.save
        format.html { redirect_to @seccione, notice: 'Seccione was successfully created.' }
        format.json { render :show, status: :created, location: @seccione }
      else
        format.html { render :new }
        format.json { render json: @seccione.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /secciones/1
  # PATCH/PUT /secciones/1.json
  def update
    respond_to do |format|
      if @seccione.update(seccione_params)
        format.html { redirect_to @seccione, notice: 'Seccione was successfully updated.' }
        format.json { render :show, status: :ok, location: @seccione }
      else
        format.html { render :edit }
        format.json { render json: @seccione.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /secciones/1
  # DELETE /secciones/1.json
  def destroy
    @seccione.destroy
    respond_to do |format|
      format.html { redirect_to secciones_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seccione
      @seccione = Seccione.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seccione_params
      params.require(:seccione).permit(:nombre, :porcentaje_componente, :valor_obtenido, :area_id)
    end
end
