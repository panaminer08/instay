class InstaysController < ApplicationController
  before_action :set_instay, only: [:show, :edit, :update, :destroy]

  # GET /instays
  def index
    @instays = Instay.all
  end

  # GET /instays/1
  def show
  end

  # GET /instays/new
  def new
    @instay = Instay.new
  end

  # GET /instays/1/edit
  def edit
  end

  # POST /instays
  def create
    @instay = Instay.new(instay_params)

    if @instay.save
      redirect_to @instay, notice: 'Instay was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /instays/1
  def update
    if @instay.update(instay_params)
      redirect_to @instay, notice: 'Instay was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /instays/1
  def destroy
    @instay.destroy
    redirect_to instays_url, notice: 'Instay was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instay
      @instay = Instay.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def instay_params
      params.require(:instay).permit(:title, :description, :clip, :thumbnail)
    end
end
