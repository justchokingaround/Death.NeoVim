local trouble_status, trouble = pcall(require, "trouble")

if not trouble_status then
	vim.notify("Please Install 'trouble'")
	return
end

trouble.setup({})
