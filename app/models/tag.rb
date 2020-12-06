# frozen_string_literal: true

class Tag < ApplicationRecord
  has_many :taggings, dependent: :destroy
  has_many :articles, through: :taggings

  # def tag_list
  #   tags.collect(&:name).join(', ')
  # end

  def to_s
    name
  end
end
