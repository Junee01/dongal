class G4DongalBoardScholarsController < ApplicationController
  before_action :set_g4_dongal_board_scholar, only: [:show, :edit, :update, :destroy]

  # GET /g4_dongal_board_scholars
  # GET /g4_dongal_board_scholars.json
  def index
    @g4_dongal_board_scholars = G4DongalBoardScholar.all
  end

  # GET /g4_dongal_board_scholars/1
  # GET /g4_dongal_board_scholars/1.json
  def show
  end

  # GET /g4_dongal_board_scholars/new
  def new
    @g4_dongal_board_scholar = G4DongalBoardScholar.new
  end

  # GET /g4_dongal_board_scholars/1/edit
  def edit
  end

  # POST /g4_dongal_board_scholars
  # POST /g4_dongal_board_scholars.json
  def create
    @g4_dongal_board_scholar = G4DongalBoardScholar.new(g4_dongal_board_scholar_params)

    respond_to do |format|
      if @g4_dongal_board_scholar.save
        format.html { redirect_to @g4_dongal_board_scholar, notice: 'G4 dongal board scholar was successfully created.' }
        format.json { render :show, status: :created, location: @g4_dongal_board_scholar }
      else
        format.html { render :new }
        format.json { render json: @g4_dongal_board_scholar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /g4_dongal_board_scholars/1
  # PATCH/PUT /g4_dongal_board_scholars/1.json
  def update
    respond_to do |format|
      if @g4_dongal_board_scholar.update(g4_dongal_board_scholar_params)
        format.html { redirect_to @g4_dongal_board_scholar, notice: 'G4 dongal board scholar was successfully updated.' }
        format.json { render :show, status: :ok, location: @g4_dongal_board_scholar }
      else
        format.html { render :edit }
        format.json { render json: @g4_dongal_board_scholar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /g4_dongal_board_scholars/1
  # DELETE /g4_dongal_board_scholars/1.json
  def destroy
    @g4_dongal_board_scholar.destroy
    respond_to do |format|
      format.html { redirect_to g4_dongal_board_scholars_url, notice: 'G4 dongal board scholar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_g4_dongal_board_scholar
      @g4_dongal_board_scholar = G4DongalBoardScholar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def g4_dongal_board_scholar_params
      params.require(:g4_dongal_board_scholar).permit(:wr_title, :wr_link, :wr_writer, :wr_created_on)
    end
end
