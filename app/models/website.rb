class Website < ActiveRecord::Base
  validates :rank, uniqueness: true
  def name
    @name ||= url.split(".").first.capitalize
  end

  def to_s
    url_spaces = " " * (40 - url.length)
    name_spaces = " " * (40 - name.length)
    "url:#{url}#{url_spaces}name:#{name}#{name_spaces}rank:#{rank}"
  end
end
