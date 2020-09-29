class LinksController < ApplicationController
  def index
    @links = Link.all
  end

  def redirect
    @link = Link.find_by_short_url(params[:short_url])
    @link.visit_count += 1
    @link.save
    @visit = Visit.new(link_id: @link.id)
    # future enhancements
    @visit.city = "TBD"
    @visit.country = "TBD"
    @visit.visit_date = DateTime.now
    @visit.save
    redirect_to @link.full_url
  end

  def new
    @link = Link.new
  end

  def create
    @link  = Link.create(link_attributes)
    if @link.save
      render new_link_path
    else
      flash[:notice] = @link.errors.full_messages.to_sentence
      redirect_to new_link_path
    end
  end

  def update
    Link.find(params[:id]).update_attributes(params[:link])
  end

  def destroy
    Link.find(params[:id]).destroy
  end

  def show
    @link = Link.find(params[:id])
    @visits = Visit.where(link_id: @link.id).recent_visits
  end

  private

  def link_attributes
    params.require(:link).permit(:short_url, :full_url, :geo_location, :visit_count)
  end

end
