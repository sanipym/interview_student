class VerificationController < ApplicationController
  def index
    user_id = 1
    @teacher = Verification.find(user_id)
    @mark_list = Markliste.where(subject_name:@teacher.subject_name)
  end

  def check
    mark_list = Markliste.find(params[:id])
    mark_list.verify = "done"
    mark_list.save
    redirect_to verification_index_path
  end
end
