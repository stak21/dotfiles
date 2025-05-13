-- Key Mappings
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Better window navigation
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)
map('n', '<C-l>', '<C-w>l', opts)

-- Neo-tree
map('n', '<leader>e', ':Neotree toggle<CR>', opts)

-- Telescope
map('n', '<leader>ff', ':Telescope find_files<CR>', opts)
map('n', '<leader>fg', ':Telescope live_grep<CR>', opts)
map('n', '<leader>fb', ':Telescope buffers<CR>', opts)
map('n', '<leader>fh', ':Telescope help_tags<CR>', opts)

-- Buffer navigation
map('n', '<S-h>', ':BufferLineCyclePrev<CR>', opts)
map('n', '<S-l>', ':BufferLineCycleNext<CR>', opts)
map('n', '<leader>c', ':bd<CR>', opts)

-- Save and quit shortcuts
map('n', '<leader>w', ':w<CR>', opts)
map('n', '<leader>q', ':q<CR>', opts)

-- No highlight search
map('n', '<leader>h', ':nohlsearch<CR>', opts)

-- Better indenting
map('v', '<', '<gv', opts)
map('v', '>', '>gv', opts)

-- Move text up and down
map('v', '<A-j>', ":m '>+1<CR>gv=gv", opts)
map('v', '<A-k>', ":m '<-2<CR>gv=gv", opts)

-- Don't yank on delete char
map('n', 'x', '"_x', opts)
map('v', 'x', '"_x', opts)

-- Select all
map('n', '<C-a>', 'gg<S-v>G', opts)

-- Toggle terminal
map('n', '<leader>t', ':ToggleTerm<CR>', opts)
map('t', '<Esc>', '<C-\\><C-n>', opts)

-- Define the Ag command
vim.api.nvim_create_user_command('Ag', function(opts)
  require('telescope.builtin').grep_string({
    search = opts.args,
    use_regex = false
  })
end, { nargs = '?' })

-- Add a mapping for quick Ag searching
map('n', '<leader>ag', ':Ag ', { noremap = true })
