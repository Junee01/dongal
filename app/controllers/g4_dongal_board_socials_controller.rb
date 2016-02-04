class G4DongalBoardSocialsController < ApplicationController
  before_action :set_g4_dongal_board_social, only: [:show, :edit, :update, :destroy]

  # GET /g4_dongal_board_socials
  # GET /g4_dongal_board_socials.json
  def index
    @g4_dongal_board_socials = G4DongalBoardSocial.all
  end

  # GET /g4_dongal_board_socials/1
  # GET /g4_dongal_board_socials/1.json
  def show
  end

  # GET /g4_dongal_board_socials/new
  def new
    @g4_dongal_board_social = G4DongalBoardSocial.new
  end

  # GET /g4_dongal_board_socials/1/edit
  def edit
  end

  # POST /g4_dongal_board_socials
  # POST /g4_dongal_board_socials.json
  def create
    @g4_dongal_board_social = G4DongalBoardSocial.new(g4_dongal_board_social_params)

    respond_to do |format|
      if @g4_dongal_board_social.save
        format.html { redirect_to @g4_dongal_board_social, notice: 'G4 dongal board social was successfully created.' }
        format.json { render :show, status: :created, location: @g4_dongal_board_social }
      else
        format.html { render :new }
        format.json { render json: @g4_dongal_board_social.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /g4_dongal_board_socials/1
  # PATCH/PUT /g4_dongal_board_socials/1.json
  def update
    respond_to do |format|
      if @g4_dongal_board_social.update(g4_dongal_board_social_params)
        format.html { redirect_to @g4_dongal_board_social, notice: 'G4 dongal board social was successfully updated.' }
        format.json { render :show, status: :ok, location: @g4_dongal_board_social }
      else
        format.html { render :edit }
        format.json { render json: @g4_dongal_board_social.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /g4_dongal_board_socials/1
  # DELETE /g4_dongal_board_socials/1.json
  def destroy
    @g4_dongal_board_social.destroy
    respond_to do |format|
      format.html { redirect_to g4_dongal_board_socials_url, notice: 'G4 dongal board social was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_g4_dongal_board_social
      @g4_dongal_board_social = G4DongalBoardSocial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def g4_dongal_board_social_params
      params.require(:g4_dongal_board_social).permit(:wr_title, :wr_link, :wr_writer, :wr_created_on)
    end
end
