require 'sanitize_msword'

describe 'Dirty msword text' do
  let(:dirty_html_example) {'<p class="MsoListParagraph">Some text</p>'}

  it "should be cleared of the word special html" do
     expect(dirty_html_example.sanitize_word_html).to match(/(?>(?!Mso[a-zA-Z]))/)
  end

end