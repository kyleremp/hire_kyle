class AddAttachmentsWithPaperclip < ActiveRecord::Migration
  def up
    add_attachment :job_applications, :resume
    add_attachment :job_applications, :letter
  end

  def down
    remove_attachment :job_applications, :resume
    remove_attachment :job_applications, :letter
  end
end
