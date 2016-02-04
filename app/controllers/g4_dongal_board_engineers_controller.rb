class G4DongalBoardEngineersController < ApplicationController
  before_action :set_g4_dongal_board_engineer, only: [:show, :edit, :update, :destroy]

  # GET /g4_dongal_board_engineers
  # GET /g4_dongal_board_engineers.json
  def index
    @g4_dongal_board_engineers = G4DongalBoardEngineer.all
  end

  # GET /g4_dongal_board_engineers/1
  # GET /g4_dongal_board_engineers/1.json
  def show
  end

  # GET /g4_dongal_board_engineers/new
  def new
    @g4_dongal_board_engineer = G4DongalBoardEngineer.new
  end

  # GET /g4_dongal_board_engineers/1/edit
  def edit
  end

  # POST /g4_dongal_board_engineers
  # POST /g4_dongal_board_engineers.json
  def create
    @g4_dongal_board_engineer = G4DongalBoardEngineer.new(g4_dongal_board_engineer_params)

    respond_to do |format|
      if @g4_dongal_board_engineer.save
        format.html { redirect_to @g4_dongal_board_engineer, notice: 'G4 dongal board engineer was successfully created.' }
        format.json { render :show, status: :created, location: @g4_dongal_board_engineer }
      else
        format.html { render :new }
        format.json { render json: @g4_dongal_board_engineer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /g4_dongal_board_engineers/1
  # PATCH/PUT /g4_dongal_board_engineers/1.json
  def update
    respond_to do |format|
      if @g4_dongal_board_engineer.update(g4_dongal_board_engineer_params)
        format.html { redirect_to @g4_dongal_board_engineer, notice: 'G4 dongal board engineer was successfully updated.' }
        format.json { render :show, status: :ok, location: @g4_dongal_board_engineer }
      else
        format.html { render :edit }
        format.json { render json: @g4_dongal_board_engineer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /g4_dongal_board_engineers/1
  # DELETE /g4_dongal_board_engineers/1.json
  def destroy
    @g4_dongal_board_engineer.destroy
    respond_to do |format|
      format.html { redirect_to g4_dongal_board_engineers_url, notice: 'G4 dongal board engineer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_g4_dongal_board_engineer
      @g4_dongal_board_engineer = G4DongalBoardEngineer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def g4_dongal_board_engineer_params
      params.require(:g4_dongal_board_engineer).permit(:wr_title, :wr_link, :wr_writer, :wr_created_on)
    end
end
