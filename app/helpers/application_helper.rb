module ApplicationHelper
  def title(value)
    unless value.nil?
      @title = "#{value} | PlayingWithWebsockets"
    end
  end
end
