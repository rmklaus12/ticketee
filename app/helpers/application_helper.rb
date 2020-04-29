# frozen_string_literal: true

module ApplicationHelper
  def title(*parts)
    unless parts.empty?
      content_for :title do
        (parts << 'Ticketee').join(' - ')
      end
    end
  end
end
