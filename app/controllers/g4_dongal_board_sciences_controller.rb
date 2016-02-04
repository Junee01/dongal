class G4DongalBoardSciencesController < ApplicationController
  before_action :set_g4_dongal_board_science, only: [:show, :edit, :update, :destroy]

  # GET /g4_dongal_board_sciences
  # GET /g4_dongal_board_sciences.json
  def index
    @g4_dongal_board_sciences = G4DongalBoardScience.all
  end

  # GET /g4_dongal_board_sciences/1
  # GET /g4_dongal_board_sciences/1.json
  def show
  end

  # GET /g4_dongal_board_sciences/new
  def new
    @g4_dongal_board_science = G4DongalBoardScience.new
  end

  # GET /g4_dongal_board_sciences/1/edit
  def edit
  end

  # POST /g4_dongal_board_sciences
  # POST /g4_dongal_board_sciences.json
  def create
    @g4_dongal_board_science = G4DongalBoardScience.new(g4_dongal_board_science_params)

    respond_to do |format|
      if @g4_dongal_board_science.save
        format.html { redirect_to @g4_dongal_board_science, notice: 'G4 dongal board science was successfully created.' }
        format.json { render :show, status: :created, location: @g4_dongal_board_science }
      else
        format.html { render :new }
        format.json { render json: @g4_dongal_board_science.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /g4_dongal_board_sciences/1
  # PATCH/PUT /g4_dongal_board_sciences/1.json
  def update
    respond_to do |format|
      if @g4_dongal_board_science.update(g4_dongal_board_science_params)
        format.html { redirect_to @g4_dongal_board_science, notice: 'G4 dongal board science was successfully updated.' }
        format.json { render :show, status: :ok, location: @g4_dongal_board_science }
      else
        format.html { render :edit }
        format.json { render json: @g4_dongal_board_science.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /g4_dongal_board_sciences/1
  # DELETE /g4_dongal_board_sciences/1.json
  def destroy
    @g4_dongal_board_science.destroy
    respond_to do |format|
      format.html { redirect_to g4_dongal_board_sciences_url, notice: 'G4 dongal board science was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_g4_dongal_board_science
      @g4_dongal_board_science = G4DongalBoardScience.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def g4_dongal_board_science_params
      params.require(:g4_dongal_board_science).permit(:wr_title, :wr_link, :wr_writer, :wr_created_on)
    end
end
