class ChopsController < ApplicationController
  before_action :set_chop, only: %i[ show edit update destroy ]

  # GET /chops or /chops.json
  def index
    @chops = Chop.all
  end

  # GET /chops/1 or /chops/1.json
  def show
  end

  # GET /chops/new
  def new
    @chop = Chop.new
  end

  # GET /chops/1/edit
  def edit
  end

  # POST /chops or /chops.json
  def create
    @chop = Chop.new(chop_params)

    respond_to do |format|
      if @chop.save
        format.html { redirect_to chop_url(@chop), notice: "Chop was successfully created." }
        format.json { render :show, status: :created, location: @chop }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @chop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chops/1 or /chops/1.json
  def update
    respond_to do |format|
      if @chop.update(chop_params)
        format.html { redirect_to chop_url(@chop), notice: "Chop was successfully updated." }
        format.json { render :show, status: :ok, location: @chop }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @chop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chops/1 or /chops/1.json
  def destroy
    @chop.destroy

    respond_to do |format|
      format.html { redirect_to chops_url, notice: "Chop was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chop
      @chop = Chop.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def chop_params
      params.require(:chop).permit(:solve, :solution, :category_id)
    end
end
