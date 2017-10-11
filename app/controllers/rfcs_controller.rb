class RfcsController < ApplicationController
  before_action :set_rfc, only: [:show, :edit, :update, :destroy]

  # GET /rfcs
  # GET /rfcs.json
  def index
    @rfcs = Rfc.all
  end

  # GET /rfcs/1
  # GET /rfcs/1.json
  def show
  end

  # GET /rfcs/new
  def new
    @rfc = Rfc.new
  end

  # GET /rfcs/1/edit
  def edit
  end

  # POST /rfcs
  # POST /rfcs.json
  def create
    @rfc = Rfc.new(rfc_params)

    respond_to do |format|
      if @rfc.save
        format.html { redirect_to @rfc, notice: 'Rfc was successfully created.' }
        format.json { render :show, status: :created, location: @rfc }
      else
        format.html { render :new }
        format.json { render json: @rfc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rfcs/1
  # PATCH/PUT /rfcs/1.json
  def update
    respond_to do |format|
      if @rfc.update(rfc_params)
        format.html { redirect_to @rfc, notice: 'Rfc was successfully updated.' }
        format.json { render :show, status: :ok, location: @rfc }
      else
        format.html { render :edit }
        format.json { render json: @rfc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rfcs/1
  # DELETE /rfcs/1.json
  def destroy
    @rfc.destroy
    respond_to do |format|
      format.html { redirect_to rfcs_url, notice: 'Rfc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rfc
      @rfc = Rfc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rfc_params
      params.require(:rfc).permit(:name, :rfc, :address, :phone, :email, :userId, :count)
    end
end
