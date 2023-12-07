vim.cmd([[command! -nargs=0 -bar DefCppMake lua DefCppMake()]])

function DefCppMake()
	vim.cmd("!g++ -Wall -Wextra *.cpp -o out")
end

