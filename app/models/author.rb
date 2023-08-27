class Author < ApplicationRecord

  def year_of_birth
    if yob.nil?
      return nil
    end

    bce_suffix = is_bce ? " (BCE)" : ""
    return "#{yob}#{bce_suffix}"
  end

  def quotes
    Quote.where(author_id: id)
  end

end
