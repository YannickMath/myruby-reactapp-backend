class UsersController < ApplicationController
    def create
      @user = User.new(user_params)
      if @user.save
        # Opérations à effectuer en cas de réussite (par exemple, redirection, réponse JSON, etc.)
        puts "Utilisateur enregistré avec succès !"
      else
        # Opérations à effectuer en cas d'échec (par exemple, affichage des erreurs, réponse d'erreur, etc.)
        puts "Échec de l'enregistrement de l'utilisateur :"
        puts @user.errors.full_messages
      end

      def show
        @user = User.find(params[:id])
        
        if @user
            render json: @user
            puts "Utilisateur trouvé !"
        else
            puts "Utilisateur introuvable"
        end
        end
        
      def destroy
        @user = User.find(params[:id])
        @user.destroy
        puts "Utilisateur supprimé avec succès !"
      end

      def index
        @users = User.all
        render json: @users
        end
        
    end
  
    private
  
    def user_params
      params.require(:user).permit(:name, :email, :password, :username) # Spécifiez les paramètres requis pour l'utilisateur
    # puts user_params
    end
  end
  