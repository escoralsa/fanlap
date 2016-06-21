class ApplicationsController < ApplicationController
  before_action :set_application, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /applications
  def index
   #  @applications_grid = initialize_grid(Application, order: 'id')

     @applications_grid = initialize_grid(Application,
                                          order: 'students.last_name',
                                          name: 'grid',
                                          enable_export_to_csv: true,
                                          csv_field_separator: ';',
                                          csv_file_name: 'Applications'
     )


     export_grid_if_requested('grid' => 'grid')

  end
  # GET /applications/1
  def show
  end

  # GET /applications/new
  def new
    @application = Application.new
  end

  # GET /applications/1/edit
  def edit
  end

  # POST /applications
  def create
    @application = Application.new(application_params)

    if @application.save
      redirect_to @application, notice: 'Application was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /applications/1
  def update
    if @application.update(application_params)
      redirect_to @application, notice: 'Application was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /applications/1
  def destroy
    @application.destroy
    redirect_to applications_url, notice: 'Application was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_application
      @application = Application.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def application_params
      params.require(:application).permit(:date, :typesc, :school_name, :school_year, :grade, :level, :score, :other_scholarship, :from, :amount, :approved, :notes, :student_id, :sponsor_id)
    end
end
