class SectionsController < ApplicationController
  def index
    @sections = Section.all
  end

  def show
    @section = Section.find(params[:id])
  end

  def new
    @section = Section.new
  end

  def create
    @section = Section.new(section_params)
    if @section.save
      redirect_to(sections_path)
    else
      render('new')
    end
  end

  def edit
    @section = Section.find(params[:id])
  end

  def update
    @section = Section.find(params[:id])
    if @section.update_attributes(section_params)
      redirect_to(section_path(@section))
    else
      render('edit')
    end
  end

  def delete
  end

  def destroy
  end

  private

  def section_params
    params.require(:section).permit(:position, :name, :visible, :content_type, :content, :page_id)
  end
end
