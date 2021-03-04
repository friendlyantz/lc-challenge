class LgasfilesController < ApplicationController
  before_action :set_lgasfile, only: %i[ show edit update destroy ]

  # GET /lgasfiles or /lgasfiles.json
  def index
    @lgasfiles = Lgasfile.all
  end

  # GET /lgasfiles/1 or /lgasfiles/1.json
  def show
  end

  # GET /lgasfiles/new
  def new
    @lgasfile = Lgasfile.new
  end

  # GET /lgasfiles/1/edit
  def edit
  end

  # POST /lgasfiles or /lgasfiles.json
  def create
    @lgasfile = Lgasfile.new(lgasfile_params)

    respond_to do |format|
      if @lgasfile.save
        format.html { redirect_to @lgasfile, notice: "Lgasfile was successfully created." }
        format.json { render :show, status: :created, location: @lgasfile }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lgasfile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lgasfiles/1 or /lgasfiles/1.json
  def update
    respond_to do |format|
      if @lgasfile.update(lgasfile_params)
        format.html { redirect_to @lgasfile, notice: "Lgasfile was successfully updated." }
        format.json { render :show, status: :ok, location: @lgasfile }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lgasfile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lgasfiles/1 or /lgasfiles/1.json
  def destroy
    @lgasfile.destroy
    respond_to do |format|
      format.html { redirect_to lgasfiles_url, notice: "Lgasfile was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lgasfile
      @lgasfile = Lgasfile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lgasfile_params
      params.require(:lgasfile).permit(:code, :name, :long_name)
    end
end
