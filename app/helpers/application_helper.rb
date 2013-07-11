module ApplicationHelper

  def site_name
    "Talk Vite"
  end

  def site_title
    "TalkVite"
  end

  def site_base_path
    "talkvite.com"
  end

  def site_url
    "http://www." + site_base_path()
  end

  # Returns the full title on a per-page basis.       # Documentation comment
  def full_title(page_title)                          # Method definition
    base_title = site_title
    if page_title.empty?                              # Boolean test
      base_title                                      # Implicit return
    else
      "#{base_title} | #{page_title}"                 # String interpolation
    end
  end

end
