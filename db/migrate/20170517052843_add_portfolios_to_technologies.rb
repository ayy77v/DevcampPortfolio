class AddPortfoliosToTechnologies < ActiveRecord::Migration[5.0]
  def change
    add_reference :technologies, :portfolio, foreign_key: true
  end
end
