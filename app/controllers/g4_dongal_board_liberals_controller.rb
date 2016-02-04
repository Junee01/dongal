class G4DongalBoardLiberalsController < ApplicationController
  before_action :set_g4_dongal_board_liberal, only: [:show, :edit, :update, :destroy]

  # GET /g4_dongal_board_liberals
  # GET /g4_dongal_board_liberals.json
  def index
    @g4_dongal_board_liberals = G4DongalBoardLiberal.all
  end

  # GET /g4_dongal_board_liberals/1
  # GET /g4_dongal_board_liberals/1.json
  def show
  end

  # GET /g4_dongal_board_liberals/new
  def new
    @g4_dongal_board_liberal = G4DongalBoardLiberal.new
  end

  # GET /g4_dongal_board_liberals/1/edit
  def edit
  end

  # POST /g4_dongal_board_liberals
  # POST /g4_dongal_board_liberals.json
  def create
    @g4_dongal_board_liberal = G4DongalBoardLiberal.new(g4_dongal_board_liberal_params)

    respond_to do |format|
      if @g4_dongal_board_liberal.save
        format.html { redirect_to @g4_dongal_board_liberal, notice: 'G4 dongal board liberal was successfully created.' }
        format.json { render :show, status: :created, location: @g4_dongal_board_liberal }
      else
        format.html { render :new }
        format.json { render json: @g4_dongal_board_liberal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /g4_dongal_board_liberals/1
  # PATCH/PUT /g4_dongal_board_liberals/1.json
  def update
    respond_to do |format|
      if @g4_dongal_board_liberal.update(g4_dongal_board_liberal_params)
        format.html { redirect_to @g4_dongal_board_liberal, notice: 'G4 dongal board liberal was successfully updated.' }
        format.json { render :show, status: :ok, location: @g4_dongal_board_liberal }
      else
        format.html { render :edit }
        format.json { render json: @g4_dongal_board_liberal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /g4_dongal_board_liberals/1
  # DELETE /g4_dongal_board_liberals/1.json
  def destroy
    @g4_dongal_board_liberal.destroy
    respond_to do |format|
      format.html { redirect_to g4_dongal_board_liberals_url, notice: 'G4 dongal board liberal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_g4_dongal_board_liberal
      @g4_dongal_board_liberal = G4DongalBoardLiberal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def g4_dongal_board_liberal_params
      params.require(:g4_dongal_board_liberal).permit(:wr_title, :wr_link, :wr_writer, :wr_created_on)
    end
end
