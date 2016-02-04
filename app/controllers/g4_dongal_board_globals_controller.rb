class G4DongalBoardGlobalsController < ApplicationController
  before_action :set_g4_dongal_board_global, only: [:show, :edit, :update, :destroy]

  # GET /g4_dongal_board_globals
  # GET /g4_dongal_board_globals.json
  def index
    @g4_dongal_board_globals = G4DongalBoardGlobal.all
  end

  # GET /g4_dongal_board_globals/1
  # GET /g4_dongal_board_globals/1.json
  def show
  end

  # GET /g4_dongal_board_globals/new
  def new
    @g4_dongal_board_global = G4DongalBoardGlobal.new
  end

  # GET /g4_dongal_board_globals/1/edit
  def edit
  end

  # POST /g4_dongal_board_globals
  # POST /g4_dongal_board_globals.json
  def create
    @g4_dongal_board_global = G4DongalBoardGlobal.new(g4_dongal_board_global_params)

    respond_to do |format|
      if @g4_dongal_board_global.save
        format.html { redirect_to @g4_dongal_board_global, notice: 'G4 dongal board global was successfully created.' }
        format.json { render :show, status: :created, location: @g4_dongal_board_global }
      else
        format.html { render :new }
        format.json { render json: @g4_dongal_board_global.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /g4_dongal_board_globals/1
  # PATCH/PUT /g4_dongal_board_globals/1.json
  def update
    respond_to do |format|
      if @g4_dongal_board_global.update(g4_dongal_board_global_params)
        format.html { redirect_to @g4_dongal_board_global, notice: 'G4 dongal board global was successfully updated.' }
        format.json { render :show, status: :ok, location: @g4_dongal_board_global }
      else
        format.html { render :edit }
        format.json { render json: @g4_dongal_board_global.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /g4_dongal_board_globals/1
  # DELETE /g4_dongal_board_globals/1.json
  def destroy
    @g4_dongal_board_global.destroy
    respond_to do |format|
      format.html { redirect_to g4_dongal_board_globals_url, notice: 'G4 dongal board global was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_g4_dongal_board_global
      @g4_dongal_board_global = G4DongalBoardGlobal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def g4_dongal_board_global_params
      params.require(:g4_dongal_board_global).permit(:wr_title, :wr_link, :wr_writer, :wr_created_on)
    end
end
