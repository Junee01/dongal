class G4DongalBoardLivesController < ApplicationController
  before_action :set_g4_dongal_board_life, only: [:show, :edit, :update, :destroy]

  # GET /g4_dongal_board_lives
  # GET /g4_dongal_board_lives.json
  def index
    @g4_dongal_board_lives = G4DongalBoardLife.all
  end

  # GET /g4_dongal_board_lives/1
  # GET /g4_dongal_board_lives/1.json
  def show
  end

  # GET /g4_dongal_board_lives/new
  def new
    @g4_dongal_board_life = G4DongalBoardLife.new
  end

  # GET /g4_dongal_board_lives/1/edit
  def edit
  end

  # POST /g4_dongal_board_lives
  # POST /g4_dongal_board_lives.json
  def create
    @g4_dongal_board_life = G4DongalBoardLife.new(g4_dongal_board_life_params)

    respond_to do |format|
      if @g4_dongal_board_life.save
        format.html { redirect_to @g4_dongal_board_life, notice: 'G4 dongal board life was successfully created.' }
        format.json { render :show, status: :created, location: @g4_dongal_board_life }
      else
        format.html { render :new }
        format.json { render json: @g4_dongal_board_life.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /g4_dongal_board_lives/1
  # PATCH/PUT /g4_dongal_board_lives/1.json
  def update
    respond_to do |format|
      if @g4_dongal_board_life.update(g4_dongal_board_life_params)
        format.html { redirect_to @g4_dongal_board_life, notice: 'G4 dongal board life was successfully updated.' }
        format.json { render :show, status: :ok, location: @g4_dongal_board_life }
      else
        format.html { render :edit }
        format.json { render json: @g4_dongal_board_life.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /g4_dongal_board_lives/1
  # DELETE /g4_dongal_board_lives/1.json
  def destroy
    @g4_dongal_board_life.destroy
    respond_to do |format|
      format.html { redirect_to g4_dongal_board_lives_url, notice: 'G4 dongal board life was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_g4_dongal_board_life
      @g4_dongal_board_life = G4DongalBoardLife.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def g4_dongal_board_life_params
      params.require(:g4_dongal_board_life).permit(:wr_title, :wr_link, :wr_writer, :wr_created_on)
    end
end
