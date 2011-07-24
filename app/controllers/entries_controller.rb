class EntriesController < ApplicationController
  # autocomplete :hacker, :twitter
  #  autocomplete :round, :deadline

  # GET /entries
  # GET /entries.xml
  def index
    @entries = Entry.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @entries }
    end
  end

  # GET /entries/1
  # GET /entries/1.xml
  def show
    @entry = Entry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @entry }
    end
  end

  # GET /entries/new
  # GET /entries/new.xml
  def new
    @entry = Entry.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @entry }
    end
  end

  # GET /entries/1/edit
  def edit
    @entry = Entry.find(params[:id])
  end

  # POST /entries
  # POST /entries.xml
  def create

    # require_login
    # puts params[:entry]
    # ap params[:entry]
    #ap current_hacker
    # params[:entry][:hacker] = current_hacker
    @entry = Entry.new(params[:entry])

    respond_to do |format|
      if @entry.save
        format.html { redirect_to(@entry, :notice => 'Entry was successfully created.') }
        format.xml  { render :xml => @entry, :status => :created, :location => @entry }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @entry.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /entries/1
  # PUT /entries/1.xml
  def update
    @entry = Entry.find(params[:id])

    respond_to do |format|
      if @entry.update_attributes(params[:entry])
        format.html { redirect_to(@entry, :notice => 'Entry was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @entry.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /entries/1
  # DELETE /entries/1.xml
  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy

    respond_to do |format|
      format.html { redirect_to(entries_url) }
      format.xml  { head :ok }
    end
  end

  def scoreboard
    #    topHackers = params[:to_show] || 10
    @hackers = Hacker.includes(:entries).where("entries_count > 0").order("entries_count desc")
    @sidelined = Hacker.where("entries_count=0")
    # fixme take last n? 6,7?
    @rounds = Round.open_rounds # .limit(6)


    @entries = {}
    @hackers.each do |h|
      @entries[h.id]={}
      h.entries.each do |e|
        @entries[h.id][e.round.id] = e
      end
    end
  end

end
