class YokohamasController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create]
    def index
      if params[:search] != nil && params[:search] != ''
        
        search = params[:search]
        @yokohamas = Yokohama.joins(:user).where("home LIKE ? OR away LIKE ? OR hscore LIKE ? OR ascore LIKE ? OR about LIKE ? OR task LIKE ? ", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")

      else
        @yokohamas = Yokohama.all
      end 
    end
    
    


      def new
        @yokohama = Yokohama.new
      end
      
      def top 
        @yokohama = Yokohama.where('home LIKE ? OR away LIKE ?', '%横浜DeNAベイスターズ%', '%横浜DeNAベイスターズ%').order(created_at: :desc).first
      end
      
      def schedule
      end
  
      def history
      end
  
      def introduce
      end
  
      def sing
      end
  
      def access
      end

      def create
        yokohama = Yokohama.new(yokohama_params)
        yokohama.user_id = current_user.id
        if yokohama.save!
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end
      
      def show
        @yokohama = Yokohama.find(params[:id])
      end
      
      def edit
        @yokohama = Yokohama.find(params[:id])
      end
      
      def update
        yokohama = Yokohama.find(params[:id])
        if yokohama.update(yokohama_params)
          redirect_to :action => "show", :id => yokohama.id
        else
          redirect_to :action => "new"
        end
      end
    
      def destroy
        yokohama = Yokohama.find(params[:id])
        yokohama.destroy
        redirect_to action: :index
      end
    
      def miura

      end
      
      private
      def yokohama_params
        params.require(:yokohama).permit(:home, :away, :hscore, :ascore, :about, :task, :image)
      end
    end
    