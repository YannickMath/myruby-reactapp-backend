class MessagesController < ApplicationController
    def create
      @message = Message.new(message_params)
      if @message.save
        # Opérations à effectuer en cas de réussite (par exemple, redirection, réponse JSON, etc.)
        puts "Message enregistré avec succès !"
      else
        # Opérations à effectuer en cas d'échec (par exemple, affichage des erreurs, réponse d'erreur, etc.)
        puts "Échec de l'enregistrement du message :"
        puts @message.errors.full_messages
      end
    end

    def show
        @message = Message.find(params[:id])
        if @message
            render json: @message
            puts "Message trouvé !"
        else
            puts "Message introuvable"
        end
        end

    private

    def message_params
        params.require(:message).permit(:content, :user_id) # Spécifiez les paramètres requis pour l'utilisateur
        end
        
end
