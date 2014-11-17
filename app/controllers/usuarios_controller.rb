class UsuariosController < ApplicationController
  before_action :get_usuario, only: [:edit, :update, :destroy, :buy, :sell, :ask, :answer, :show]

  def index
  end

  def create
  end

  def destroy
  end

  def edit
  end

  def buy
  end

  def sell
  end

  def ask
  end

  def answer
  end

  def show
  end

  def get_usuario
      @usuario = Usuario.find(params[:id])
  end
