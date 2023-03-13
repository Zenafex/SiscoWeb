class UsuariosController < ApplicationController
    def index
        @usuarios = Usuario.all
    end

    def new
        @usuarios = Usuario.new
    end

    def create
        @usuarios = Usuario.new(usuario_params)
        if @usuarios.save
            redirect_to usuarios_path
        else 
            render :new
        end
    end

    def edit
        @usuarios = Usuario.find(params[:id])
    end
    
    def update
        @usuarios = Usuario.find(params[:id])
        if @usuarios.update(usuario_params)
            redirect_to usuarios_path
        else 
            render :edit
        end
    end

    def show
        @usuarios = Usuario.find(params[:id])
        @usuarios.destroy
        redirect_to usuarios_path
        
    end

    def destroy
        @usuarios = Usuario.find(params[:id])
        @usuarios.destroy
        redirect_to usuarios_path
        
    end

    private
    def usuario_params
        params.require(:usuario).permit(:tipo_persona, :documento, :fecha_emision_doc,
        :fecha_venc_doc, :nombre, :correo, :telefono_principal, :telefono_secundario)
    end
end
