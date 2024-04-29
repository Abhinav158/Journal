class EntriesController < ApplicationController
  def index
    @entries = Entry.all
  end

  # Implement the R in CRUD
  def show
    @entry = Entry.find(params[:id])
  end

  # The new action instantiates a new entry but does NOT save it
  def new 
    @entry = Entry.new
  end

  # Implement the C in CRUD using the new method 
  def create
    @entry = Entry.new(entry_params)

    if @entry.save
      redirect_to @entry
    else
      render :new, status: :unprocessable_entity
    end
  end

  # This action fetches the article from the database and stores it in @entry
  def edit
    @entry = Entry.find(params[:id])
  end

  # Implement the U in CRUD 
  def update
    @entry = Entry.find(params[:id])

    if @entry.update(entry_params)
      redirect_to @entry
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # Implement the D in CRUD 
  
  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy

    redirect_to root_path, status: :see_other
  end


  private
    def entry_params
      params.require(:entry).permit(:date, :highlight, :weight, :notes)
    end
end
