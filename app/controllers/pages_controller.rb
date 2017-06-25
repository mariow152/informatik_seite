class PagesController < ApplicationController
    def index
        @games = Game.all
    end
    
    def action
        
    end
    
    def  adventure
    end
        
    def  racing
    end
        
    def  sports
    end
        
    def  simulation
    end
    
end