class AttendeesController < ApplicationController
  # GET /attendees
  # GET /attendees.xml
  load_and_authorize_resource
  
  def index
    @attendees = Attendee.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @attendees }
    end
  end

  # GET /attendees/1
  # GET /attendees/1.xml
  def show
    @attendee = Attendee.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @attendee }
    end
  end

  # GET /attendees/new
  # GET /attendees/new.xml
  def new
    event = Event.find( params[:event_id])
    @attendee = event.attendees.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @attendee }
    end
  end

  # GET /attendees/1/edit
  def edit
    @attendee = Attendee.find(params[:id])
  end

  # POST /attendees
  # POST /attendees.xml
  def create
    @attendee = Attendee.new(params[:attendee])

    respond_to do |format|
      if @attendee.save
        format.html { redirect_to(@attendee.event, :notice => 'Attendee was successfully created.') }
        format.xml  { render :xml => @attendee, :status => :created, :location => @attendee }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @attendee.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /attendees/1
  # PUT /attendees/1.xml
  def update
    @attendee = Attendee.find(params[:id])

    respond_to do |format|
      if @attendee.update_attributes(params[:attendee])
        format.html { redirect_to(@attendee.event , :notice => 'Attendee was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @attendee.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /attendees/1
  # DELETE /attendees/1.xml
  def destroy
    @attendee = Attendee.find(params[:id])
    @attendee.destroy

    respond_to do |format|
      format.html { redirect_to(attendees_url) }
      format.xml  { head :ok }
    end
  end
end
