class FeedbacksController < ApplicationController
  before_action :set_feedback, only: %i[show]
  
  def index
    @feedbacks = Feedback.where(company_token: params[:company_token])
    render json: @feedbacks
  rescue StandardError => e
    render json: {message: e.message}, status: :bad_request
  end

  def show
    if @feedback.present?
      render json: @feedback
    else
      render json: @feedback.errors, status: :not_found
    end
  end

  def create
    @feedback = Feedback.create(feedback_params)
    @feedback.state = State.create(state_params)
    if @feedback.valid?
      #@feedback.number = $redis.incr("#{@feedback.company_token}_feedbacks_count")
      render json: { number: @feedback }, status: :created
    else
      render json: @feedback.errors, status: :unprocessable_entity
    end
  end

  def count
    @feeback_count = Feedback.where(company_token: params[:company_token]).count
    render json: @feeback_count
  end
  

  private 

  def set_feedback
    @feedback = Feedback.find_by!(company_token: params[:company_token], number: params[:number])
  end
  

  def feedback_params
    params.permit(:company_token, :number, :priority )
  end

  def state_params
    params.require(:state).permit(:device, :os, :memory, :storage)
  end

end
