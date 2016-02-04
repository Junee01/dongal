class DongalBoardsController < ApplicationController
  before_action :set_dongal_board, only: [:show, :edit, :update, :destroy]

  # GET /dongal_boards
  # GET /dongal_boards.json
  def index
    @dongal_boards = DongalBoard.all
  end

  # GET /dongal_boards/1
  # GET /dongal_boards/1.json
  def show
  end

  # GET /dongal_boards/new
  def new
    @dongal_board = DongalBoard.new
  end

  # GET /dongal_boards/1/edit
  def edit
  end

  # POST /dongal_boards
  # POST /dongal_boards.json
  def create
    @dongal_board = DongalBoard.new(dongal_board_params)

    respond_to do |format|
      if @dongal_board.save
        format.html { redirect_to @dongal_board, notice: 'Dongal board was successfully created.' }
        format.json { render :show, status: :created, location: @dongal_board }
      else
        format.html { render :new }
        format.json { render json: @dongal_board.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dongal_boards/1
  # PATCH/PUT /dongal_boards/1.json
  def update
    respond_to do |format|
      if @dongal_board.update(dongal_board_params)
        format.html { redirect_to @dongal_board, notice: 'Dongal board was successfully updated.' }
        format.json { render :show, status: :ok, location: @dongal_board }
      else
        format.html { render :edit }
        format.json { render json: @dongal_board.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dongal_boards/1
  # DELETE /dongal_boards/1.json
  def destroy
    @dongal_board.destroy
    respond_to do |format|
      format.html { redirect_to dongal_boards_url, notice: 'Dongal board was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dongal_board
      @dongal_board = DongalBoard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dongal_board_params
      params.require(:dongal_board).permit(:board_name, :board_title, :board_color)
    end
end
