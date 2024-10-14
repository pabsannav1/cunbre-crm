class VatsController < ApplicationController
  before_action :set_vat, only: %i[ show edit update destroy ]

  # GET /vats or /vats.json
  def index
    @vats = Vat.all
  end

  # GET /vats/1 or /vats/1.json
  def show
  end

  # GET /vats/new
  def new
    @vat = Vat.new
  end

  # GET /vats/1/edit
  def edit
  end

  # POST /vats or /vats.json
  def create
    @vat = Vat.new(vat_params)

    respond_to do |format|
      if @vat.save
        format.html { redirect_to @vat, notice: "Vat was successfully created." }
        format.json { render :show, status: :created, location: @vat }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @vat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vats/1 or /vats/1.json
  def update
    respond_to do |format|
      if @vat.update(vat_params)
        format.html { redirect_to @vat, notice: "Vat was successfully updated." }
        format.json { render :show, status: :ok, location: @vat }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @vat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vats/1 or /vats/1.json
  def destroy
    @vat.destroy!

    respond_to do |format|
      format.html { redirect_to vats_path, status: :see_other, notice: "Vat was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vat
      @vat = Vat.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vat_params
      params.require(:vat).permit(:user_id, :year, :quarter, :received_base_sum, :received_vat_sum, :paid_base_sum, :paid_vat_sum, :total, :declaration_made, :declaration_collected)
    end
end
