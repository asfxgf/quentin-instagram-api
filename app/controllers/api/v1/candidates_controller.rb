class Api::V1::CandidatesController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: [ :index, :show ]
  before_action :set_candidate, only: [:show, :update, :destroy]

  def index
    @candidates = policy_scope(Candidate)
  end

  def show
  end

  def update
    if @candidate.update(candidate_params)
      render :show
    else
      render_errors
    end
  end

  def create
    @candidate = Candidate.new(candidate_params)
    @candidate.user = current_user

    authorize @candidate

    if @candidate.save
      render :show, status: :created
    else
      render_errors
    end
  end

  def destroy
    @candidate.destroy

    head :no_content
  end

  private

  def set_candidate
    @candidate = Candidate.find(params[:id])
    authorize @candidate
  end

  def candidate_params
    params.require(:candidate).permit(:character, :culture, :picture_url)
  end

  def render_errors
    render json: { errors: @candidate.errors.full_messages },
           status: :unprocessable_entity
  end
end
