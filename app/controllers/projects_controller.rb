class ProjectsController < ApplicationController


    def home
    end
    def index
    @project =Project.all
    end

    def new 
    @project=Project.new
    end

    def create
    @project=Project.new(project_params)
    respond_to do |format|
        if @project.save
           format.html {redirect_to projects_path,notice: "Project was created"  }
        else
            format.html {render :new }
        end
     end
    end 

    def show 
        @project=Project.find(params[:id])
    end
   

    def edit 
        @project=Project.find(params[:id])
    end


    def update
        @project=Project.find(params[:id])
        respond_to do |format|
            if @project.update(project_params)
               format.html {redirect_to projects_path,notice: "Project was updated"  }
            else
                format.html {render :edit }
            end
         end
    end 

    def destroy
        @project=Project.find(params[:id])
        respond_to do |format|
            if @project.destroy
               format.html {redirect_to projects_path,notice: "Project was successfully removed" }
            end
         end
    end





    def project_params
        params.require(:project).permit(:titel, :body)
    end

end
