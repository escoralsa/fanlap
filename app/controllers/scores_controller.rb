class ScoresController < ApplicationController
  before_action :set_score, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /scores
  def index
    @scores_grid = initialize_grid(Score, order: 'id')
  end

  # GET /scores/1
  def show
  end

  # GET /scores/new
  def new
    @score = Score.new
  end

  # GET /scores/1/edit
  def edit
  end

  # POST /scores
  def create
    @score = Score.new(score_params)

    if @score.save
      redirect_to @score, notice: 'Score was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /scores/1
  def update
    if @score.update(score_params)
      redirect_to @score, notice: 'Score was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /scores/1
  def destroy
    @score.destroy
    redirect_to scores_url, notice: 'Score was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_score
      @score = Score.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def score_params
      params.require(:score).permit(:month, :year, :score, :student_id)
    end
end
