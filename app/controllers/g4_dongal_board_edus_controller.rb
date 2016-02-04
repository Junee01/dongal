class G4DongalBoardEdusController < ApplicationController
  before_action :set_g4_dongal_board_edu, only: [:show, :edit, :update, :destroy]

  # GET /g4_dongal_board_edus
  # GET /g4_dongal_board_edus.json
  def index
    @g4_dongal_board_edus = G4DongalBoardEdu.all
  end

  # GET /g4_dongal_board_edus/1
  # GET /g4_dongal_board_edus/1.json
  def show
  end

  # GET /g4_dongal_board_edus/new
  def new
    @g4_dongal_board_edu = G4DongalBoardEdu.new
  end

  # GET /g4_dongal_board_edus/1/edit
  def edit
  end

  # POST /g4_dongal_board_edus
  # POST /g4_dongal_board_edus.json
  def create
    @g4_dongal_board_edu = G4DongalBoardEdu.new(g4_dongal_board_edu_params)

    respond_to do |format|
      if @g4_dongal_board_edu.save
        format.html { redirect_to @g4_dongal_board_edu, notice: 'G4 dongal board edu was successfully created.' }
        format.json { render :show, status: :created, location: @g4_dongal_board_edu }
      else
        format.html { render :new }
        format.json { render json: @g4_dongal_board_edu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /g4_dongal_board_edus/1
  # PATCH/PUT /g4_dongal_board_edus/1.json
  def update
    respond_to do |format|
      if @g4_dongal_board_edu.update(g4_dongal_board_edu_params)
        format.html { redirect_to @g4_dongal_board_edu, notice: 'G4 dongal board edu was successfully updated.' }
        format.json { render :show, status: :ok, location: @g4_dongal_board_edu }
      else
        format.html { render :edit }
        format.json { render json: @g4_dongal_board_edu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /g4_dongal_board_edus/1
  # DELETE /g4_dongal_board_edus/1.json
  def destroy
    @g4_dongal_board_edu.destroy
    respond_to do |format|
      format.html { redirect_to g4_dongal_board_edus_url, notice: 'G4 dongal board edu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_g4_dongal_board_edu
      @g4_dongal_board_edu = G4DongalBoardEdu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def g4_dongal_board_edu_params
      params.require(:g4_dongal_board_edu).permit(:wr_title, :wr_link, :wr_writer, :wr_created_on)
    end
end
