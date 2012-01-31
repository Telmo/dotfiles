" some simple imap shortcuts, same as textmate's
" ...
" i wonder if something somewhere converts textmate bundles to vim?

set filetype=ruby

imap de<TAB> <ESC>idescribe "description" do<CR><TAB>it "should ..." do<CR><CR>end<CR>end<ESC>kkkk/"<CR>lv/"<CR>h
imap b4<TAB> before do<CR>end<ESC>ko
imap a4<TAB> after do<CR>end<ESC>ko
imap it<TAB> it do<CR>end<ESC>ko

" specdoc current file
map <F4> <ESC>:! clear && spec --color --format specdoc "%"<CR>
" specdoc current directory
map <F5> <ESC>:! clear && spec --color --format specdoc $(dirname '%')<CR>
" specweb current file
map <F6> <ESC>:! clear && mkdir -p /tmp/specweb && echo "$(spec --format html %)" > "/tmp/specweb/$(basename '%').html" && firefox "/tmp/specweb/$(basename '%').html"<CR>
" specweb current directory
map <F7> <ESC>:! clear && mkdir -p /tmp/specweb && echo "$(spec --format html `dirname '%'`)" > "/tmp/specweb/$(dirname '%').html" && firefox "/tmp/specweb/$(dirname '%').html"<CR>
