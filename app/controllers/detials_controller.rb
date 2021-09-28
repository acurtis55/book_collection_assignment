class DetialsController < ApplicationController
  before_action :set_detial, only: %i[ show edit update destroy ]

  # GET /detials or /detials.json
  def index
    @detials = Detial.all
  end

  # GET /detials/1 or /detials/1.json
  def show
  end

  # GET /detials/new
  def new
    @detial = Detial.new
  end

  # GET /detials/1/edit
  def edit
  end

  # POST /detials or /detials.json
  def create
    @detial = Detial.new(detial_params)

    respond_to do |format|
      if @detial.save
        format.html { redirect_to @detial, notice: "Detial was successfully created." }
        format.json { render :show, status: :created, location: @detial }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @detial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /detials/1 or /detials/1.json
  def update
    respond_to do |format|
      if @detial.update(detial_params)
        format.html { redirect_to @detial, notice: "Detial was successfully updated." }
        format.json { render :show, status: :ok, location: @detial }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @detial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detials/1 or /detials/1.json
  def destroy
    @detial.destroy
    respond_to do |format|
      format.html { redirect_to detials_url, notice: "Detial was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detial
      @detial = Detial.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def detial_params
      params.require(:detial).permit(:title)
    end
end
