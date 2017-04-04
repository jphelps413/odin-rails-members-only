module ApplicationHelper

  # Returns teh full title on a per-page basis.
  def full_title page_title = ''
    page_title.empty? ?
      'Members Only Odin Exercise' : page_title+' | '+full_title
  end
end
