class SchoolClassesController < ApplicationController


    def index
        @classes = SchoolClass.all
        puts "===="
        puts @classes.inspect
       
    end
    
    def new
        @class = SchoolClass.new
    end

    def create
        # @class = SchoolClass.new
        # @class.title = params[:school_class][:title]
        # @class.room_number = params[:school_class][:room_number]
        # @class.save
        
        @class = SchoolClass.create(title: params[:school_class][:title], room_number: params[:school_class][:room_number])
        puts '=='
        puts @class.inspect
        redirect_to school_class_path(@class)
    end

    def show
        @class = SchoolClass.find(params[:id])
    end

    def edit
        @class = SchoolClass.find(params[:id])
    end

    def update
        @class = SchoolClass.find(params[:id])
        @class.update(title: params[:school_class][:title], room_number: params[:school_class][:room_number])

        redirect_to school_class_path(@class)
    end


end
