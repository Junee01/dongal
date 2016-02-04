class DongalNoticesController < ApplicationController
  before_action :set_dongal_notice, only: [:show, :edit, :update, :destroy]

  # GET /dongal_notices
  # GET /dongal_notices.json
  def index
    @dongal_notices = DongalNotice.all
  end

  # GET /dongal_notices/1
  # GET /dongal_notices/1.json
  def show
  end

  # GET /dongal_notices/new
  def new
    @dongal_notice = DongalNotice.new
  end

  # GET /dongal_notices/1/edit
  def edit
  end

  # POST /dongal_notices
  # POST /dongal_notices.json
  def create
    @dongal_notice = DongalNotice.new(dongal_notice_params)

    respond_to do |format|
      if @dongal_notice.save
        format.html { redirect_to @dongal_notice, notice: 'Dongal notice was successfully created.' }
        format.json { render :show, status: :created, location: @dongal_notice }
      else
        format.html { render :new }
        format.json { render json: @dongal_notice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dongal_notices/1
  # PATCH/PUT /dongal_notices/1.json
  def update
    respond_to do |format|
      if @dongal_notice.update(dongal_notice_params)
        format.html { redirect_to @dongal_notice, notice: 'Dongal notice was successfully updated.' }
        format.json { render :show, status: :ok, location: @dongal_notice }
      else
        format.html { render :edit }
        format.json { render json: @dongal_notice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dongal_notices/1
  # DELETE /dongal_notices/1.json
  def destroy
    @dongal_notice.destroy
    respond_to do |format|
      format.html { redirect_to dongal_notices_url, notice: 'Dongal notice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dongal_notice
      @dongal_notice = DongalNotice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dongal_notice_params
      params.require(:dongal_notice).permit(:wr_id, :bo_table, :update_time, :check)
    end
end
