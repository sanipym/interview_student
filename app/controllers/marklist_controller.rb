class MarklistController < ApplicationController

  require 'csv'
  def index
    @mark_list =  Markliste.all
  end

  def new
    @mark_list = Markliste.new
  end

  def create
    # puts ">>>>>",params[:markliste][:file].path
    CSV.foreach(params[:markliste][:file].path) do |row|
      @mark_list = Markliste.new
      @mark_list.subject_name = params[:markliste][:subject_name]
      @mark_list.mark = row[1]
      @mark_list.student_name = row[0]
      @mark_list.save
      puts row[0]
    end
    redirect_to marklist_index_path
  end

end
