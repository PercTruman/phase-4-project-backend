class SessionsController < ApplicationController
    def create

        teacher = Teacher.find_by(email: params[:email])
        if teacher&.authenticate(params[:password])
             session[:teacher_id] = teacher.id                #teacher is now logged in
            render json: teacher, status: :ok   
        else
            render json: {error:"Invalid Credentials"}, status: :unauthorized
        # teacher = Teacher.find_by!(email: params[:email])    #make sure teacher exists
        # teacher.authenticate(params[:password])               #check password for accuracy
        # session[:teacher_id] = teacher.id                       #teacher is now logged in
        # render json: teacher, status: :ok 
        end                      #let front end know
    end 

    def destroy
        session.delete(:teacher_id)
    end
end
