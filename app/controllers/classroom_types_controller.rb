class ClassroomTypesController < ApplicationController
  before_action :set_classroom_type, only: [:show, :edit, :update, :destroy]

  # GET /classroom_types
  # GET /classroom_types.json
  def index
    @classroom_types = ClassroomType.all
  end

  # GET /classroom_types/1
  # GET /classroom_types/1.json
  def show
  end

  # GET /classroom_types/new
  def new
    @classroom_type = ClassroomType.new
  end

  # GET /classroom_types/1/edit
  def edit
  end

  # POST /classroom_types
  # POST /classroom_types.json
  def create
    @classroom_type = ClassroomType.new(classroom_type_params)

    respond_to do |format|
      if @classroom_type.save
        format.html { redirect_to @classroom_type, notice: 'Classroom type was successfully created.' }
        format.json { render :show, status: :created, location: @classroom_type }
      else
        format.html { render :new }
        format.json { render json: @classroom_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /classroom_types/1
  # PATCH/PUT /classroom_types/1.json
  def update
    respond_to do |format|
      if @classroom_type.update(classroom_type_params)
        format.html { redirect_to @classroom_type, notice: 'Classroom type was successfully updated.' }
        format.json { render :show, status: :ok, location: @classroom_type }
      else
        format.html { render :edit }
        format.json { render json: @classroom_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /classroom_types/1
  # DELETE /classroom_types/1.json
  def destroy
    @classroom_type.destroy
    respond_to do |format|
      format.html { redirect_to classroom_types_url, notice: 'Classroom type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_classroom_type
      @classroom_type = ClassroomType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def classroom_type_params
      params.require(:classroom_type).permit(:name, :abbreviation, :description)
    end
end
