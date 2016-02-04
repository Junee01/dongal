class G4DongalBoardBsController < ApplicationController
  before_action :set_g4_dongal_board_b, only: [:show, :edit, :update, :destroy]

  # GET /g4_dongal_board_bs
  # GET /g4_dongal_board_bs.json
  def index
    @g4_dongal_board_bs = G4DongalBoardB.all
  end

  # GET /g4_dongal_board_bs/1
  # GET /g4_dongal_board_bs/1.json
  def show
  end

  # GET /g4_dongal_board_bs/new
  def new
    @g4_dongal_board_b = G4DongalBoardB.new
  end

  # GET /g4_dongal_board_bs/1/edit
  def edit
  end

  # POST /g4_dongal_board_bs
  # POST /g4_dongal_board_bs.json
  def create
    @g4_dongal_board_b = G4DongalBoardB.new(g4_dongal_board_b_params)

    respond_to do |format|
      if @g4_dongal_board_b.save
        format.html { redirect_to @g4_dongal_board_b, notice: 'G4 dongal board b was successfully created.' }
        format.json { render :show, status: :created, location: @g4_dongal_board_b }
      else
        format.html { render :new }
        format.json { render json: @g4_dongal_board_b.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /g4_dongal_board_bs/1
  # PATCH/PUT /g4_dongal_board_bs/1.json
  def update
    respond_to do |format|
      if @g4_dongal_board_b.update(g4_dongal_board_b_params)
        format.html { redirect_to @g4_dongal_board_b, notice: 'G4 dongal board b was successfully updated.' }
        format.json { render :show, status: :ok, location: @g4_dongal_board_b }
      else
        format.html { render :edit }
        format.json { render json: @g4_dongal_board_b.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /g4_dongal_board_bs/1
  # DELETE /g4_dongal_board_bs/1.json
  def destroy
    @g4_dongal_board_b.destroy
    respond_to do |format|
      format.html { redirect_to g4_dongal_board_bs_url, notice: 'G4 dongal board b was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_g4_dongal_board_b
      @g4_dongal_board_b = G4DongalBoardB.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def g4_dongal_board_b_params
      params.require(:g4_dongal_board_b).permit(:wr_title, :wr_link, :wr_writer, :wr_created_on)
    end
end
