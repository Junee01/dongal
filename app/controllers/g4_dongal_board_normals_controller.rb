class G4DongalBoardNormalsController < ApplicationController
  before_action :set_g4_dongal_board_normal, only: [:show, :edit, :update, :destroy]

  # GET /g4_dongal_board_normals
  # GET /g4_dongal_board_normals.json
  def index
    @g4_dongal_board_normals = G4DongalBoardNormal.all
  end

  # GET /g4_dongal_board_normals/1
  # GET /g4_dongal_board_normals/1.json
  def show
  end

  # GET /g4_dongal_board_normals/new
  def new
    @g4_dongal_board_normal = G4DongalBoardNormal.new
  end

  # GET /g4_dongal_board_normals/1/edit
  def edit
  end

  # POST /g4_dongal_board_normals
  # POST /g4_dongal_board_normals.json
  def create
    @g4_dongal_board_normal = G4DongalBoardNormal.new(g4_dongal_board_normal_params)

    respond_to do |format|
      if @g4_dongal_board_normal.save
        format.html { redirect_to @g4_dongal_board_normal, notice: 'G4 dongal board normal was successfully created.' }
        format.json { render :show, status: :created, location: @g4_dongal_board_normal }
      else
        format.html { render :new }
        format.json { render json: @g4_dongal_board_normal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /g4_dongal_board_normals/1
  # PATCH/PUT /g4_dongal_board_normals/1.json
  def update
    respond_to do |format|
      if @g4_dongal_board_normal.update(g4_dongal_board_normal_params)
        format.html { redirect_to @g4_dongal_board_normal, notice: 'G4 dongal board normal was successfully updated.' }
        format.json { render :show, status: :ok, location: @g4_dongal_board_normal }
      else
        format.html { render :edit }
        format.json { render json: @g4_dongal_board_normal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /g4_dongal_board_normals/1
  # DELETE /g4_dongal_board_normals/1.json
  def destroy
    @g4_dongal_board_normal.destroy
    respond_to do |format|
      format.html { redirect_to g4_dongal_board_normals_url, notice: 'G4 dongal board normal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_g4_dongal_board_normal
      @g4_dongal_board_normal = G4DongalBoardNormal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def g4_dongal_board_normal_params
      params.require(:g4_dongal_board_normal).permit(:wr_title, :wr_link, :wr_writer, :wr_created_on)
    end
end
