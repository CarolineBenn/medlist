class PagesController < ApplicationController
  before_action :set_page, only: [:show, :edit, :update, :destroy]

  def index
    @pages = Page.all
  end

  def show
    @page = Page.friendly.find(params[:id])
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(page_params)
    respond_to do |format|
      if @page.save
        format.html { redirect_to @page, notice: 'page was successfully created.' }
        format.json { render :show, status: :created, location: @page }
      else
        format.html { render :new }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end

  end

  def edit
  end

  def update
    respond_to do |format|
      if @page.update(page_params)
        format.html { redirect_to @page, notice: 'page was successfully updated.' }
        format.json { render :show, status: :ok, location: @page }
      else
        format.html { render :edit }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @page.destroy
    respond_to do |format|
      format.html { redirect_to pages_url, notice: 'page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  protected
  def set_page
    @page = Page.friendly.find(params[:id])
  end

  def page_params
    params.require(:page).permit(:title, :primary_content, :secondary_content)
  end


end
