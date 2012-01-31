" for determining filetypes and whatnot
if exists("did\_load\_filetypes")
  finish
endif

au! BufRead,BufNewFile *.as           setfiletype actionscript
au! BufRead,BufNewFile *.mab          set ft=ruby
au! BufRead,BufNewFile *.haml         setfiletype haml
au! BufRead,BufNewFile *.sass         setfiletype sass
au! BufRead,BufNewFile *.mkd          setfiletype mkd
au! BufRead,BufNewFile *.irb          setfiletype ruby
au! BufRead,BufNewFile *.ru           setfiletype ruby
au! BufRead,BufNewFile *.text         setfiletype textile
" au! BufRead,BufNewFile *.text         setfiletype textile
au! BufRead,BufNewFile *_spec.rb      setfiletype rspec
au! BufRead,BufNewFile /etc/nginx/* set ft=nginx 
