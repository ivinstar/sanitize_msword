This gem cleans the html code that is copied from Microsoft Word.

## Usage

To String class was added a new method 'sanitize_word_html'

1. Just type

'<p class="MsoListParagraph"><![if !supportLists]><![endif]>fgcvb</p>'.sanitize_word_html

2. And you will get this result

=> "<p>fgcvb</p>"
