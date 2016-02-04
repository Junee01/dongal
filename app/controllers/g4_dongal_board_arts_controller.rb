class G4DongalBoardArtsController < ApplicationController
  before_action :set_g4_dongal_board_art, only: [:show, :edit, :update, :destroy]

  # GET /g4_dongal_board_arts
  # GET /g4_dongal_board_arts.json
  def index
    @g4_dongal_board_arts = G4DongalBoardArt.all
  end

  # GET /g4_dongal_board_arts/1
  # GET /g4_dongal_board_arts/1.json
  def show
  end

  # GET /g4_dongal_board_arts/new
  def new
    @g4_dongal_board_art = G4DongalBoardArt.new
  end

  # GET /g4_dongal_board_arts/1/edit
  def edit
  end

  # POST /g4_dongal_board_arts
  # POST /g4_dongal_board_arts.json
  def create
    @g4_dongal_board_art = G4DongalBoardArt.new(g4_dongal_board_art_params)

    respond_to do |format|
      if @g4_dongal_board_art.save
        format.html { redirect_to @g4_dongal_board_art, notice: 'G4 dongal board art was successfully created.' }
        format.json { render :show, status: :created, location: @g4_dongal_board_art }
      else
        format.html { render :new }
        format.json { render json: @g4_dongal_board_art.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /g4_dongal_board_arts/1
  # PATCH/PUT /g4_dongal_board_arts/1.json
  def update
    respond_to do |format|
      if @g4_dongal_board_art.update(g4_dongal_board_art_params)
        format.html { redirect_to @g4_dongal_board_art, notice: 'G4 dongal board art was successfully updated.' }
        format.json { render :show, status: :ok, location: @g4_dongal_board_art }
      else
        format.html { render :edit }
        format.json { render json: @g4_dongal_board_art.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /g4_dongal_board_arts/1
  # DELETE /g4_dongal_board_arts/1.json
  def destroy
    @g4_dongal_board_art.destroy
    respond_to do |format|
      format.html { redirect_to g4_dongal_board_arts_url, notice: 'G4 dongal board art was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_g4_dongal_board_art
      @g4_dongal_board_art = G4DongalBoardArt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def g4_dongal_board_art_params
      params.require(:g4_dongal_board_art).permit(:wr_title, :wr_link, :wr_writer, :wr_created_on)
    end
end
