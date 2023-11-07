class SpeakersController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        speaker = Speaker.all 
        render json: speaker, status: :ok
    end

    def show
        speaker  = find_speaker
        render json: speaker
    end

    def create
        speaker = Speaker.create(speaker_params)
        render json: speaker, status: :created
    end

    def update
        speaker = find_speaker
        speaker.update(speaker_params)
        render json: speaker, status: :ok
    end

    def destroy
        speaker = find_speaker
        speaker.destroy
        head :no_content
    end

    private

    def find_speaker
        Speaker.find(params[:id])
    end

    def speaker_params
        params.permit(:Image, :Name, :Role, :Company, :Description, :Github, :LinkedIn, :Twitter, 
        :Topic, :Time, :Date, :Venue, :Topic2, :Time2, :Date2, :Venue2)
    end

    def render_unprocessable_entity_response
        render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
    end
end


