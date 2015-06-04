class Admin::CreditsController < ApplicationController
  before_action :authorize_admin!
  before_action :set_admin_credit, only: [:show, :edit, :update, :destroy]

  # GET /admin/credits
  # GET /admin/credits.json
  def index
    @admin_credits = Credit.all
  end

  # GET /admin/credits/1
  # GET /admin/credits/1.json
  def show
  end

  # GET /admin/credits/new
  def new
    @admin_credit = Credit.new
  end

  # GET /admin/credits/1/edit
  def edit

  end

  # POST /admin/credits
  # POST /admin/credits.json
  def create
    @admin_credit = Credit.new(admin_credit_params)

    respond_to do |format|
      if @admin_credit.save
        format.html { redirect_to @admin_credit, notice: 'Credit was successfully created.' }
        format.json { render :show, status: :created, location: @admin_credit }
      else
        format.html { render :new }
        format.json { render json: @admin_credit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/credits/1
  # PATCH/PUT /admin/credits/1.json
  def update
    respond_to do |format|
      if @admin_credit.update(admin_credit_params)
        format.html { redirect_to admin_credit_path(@admin_credit), notice: 'Credit was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_credit }
      else
        format.html { render :edit }
        format.json { render json: @admin_credit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/credits/1
  # DELETE /admin/credits/1.json
  def destroy
    @admin_credit.destroy
    respond_to do |format|
      format.html { redirect_to admin_credits_url, notice: 'Credit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_credit
      @admin_credit = Credit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_credit_params
      params.require(:credit).permit(:sum, :period, :status)
    end

end
