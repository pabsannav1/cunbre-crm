class UserExtensionsController < ApplicationController
  before_action :set_user_extension, only: %i[ show edit update destroy ]

  # GET /user_extensions or /user_extensions.json
  def index
    @user_extensions = UserExtension.all
  end

  # GET /user_extensions/1 or /user_extensions/1.json
  def show
  end

  # GET /user_extensions/new
  def new
    @user_extension = UserExtension.new
  end

  # GET /user_extensions/1/edit
  def edit
  end

  # POST /user_extensions or /user_extensions.json
  def create
    @user_extension = UserExtension.new(user_extension_params)

    respond_to do |format|
      if @user_extension.save
        format.html { redirect_to @user_extension, notice: "User extension was successfully created." }
        format.json { render :show, status: :created, location: @user_extension }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_extension.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_extensions/1 or /user_extensions/1.json
  def update
    respond_to do |format|
      if @user_extension.update(user_extension_params)
        format.html { redirect_to @user_extension, notice: "User extension was successfully updated." }
        format.json { render :show, status: :ok, location: @user_extension }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_extension.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_extensions/1 or /user_extensions/1.json
  def destroy
    @user_extension.destroy!

    respond_to do |format|
      format.html { redirect_to user_extensions_path, status: :see_other, notice: "User extension was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_extension
      @user_extension = UserExtension.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_extension_params
      params.require(:user_extension).permit(:user_id, :available_money, :saved_irpf, :estimated_monthly_expense)
    end
end
