require 'bookmarks'

describe Bookmarks do
let(:bookmarks) { described_class.display }
# let(:makers) { double('bookmark') }
# let(:stackoverflow) { double('bookmark') }
# let(:github) { double('bookmark') }

before do
  # allow(makers).to receive(:[]).with(:link).and_return('https://www.makers.tech/')
  # allow(stackoverflow).to receive(:[]).with(:link).and_return('https://stackoverflow.com/')
  # allow(github).to receive(:[]).with(:link).and_return('https://github.com/')
  # allow(makers).to receive(:[]).with(:name).and_return('makers')
  # allow(stackoverflow).to receive(:[]).with(:name).and_return('stackoverflow')
  # allow(github).to receive(:[]).with(:name).and_return('github')
end
  
  describe '#display' do
    it 'returns a list of bookmakrs' do
      expect(bookmarks).to include "<a href='http://www.makersacademy.com/'>1. makers</a>"
      expect(bookmarks).to include "<a href='http://www.destroyallsoftware.com'>2. twitter</a>"
      expect(bookmarks).to include "<a href='http://www.google.com/'>3. google</a>"
    end

  end

end