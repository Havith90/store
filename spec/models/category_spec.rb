require 'rails_helper'

RSpec.describe Category, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  describe '#create' do
    it 'when attributes are not valid' do
      # Arrange/ arreglar / preparar datos de entrada
      new_category = Category.new     
      # Act / actuar / ejecutar
      new_category.save
      #Assert /Afirmas/ validar
      expect(new_category.errors[:name].count).to_not be(0)
    end

    it 'when attributes are valid' do 
      new_category = Category.new(name: 'food')

      new_category.save

      expect(new_category.id).to
  end
end
