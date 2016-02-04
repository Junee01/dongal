class G4DongalBoardLawsController < ApplicationController
  before_action :set_g4_dongal_board_law, only: [:show, :edit, :update, :destroy]

  # GET /g4_dongal_board_laws
  # GET /g4_dongal_board_laws.json
  def index
    @g4_dongal_board_laws = G4DongalBoardLaw.all
  end

  # GET /g4_dongal_board_laws/1
  # GET /g4_dongal_board_laws/1.json
  def show
  end

  # GET /g4_dongal_board_laws/new
  def new
    @g4_dongal_board_law = G4DongalBoardLaw.new
  end

  # GET /g4_dongal_board_laws/1/edit
  def edit
  end

  # POST /g4_dongal_board_laws
  # POST /g4_dongal_board_laws.json
  def create
    @g4_dongal_board_law = G4DongalBoardLaw.new(g4_dongal_board_law_params)

    respond_to do |format|
      if @g4_dongal_board_law.save
        format.html { redirect_to @g4_dongal_board_law, notice: 'G4 dongal board law was successfully created.' }
        format.json { render :show, status: :created, location: @g4_dongal_board_law }
      else
        format.html { render :new }
        format.json { render json: @g4_dongal_board_law.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /g4_dongal_board_laws/1
  # PATCH/PUT /g4_dongal_board_laws/1.json
  def update
    respond_to do |format|
      if @g4_dongal_board_law.update(g4_dongal_board_law_params)
        format.html { redirect_to @g4_dongal_board_law, notice: 'G4 dongal board law was successfully updated.' }
        format.json { render :show, status: :ok, location: @g4_dongal_board_law }
      else
        format.html { render :edit }
        format.json { render json: @g4_dongal_board_law.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /g4_dongal_board_laws/1
  # DELETE /g4_dongal_board_laws/1.json
  def destroy
    @g4_dongal_board_law.destroy
    respond_to do |format|
      format.html { redirect_to g4_dongal_board_laws_url, notice: 'G4 dongal board law was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_g4_dongal_board_law
      @g4_dongal_board_law = G4DongalBoardLaw.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def g4_dongal_board_law_params
      params.require(:g4_dongal_board_law).permit(:wr_title, :wr_link, :wr_writer, :wr_created_on)
    end
end
