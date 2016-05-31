class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /students
  def index
    @students_grid = initialize_grid(Student, order: 'id')
  end

  # GET /students/1
  def show
  end

  # GET /students/new
  def new
    @student = Student.new
  end

  # GET /students/1/edit
  def edit
  end

  # POST /students
  def create
    @student = Student.new(student_params)

    if @student.save
      redirect_to @student, notice: 'Student was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /students/1
  def update
    if @student.update(student_params)
      redirect_to @student, notice: 'Student was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /students/1
  def destroy
    @student.destroy
    redirect_to students_url, notice: 'Student was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def student_params
      params.require(:student).permit(:st_number, :last_name, :slast_name, :names, :birthdate, :gender, :address, :map_link, :phone, :father_name, :father_work, :mother_name, :mother_work, :sibling, :colonia, :city, :zip_code, :foto, :shoe_size, :tshirt_size, :email, :profession, :notes)
    end
end
