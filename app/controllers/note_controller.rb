class NoteController < ApplicationController
  def create
  end

  def destroy
  end


  private
  def set_note
    @note = Note.find([params: id])
  end

  def note_params
    params.require(:course).permit(:author, :comment, :courses_id)
  end
end