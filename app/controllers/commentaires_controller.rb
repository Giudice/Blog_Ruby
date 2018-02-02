class CommentairesController < ApplicationController
  before_action :set_commentaire, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @commentaires = Commentaire.all
  end

  def show
  end

  def new
    @commentaire = Commentaire.new
    @commentaire.post = Post.find(params[:post_id])
  end

  def edit
  end

  def create
    @commentaire = Commentaire.new(commentaire_params)
    if @commentaire.save
      redirect_to post_commentaire_path(@commentaire.post.id, @commentaire)
    end
  end

  def update
    if @commentaire.update(commentaire_params)
      redirect_to post_commentaire_path(@commentaire.post.id, @commentaire)
    else redirect_to posts_path
    end
  end

  def destroy
    @commentaire.destroy
    redirect_to commentaires_path
  end

  private
    def set_commentaire
      @commentaire = Commentaire.find(params[:id])
    end

    def commentaire_params
      params.require(:commentaire).permit(:contenu, :date, :post_id, :auteur)
    end
end
