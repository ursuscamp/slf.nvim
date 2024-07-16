# slf.nvim

Vim syntax plugin for my own SLF (Simple Log File) format

This requires [slf](https://github.com/ursuscamp/slf) on the system path. After installing, run `:checkhealth slf`
to check if the setup is valid.

# Setup

Using `lazy.nvim`:

```lua
{
    'ursuscamp/slf.nvim',
	dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
        { '<leader>xl', ':Slf<CR>', desc = 'Log to SLF' },
    }
    config = function()
        require('slf').setup()
    end
}
```

# Default Option

These are the options which can be passed to `setup()`:

```lua
{
    -- May be a path to a .slf file to use. This is passed to --file argument of slf.
    -- If not provided, it will use slf's default.
    path = nil
}
```
