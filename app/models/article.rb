class Article < ApplicationRecord
    has_rich_text :contenidorichtext
    belongs_to :user
end
