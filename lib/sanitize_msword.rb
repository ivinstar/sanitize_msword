class String
  def sanitize_word_html
    gsub!(/\n|\r| class=(")?Mso[a-zA-Z]+(")?/){""}
    gsub!(/\&lt\;/){"<"}
    gsub!(/\&gt\;/){">"}
    gsub!(/\&nbsp\;/){" "}
    gsub!(/<!--(.*?)-->/){""}
    gsub!(/<!\[(.*?)\]>/){""}
    gsub!(/<(\/)*(meta|link|div|span|\\?xml:|st1:|o:|font)(.*?)>/){""}
    gsub!(/�/){""}
    ["style", "applet", "embed", "noframes", "noscript"].map{|i| gsub!(/<#{i}.*?#{i}(.*?)>/){""} }
    ["style", "start"].map{|i| gsub!(/\s#{i}=\"(.*?)\"/){""} }
    gsub!(/�/){'"'}
    gsub!(/(<script>)/){"&ltscript&gt"}
    gsub!(/(<\/script>)/){"&lt/script&gt"}
    gsub!(/�/){'"'}
    gsub!(/\s\s+/){""}
    gsub!(/<p><\/p>/){""}
    gsub!(/<\/h1><\/h1>/){""}
    gsub!(/<\/h2><\/h2>/){""}
    gsub!(/<\/h3><\/h3>/){""}
    gsub!(/<\/h4><\/h4>/){""}
    gsub!(/<\/h5><\/h5>/){""}
    gsub!(/<\/h6><\/h6>/){""}
    gsub!(/(<\/h[0-9]>)/){"#{$1}\n"}
    gsub!(/(<h[0-9]>)/){" #{$1}"}
    gsub!(/(<p>)/){" #{$1}"}
    gsub!(/(<\/p>)/){"#{$1}\n"}
    gsub!(/(<html>)/){"#{$1}\n"}
    gsub!(/(<\/html>)/){"#{$1}\n"}
    gsub!(/(<head>)/){"\n#{$1}\n"}
    gsub!(/(<\/head>)/){"#{$1}\n"}
    gsub!(/(<\/title>)/){"#{$1}\n"}
    gsub!(/(<body>)/){"#{$1}\n"}
    gsub!(/(<\/body>)/){"#{$1}\n"}    
    gsub!(/(<\/li>)/){"#{$1}\n"}
    gsub!(/(<\/ul>)/){"#{$1}\n"}
    gsub!(/(<ul>)/){"#{$1}\n"}
    gsub!(/(<\/table>)/){"#{$1}\n"}
    gsub!(/(<br(.*?)>)/){"#{$1}\n"}
    self
  end
end
