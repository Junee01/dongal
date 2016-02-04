class G4DongalBoardPharmsController < ApplicationController
  before_action :set_g4_dongal_board_pharm, only: [:show, :edit, :update, :destroy]

  # GET /g4_dongal_board_pharms
  # GET /g4_dongal_board_pharms.json
  def index
    @g4_dongal_board_pharms = G4DongalBoardPharm.all
  end

  # GET /g4_dongal_board_pharms/1
  # GET /g4_dongal_board_pharms/1.json
  def show
  end

  # GET /g4_dongal_board_pharms/new
  def new
    @g4_dongal_board_pharm = G4DongalBoardPharm.new
  end

  # GET /g4_dongal_board_pharms/1/edit
  def edit
  end

  # POST /g4_dongal_board_pharms
  # POST /g4_dongal_board_pharms.json
  def create
    @g4_dongal_board_pharm = G4DongalBoardPharm.new(g4_dongal_board_pharm_params)

    respond_to do |format|
      if @g4_dongal_board_pharm.save
        format.html { redirect_to @g4_dongal_board_pharm, notice: 'G4 dongal board pharm was successfully created.' }
        format.json { render :show, status: :created, location: @g4_dongal_board_pharm }
      else
        format.html { render :new }
        format.json { render json: @g4_dongal_board_pharm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /g4_dongal_board_pharms/1
  # PATCH/PUT /g4_dongal_board_pharms/1.json
  def update
    respond_to do |format|
      if @g4_dongal_board_pharm.update(g4_dongal_board_pharm_params)
        format.html { redirect_to @g4_dongal_board_pharm, notice: 'G4 dongal board pharm was successfully updated.' }
        format.json { render :show, status: :ok, location: @g4_dongal_board_pharm }
      else
        format.html { render :edit }
        format.json { render json: @g4_dongal_board_pharm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /g4_dongal_board_pharms/1
  # DELETE /g4_dongal_board_pharms/1.json
  def destroy
    @g4_dongal_board_pharm.destroy
    respond_to do |format|
      format.html { redirect_to g4_dongal_board_pharms_url, notice: 'G4 dongal board pharm was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_g4_dongal_board_pharm
      @g4_dongal_board_pharm = G4DongalBoardPharm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def g4_dongal_board_pharm_params
      params.require(:g4_dongal_board_pharm).permit(:wr_title, :wr_link, :wr_writer, :wr_created_on)
    end
end
