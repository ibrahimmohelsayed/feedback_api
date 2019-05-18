class FeedbackCreatorWorker 
  byebug
  include Sidekiq::Worker
  sidekiq_options retry: false

  def perform(feedback_params, state_params)
    @feedback = Feedback.create(feedback_params)
    @feedback.state.create(state_params) 
  end
end