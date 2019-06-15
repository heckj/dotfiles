# rbenv version installation
rbenv install 2.6.3
rbenv global 2.6.3

gem install asciidoctor
NOKOGIRI_USE_SYSTEM_LIBRARIES=1 gem install asciidoctor-epub3 --pre
gem install pygments.rb
