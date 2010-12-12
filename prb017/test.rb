require 'rubygems'
require 'linguistics'
Linguistics::use( :en )

p (1..1000).inject(0){|sum,n| sum + n.en.numwords(:comma => '').gsub(' ',"").gsub('-','').length}