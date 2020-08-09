class FeedbacksController < ApplicationController

    def index 
        render json: Feedback.all 
    end

    def create
        feedback = Feedback.create(feedback_params)
        render json: feedback
    end

    def show
        feedback = Feedback.find(params[:id])
        render json: feedback
    end

    private
    def feedback_params
        params.require(:feedback).permit!
    end

end
