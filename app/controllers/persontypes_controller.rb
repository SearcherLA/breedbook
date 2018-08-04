class PersontypesController < ApplicationController
  before_action :set_persontype, only: [:show, :edit, :update, :destroy]

  # GET /persontypes
  def index
    @persontypes = Persontype.all
  end

  # GET /persontypes/1
  def show
  end

  # GET /persontypes/new
  def new
    @persontype = Persontype.new
  end

  # GET /persontypes/1/edit
  def edit
  end

  # POST /persontypes
  def create
    @persontype = Persontype.new(persontype_params)

    if @persontype.save
      redirect_to @persontype, notice: 'Persontype wurde erfolgreich erstellt.'
    else
      render :new
    end
  end

  # PATCH/PUT /persontypes/1
  def update
    if @persontype.update(persontype_params)
      redirect_to @persontype, notice: 'Persontype wurde erfolgreich geändert.'
    else
      render :edit
    end
  end

  # DELETE /persontypes/1
  def destroy
    @persontype.destroy
    redirect_to persontypes_url, notice: 'Persontype wurde erfolgreich gelöscht.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_persontype
      @persontype = Persontype.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def persontype_params
      params.require(:persontype).permit(:persontype)
    end
end
