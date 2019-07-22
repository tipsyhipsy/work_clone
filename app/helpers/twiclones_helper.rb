module TwiclonesHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm'
      confirm_twiclones_path
    elsif action_name == 'edit'
      new_twiclone_path
    end
  end
end
