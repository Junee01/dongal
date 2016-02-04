class G4DongalBoardProceedingsController < ApplicationController
  before_action :set_g4_dongal_board_proceeding, only: [:show, :edit, :update, :destroy]

  # GET /g4_dongal_board_proceedings
  # GET /g4_dongal_board_proceedings.json
  def index
    @g4_dongal_board_proceedings = G4DongalBoardProceeding.all
  end

  # GET /g4_dongal_board_proceedings/1
  # GET /g4_dongal_board_proceedings/1.json
  def show
  end

  # GET /g4_dongal_board_proceedings/new
  def new
    @g4_dongal_board_proceeding = G4DongalBoardProceeding.new
  end

  # GET /g4_dongal_board_proceedings/1/edit
  def edit
  end

  # POST /g4_dongal_board_proceedings
  # POST /g4_dongal_board_proceedings.json
  def create
    @g4_dongal_board_proceeding = G4DongalBoardProceeding.new(g4_dongal_board_proceeding_params)

    respond_to do |format|
      if @g4_dongal_board_proceeding.save
        format.html { redirect_to @g4_dongal_board_proceeding, notice: 'G4 dongal board proceeding was successfully created.' }
        format.json { render :show, status: :created, location: @g4_dongal_board_proceeding }
      else
        format.html { render :new }
        format.json { render json: @g4_dongal_board_proceeding.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /g4_dongal_board_proceedings/1
  # PATCH/PUT /g4_dongal_board_proceedings/1.json
  def update
    respond_to do |format|
      if @g4_dongal_board_proceeding.update(g4_dongal_board_proceeding_params)
        format.html { redirect_to @g4_dongal_board_proceeding, notice: 'G4 dongal board proceeding was successfully updated.' }
        format.json { render :show, status: :ok, location: @g4_dongal_board_proceeding }
      else
        format.html { render :edit }
        format.json { render json: @g4_dongal_board_proceeding.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /g4_dongal_board_proceedings/1
  # DELETE /g4_dongal_board_proceedings/1.json
  def destroy
    @g4_dongal_board_proceeding.destroy
    respond_to do |format|
      format.html { redirect_to g4_dongal_board_proceedings_url, notice: 'G4 dongal board proceeding was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_g4_dongal_board_proceeding
      @g4_dongal_board_proceeding = G4DongalBoardProceeding.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def g4_dongal_board_proceeding_params
      params.require(:g4_dongal_board_proceeding).permit(:wr_title, :wr_link, :wr_writer, :wr_created_on)
    end
end
