class DocumentsController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:index]

  def index
    @documents = policy_scope(Document).order(created_at: :desc)
    @documents = Document.where(user: current_user)
    authorize @documents
  end

  def new
    @document = Document.new
    authorize @document
  end

  def create
    @document = Document.new(document_params)
    @document.user = current_user

    authorize @document

    if @document.save
      redirect_to documents_path(@document)
    else
      render :new
    end
  end

  # def edit
  #   @document = Document.find(params[:id])
  #   authorize @document
  # end

  # def update
  #   @document = Document.find(params[:id])
  #   authorize @document
  #   if @document.update(document_params)
  #     redirect_to @document, notice: 'Seu documento foi atualizado!'
  #   else
  #     render :edit
  #   end
  # end

  def destroy
    @document = Document.find(params[:id])
    @document.destroy
    redirect_to documents_path(@document)
    authorize @document
  end

  # def show
  #   @document = Document.find(params[:id])
  #   authorize @document
  # end

  private

  def document_params
    params.require(:document).permit(:category, :renewal, :renew_date, :user_id, :front, :back)
  end
end
