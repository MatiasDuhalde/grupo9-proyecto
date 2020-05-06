class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.create(review_params)
    if @review.save
      redirect_to reviews_new_path, notice: 'Review creada exitosamente.'
    else
      redirect_to reviews_new_path, notice: 'Ocurrió un error al crear la película.'
    end
  end

  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      redirect_to review_path(@review.id), notice: "Review modificada con éxito."
    else
      redirect_to review_path(@review.id), notice: "Ocurrió un error al modificar la review."
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to reviews_index_path, notice: "Review eliminada con éxito."
  end

  private

  def review_params
    params.require(:review).permit :calificacion, :comentario
  end
end
