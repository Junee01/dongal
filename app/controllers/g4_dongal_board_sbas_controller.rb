class G4DongalBoardSbasController < ApplicationController
  before_action :set_g4_dongal_board_sba, only: [:show, :edit, :update, :destroy]

  # GET /g4_dongal_board_sbas
  # GET /g4_dongal_board_sbas.json
  def index
    @g4_dongal_board_sbas = G4DongalBoardSba.all
  end

  # GET /g4_dongal_board_sbas/1
  # GET /g4_dongal_board_sbas/1.json
  def show
  end

  # GET /g4_dongal_board_sbas/new
  def new
    @g4_dongal_board_sba = G4DongalBoardSba.new
  end

  # GET /g4_dongal_board_sbas/1/edit
  def edit
  end

  # POST /g4_dongal_board_sbas
  # POST /g4_dongal_board_sbas.json
  def create
    @g4_dongal_board_sba = G4DongalBoardSba.new(g4_dongal_board_sba_params)

    respond_to do |format|
      if @g4_dongal_board_sba.save
        format.html { redirect_to @g4_dongal_board_sba, notice: 'G4 dongal board sba was successfully created.' }
        format.json { render :show, status: :created, location: @g4_dongal_board_sba }
      else
        format.html { render :new }
        format.json { render json: @g4_dongal_board_sba.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /g4_dongal_board_sbas/1
  # PATCH/PUT /g4_dongal_board_sbas/1.json
  def update
    respond_to do |format|
      if @g4_dongal_board_sba.update(g4_dongal_board_sba_params)
        format.html { redirect_to @g4_dongal_board_sba, notice: 'G4 dongal board sba was successfully updated.' }
        format.json { render :show, status: :ok, location: @g4_dongal_board_sba }
      else
        format.html { render :edit }
        format.json { render json: @g4_dongal_board_sba.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /g4_dongal_board_sbas/1
  # DELETE /g4_dongal_board_sbas/1.json
  def destroy
    @g4_dongal_board_sba.destroy
    respond_to do |format|
      format.html { redirect_to g4_dongal_board_sbas_url, notice: 'G4 dongal board sba was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_g4_dongal_board_sba
      @g4_dongal_board_sba = G4DongalBoardSba.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def g4_dongal_board_sba_params
      params.require(:g4_dongal_board_sba).permit(:wr_title, :wr_link, :wr_writer, :wr_created_on)
    end
end
