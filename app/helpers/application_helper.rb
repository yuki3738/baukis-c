module ApplicationHelper
  def document_title
    if @title.present?
      "#{@title} - Baukis"
    else
      'Baukis'
    end
  end
end
