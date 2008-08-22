class ImmuniasationsController < ApplicationController
  # GET /immuniasations
  # GET /immuniasations.xml
  def index
    @immuniasations = Immuniasation.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @immuniasations }
    end
  end

  # GET /immuniasations/1
  # GET /immuniasations/1.xml
  def show
    @immuniasation = Immuniasation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @immuniasation }
    end
  end

  # GET /immuniasations/new
  # GET /immuniasations/new.xml
  def new
    @immuniasation = Immuniasation.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @immuniasation }
    end
  end

  # GET /immuniasations/1/edit
  def edit
    @immuniasation = Immuniasation.find(params[:id])
  end

  # POST /immuniasations
  # POST /immuniasations.xml
  def create
    @immuniasation = Immuniasation.new(params[:immuniasation])

    respond_to do |format|
      if @immuniasation.save
        flash[:notice] = 'Immuniasation was successfully created.'
        format.html { redirect_to(@immuniasation) }
        format.xml  { render :xml => @immuniasation, :status => :created, :location => @immuniasation }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @immuniasation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /immuniasations/1
  # PUT /immuniasations/1.xml
  def update
    @immuniasation = Immuniasation.find(params[:id])

    respond_to do |format|
      if @immuniasation.update_attributes(params[:immuniasation])
        flash[:notice] = 'Immuniasation was successfully updated.'
        format.html { redirect_to(@immuniasation) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @immuniasation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /immuniasations/1
  # DELETE /immuniasations/1.xml
  def destroy
    @immuniasation = Immuniasation.find(params[:id])
    @immuniasation.destroy

    respond_to do |format|
      format.html { redirect_to(immuniasations_url) }
      format.xml  { head :ok }
    end
  end
end
