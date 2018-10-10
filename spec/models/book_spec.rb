require 'rails_helper'

describe Book, type: :model do

  describe 'Validations' do

    it { should validate_presence_of(:title)}
    it { should validate_presence_of(:page_num)}
    it { should validate_presence_of(:year_published)}

  end

  describe 'Relationships' do

    it { should have_many(:author_books)}
    it { should have_many(:authors).through(:author_books)}

  end

end
