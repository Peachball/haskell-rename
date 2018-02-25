command! -nargs=1 Rename :call RenameUnderCursor(<f-args>)

function! RenameUnderCursor(newname)
	let l:curline = line(".")
	let l:curcol = col(".")
	let l:loc = l:curline . ":" . l:curcol
	let l:curfile = expand('%:r')

	" Error prone method of finding package name (will not work on windows)
	let l:pkg_name = substitute(l:curfile, '/', '.', 'g')
	let l:pkg_name = substitute(l:pkg_name, '.\{-}\.', '', '')
	execute "silent !printf \"RenameDefinition " . l:pkg_name
				\. " " . l:loc . "-" . l:loc . " " . a:newname
				\. "\\nExit\" | stack exec ht-refact -- . &> /dev/null"
endfunction
