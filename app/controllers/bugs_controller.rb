class BugsController < ApplicationController

    def index
        @bug =Bug.all
    end

    def new
       @bug = Bug.new
    end

    def create
     @bug = Bug.new(bug_params)
     respond_to do |format|
        if @bug.save
        format.html {redirect_to bugs_path,notice:"Bug was created"  }
        else
        format.html {render :new}
        end
      end
    end

    def show
    @bug = Bug.find(params[:id])
    end

    def edit
      @bug = Bug.find(params[:id])
    end

    def update
      @bug = Bug.find(params[:id])
      respond_to do |format|
        if @bug.update(bug_params)
        format.html {redirect_to bugs_path,notice: "Bug was updated"  }
        else
          format.html {render :edit}
        end
      end
   end

   def destroy
    @bug = Bug.find(params[:id])
    respond_to do |format|
      if @bug.destroy
      format.html {redirect_to bug_path,notice:"Bug was deleted"  }
    end
   end
  end


    








    def bug_params
     params.require(:bug).permit(:titel,:body)
    end
end