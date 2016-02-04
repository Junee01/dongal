class G4DongalBoardEntrancesController < ApplicationController
  before_action :set_g4_dongal_board_entrance, only: [:show, :edit, :update, :destroy]

  # GET /g4_dongal_board_entrances
  # GET /g4_dongal_board_entrances.json
  def index
    @g4_dongal_board_entrances = G4DongalBoardEntrance.all
  end

  # GET /g4_dongal_board_entrances/1
  # GET /g4_dongal_board_entrances/1.json
  def show
  end

  # GET /g4_dongal_board_entrances/new
  def new
    @g4_dongal_board_entrance = G4DongalBoardEntrance.new
  end

  # GET /g4_dongal_board_entrances/1/edit
  def edit
  end

  # POST /g4_dongal_board_entrances
  # POST /g4_dongal_board_entrances.json
  def create
    @g4_dongal_board_entrance = G4DongalBoardEntrance.new(g4_dongal_board_entrance_params)

    respond_to do |format|
      if @g4_dongal_board_entrance.save
        format.html { redirect_to @g4_dongal_board_entrance, notice: 'G4 dongal board entrance was successfully created.' }
        format.json { render :show, status: :created, location: @g4_dongal_board_entrance }
      else
        format.html { render :new }
        format.json { render json: @g4_dongal_board_entrance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /g4_dongal_board_entrances/1
  # PATCH/PUT /g4_dongal_board_entrances/1.json
  def update
    respond_to do |format|
      if @g4_dongal_board_entrance.update(g4_dongal_board_entrance_params)
        format.html { redirect_to @g4_dongal_board_entrance, notice: 'G4 dongal board entrance was successfully updated.' }
        format.json { render :show, status: :ok, location: @g4_dongal_board_entrance }
      else
        format.html { render :edit }
        format.json { render json: @g4_dongal_board_entrance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /g4_dongal_board_entrances/1
  # DELETE /g4_dongal_board_entrances/1.json
  def destroy
    @g4_dongal_board_entrance.destroy
    respond_to do |format|
      format.html { redirect_to g4_dongal_board_entrances_url, notice: 'G4 dongal board entrance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_g4_dongal_board_entrance
      @g4_dongal_board_entrance = G4DongalBoardEntrance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def g4_dongal_board_entrance_params
      params.require(:g4_dongal_board_entrance).permit(:wr_title, :wr_link, :wr_writer, :wr_created_on)
    end
end
