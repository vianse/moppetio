class CompartirsController < ApplicationController
  before_action :set_compartir, only: [:show, :edit, :update, :destroy]

  # GET /compartirs
  # GET /compartirs.json
  def index
    @compartirs = Compartir.all
  end

  # GET /compartirs/1
  # GET /compartirs/1.json
  def show
  end

  # GET /compartirs/new
  def new
    @compartir = Compartir.new
  end

  # GET /compartirs/1/edit
  def edit
  end

  # POST /compartirs
  # POST /compartirs.json
  def create
    @compartir = Compartir.new(compartir_params)

    respond_to do |format|
      if @compartir.save
        format.html { redirect_to @compartir, notice: 'Compartir was successfully created.' }
        format.json { render :show, status: :created, location: @compartir }
      else
        format.html { render :new }
        format.json { render json: @compartir.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /compartirs/1
  # PATCH/PUT /compartirs/1.json
  def update
    respond_to do |format|
      if @compartir.update(compartir_params)
        format.html { redirect_to @compartir, notice: 'Compartir was successfully updated.' }
        format.json { render :show, status: :ok, location: @compartir }
      else
        format.html { render :edit }
        format.json { render json: @compartir.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /compartirs/1
  # DELETE /compartirs/1.json
  def destroy
    @compartir.destroy
    respond_to do |format|
      format.html { redirect_to compartirs_url, notice: 'Compartir was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_compartir
      @compartir = Compartir.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def compartir_params
      params.require(:compartir).permit(:name, :rfc, :address, :phone, :email, :token, :uid)
    end
end
