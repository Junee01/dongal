class G4DongalBoardStudiesController < ApplicationController
  before_action :set_g4_dongal_board_study, only: [:show, :edit, :update, :destroy]

  # GET /g4_dongal_board_studies
  # GET /g4_dongal_board_studies.json
  def index
    @g4_dongal_board_studies = G4DongalBoardStudy.all
  end

  # GET /g4_dongal_board_studies/1
  # GET /g4_dongal_board_studies/1.json
  def show
  end

  # GET /g4_dongal_board_studies/new
  def new
    @g4_dongal_board_study = G4DongalBoardStudy.new
  end

  # GET /g4_dongal_board_studies/1/edit
  def edit
  end

  # POST /g4_dongal_board_studies
  # POST /g4_dongal_board_studies.json
  def create
    @g4_dongal_board_study = G4DongalBoardStudy.new(g4_dongal_board_study_params)

    respond_to do |format|
      if @g4_dongal_board_study.save
        format.html { redirect_to @g4_dongal_board_study, notice: 'G4 dongal board study was successfully created.' }
        format.json { render :show, status: :created, location: @g4_dongal_board_study }
      else
        format.html { render :new }
        format.json { render json: @g4_dongal_board_study.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /g4_dongal_board_studies/1
  # PATCH/PUT /g4_dongal_board_studies/1.json
  def update
    respond_to do |format|
      if @g4_dongal_board_study.update(g4_dongal_board_study_params)
        format.html { redirect_to @g4_dongal_board_study, notice: 'G4 dongal board study was successfully updated.' }
        format.json { render :show, status: :ok, location: @g4_dongal_board_study }
      else
        format.html { render :edit }
        format.json { render json: @g4_dongal_board_study.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /g4_dongal_board_studies/1
  # DELETE /g4_dongal_board_studies/1.json
  def destroy
    @g4_dongal_board_study.destroy
    respond_to do |format|
      format.html { redirect_to g4_dongal_board_studies_url, notice: 'G4 dongal board study was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_g4_dongal_board_study
      @g4_dongal_board_study = G4DongalBoardStudy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def g4_dongal_board_study_params
      params.require(:g4_dongal_board_study).permit(:wr_title, :wr_link, :wr_writer, :wr_created_on)
    end
end
