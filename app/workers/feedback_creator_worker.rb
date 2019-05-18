class FeedbackCreatorWorker
  include Sidekiq::Worker
  sidekiq_options retry: false
  
  def perform(feedback_params, state_params)
    @feedback = Feedback.create!(eval(feedback_params))
    @feedback.create_state!(eval(state_params))
  end
end
