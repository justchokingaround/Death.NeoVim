-- Unmap space and enter
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Enter>', '<NOP>', { noremap = true, silent = true })

-- Leader key
vim.g.mapleader = ' '

-- easymotion
vim.api.nvim_set_keymap('n', '<Leader>y', '<Plug>(easymotion-bd-f)', { noremap = true, silent = true })

-- explorer
vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- better window movement
vim.api.nvim_set_keymap('n', '<C-h>',     '<C-w>h',       { silent = true })
vim.api.nvim_set_keymap('n', '<C-j>',     '<C-w>j',       { silent = true })
vim.api.nvim_set_keymap('n', '<C-k>',     '<C-w>k',       { silent = true })
vim.api.nvim_set_keymap('n', '<C-l>',     '<C-w>l',       { silent = true })

-- tab switch buffer and tab edit
vim.api.nvim_set_keymap('n', '<Tab>',   ':BufferLineCycleNext<CR>',               { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-Tab>', ':BufferLineCyclePrev<CR>',               { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-w>',   ':bdelete<CR>',                           { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-t>',   ':tabnew<CR>',                            { noremap = true, silent = true })

-- buffers
vim.api.nvim_set_keymap('n', '<Leader>bp',    ':BufferLinePick<CR>',                      { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>bcl',   ':BufferLineCloseLeft<CR>',                 { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>bcr',   ':BufferLineCloseRight<CR>',                { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>bmn',   ':BufferLineMoveNext<CR>',                  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>bmp',   ':BufferLineMovePrev<CR>',                  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>bsd',   ':BufferLineSortByDirectory<CR>',           { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>bse',   ':BufferLineSortByExtension<CR>',           { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>bsr',   ':BufferLineSortByRelativeDirectory<CR>',   { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>bst',   ':BufferLineSortByTabs<CR>',                { noremap = true, silent = true })

-- move selected line / block of text in visual mode
vim.api.nvim_set_keymap('v', 'K', ':move \'<-2<CR>gv-gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'J', ':move \'>+1<CR>gv-gv', { noremap = true, silent = true })

-- spell correction
vim.api.nvim_set_keymap('i', '<C-l>', '<C-g>u<Esc>[s1z=`]a<C-g>u', { noremap = true, silent = true })

-- highlight everything
vim.api.nvim_set_keymap('n', '<C-a>', 'ggVG',       { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-a>', '<Esc>ggVG',  { noremap = true, silent = true })

-- windows/panes/tabs/buffers
vim.api.nvim_set_keymap('n', '<Leader>v', ':vsplit<CR>',    { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>h', ':split<CR>',     { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>o', ':only<CR>',      { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>d', ':Dashboard<CR>', { noremap = true, silent = true })
  
-- git
vim.api.nvim_set_keymap('n', '<Leader>gs', ':Git<CR>',              { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>ga', ':Git add .<CR>',        { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>gd', ':Git diff<CR>',         { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>gc', ':Git commit<CR>',       { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>gp', ':Git push<CR>',         { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>gP', ':Git pull<CR>',         { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>gl', ':Git log<CR>',          { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>gL', ':LazyGit<CR>',          { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>gf', ':LazyGitFilter<CR>',    { noremap = true, silent = true })

-- translate
vim.api.nvim_set_keymap('n', '<Leader>rt', ':Translate<CR>',  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>rw', ':TranslateW<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>rr', ':TranslateR<CR>', { noremap = true, silent = true })

-- vimtex
vim.api.nvim_set_keymap('n', '<Leader>lc', ':VimtexCompile<CR>',          { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>ls', ':VimtexCompileSelected<CR>',  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>li', ':VimtexInfo<CR>',             { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>lt', ':VimtexTocToggle<CR>',        { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>lv', ':VimtexView<CR>',             { noremap = true, silent = true })

-- markdown
vim.api.nvim_set_keymap('n', '<Leader>mp', ':MarkdownPreview<CR>', { noremap = true, silent = true })

-- inkscape
vim.cmd('source ~/.config/nvim/lua/core/keymappings.vim')

-- table
vim.api.nvim_set_keymap('n', '<Leader>tt',  ':TableModeToggle<CR>',  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>taf', ':TableAddFormula<CR>',   { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>tdr', '<Leader>tdr',            { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>tdc', '<Leader>tdc',            { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>tic', '<Leader>tic',            { noremap = true, silent = true })

-- commenting
vim.api.nvim_set_keymap('n', '<Leader>nc', ':call nerdcommenter#Comment(0, "comment")<CR>',   { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Leader>nc', ':call nerdcommenter#Comment(1, "comment")<CR>',   { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>nu', ':call nerdcommenter#Comment(0, "uncomment")<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Leader>nu', ':call nerdcommenter#Comment(1, "uncomment")<CR>', { noremap = true, silent = true })

-- package manager
vim.api.nvim_set_keymap('n', '<Leader>pi', ':PackerInstall<CR>',  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>pu', ':PackerUpdate<CR>',   { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>pc', ':PackerClean<CR>',    { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>pl', ':PackerLoad<CR>',     { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>ps', ':PackerSync<CR>',     { noremap = true, silent = true })

-- telescope
vim.api.nvim_set_keymap('n', '<Leader>ff', ':Telescope find_files<CR>',     { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fc', ':Telescope colorscheme<CR>',    { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fb', ':Telescope buffers<CR>',        { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fo', ':Telescope commands<CR>',       { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fq', ':Telescope quick_fix<CR>',      { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fgs', ':Telescope git_status<CR>',    { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fgf', ':Telescope git_files<CR>',     { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fgc', ':Telescope git_commits<CR>',   { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fgb', ':Telescope git_branches<CR>',  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fgt', ':Telescope git_stash<CR>',     { noremap = true, silent = true })

-- mini map
vim.api.nvim_set_keymap('n', '<Leader>ic', ':MinimapClose<CR>',     { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>io', ':MinimapOpen<CR>',      { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>ir', ':MinimapRefresh<CR>',   { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>it', ':MinimapToggle<CR>',    { noremap = true, silent = true })

-- lsp
vim.api.nvim_set_keymap('n', '<Leader>sdd', '<cmd>lua vim.lsp.buf.definition()<CR>',                { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>sdf', ':Lspsaga lsp_finder<CR>',                              { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>sdr', '<cmd>lua vim.lsp.buf.references()<CR>',                { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>sdt', '<cmd>lua vim.lsp.buf.type_definition()<CR>',           { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>sdp', ':Lspsaga preview_definition<CR>',                      { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<Leader>swa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>',      { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>swr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>',   { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<Leader>sh',  ':Lspsaga hover_doc<CR>',                               { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>sc',  ':Lspsaga code_action<CR>',                             { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>se',  ':Lspsaga show_line_diagnostics<CR>',                   { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>sq',  '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>',        { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>sf',  ':Lspsaga format<CR>',                                  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>sr',  ':Lspsaga rename<CR>',                                  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>si',  ':Lspsaga implement<CR>',                               { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-d>',       ':Lspsaga open_floaterm<CR>',                           { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '[d',          '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>',          { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ']d',          '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>',          { noremap = true, silent = true })
