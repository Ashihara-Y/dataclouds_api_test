class WdiFactsController < ApplicationController
  before_action :set_wdi_fact, only: [:show, :edit, :update, :destroy]

  # GET /wdi_facts
  # GET /wdi_facts.json
  def index
    @wdi_facts = WdiFact.all
  end

  # GET /wdi_facts/1
  # GET /wdi_facts/1.json
  def show
  end

  # GET /wdi_facts/new
  def new
    @wdi_fact = WdiFact.new
  end

  # GET /wdi_facts/1/edit
  def edit
  end

  # POST /wdi_facts
  # POST /wdi_facts.json
  def create
    @wdi_fact = WdiFact.new(wdi_fact_params)

    respond_to do |format|
      if @wdi_fact.save
        format.html { redirect_to @wdi_fact, notice: 'Wdi fact was successfully created.' }
        format.json { render :show, status: :created, location: @wdi_fact }
      else
        format.html { render :new }
        format.json { render json: @wdi_fact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wdi_facts/1
  # PATCH/PUT /wdi_facts/1.json
  def update
    respond_to do |format|
      if @wdi_fact.update(wdi_fact_params)
        format.html { redirect_to @wdi_fact, notice: 'Wdi fact was successfully updated.' }
        format.json { render :show, status: :ok, location: @wdi_fact }
      else
        format.html { render :edit }
        format.json { render json: @wdi_fact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wdi_facts/1
  # DELETE /wdi_facts/1.json
  def destroy
    @wdi_fact.destroy
    respond_to do |format|
      format.html { redirect_to wdi_facts_url, notice: 'Wdi fact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wdi_fact
      @wdi_fact = WdiFact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wdi_fact_params
      params.require(:wdi_fact).permit(:country_code, :country_name, :series_code, :series_name, :content)
    end
end
