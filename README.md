# haskell-refactor
Vim plugin that integrates with
[haskell-tools](https://github.com/haskell-tools/haskell-tools)

## Requirements
- [haskell-tools](https://github.com/haskell-tools/haskell-tools)
  - Follow the steps
    [here](https://github.com/haskell-tools/haskell-tools/blob/master/documentation/installation.md)
    or run `stack install haskell-tools-cli` to install haskell-tools.

## Plugin
If you're using vim-plug:
```
Plug "Peachball/haskell-rename", {'for': 'haskell'}
```

## Usage
`:Rename <new-name>` renames the corresponding symbol under the cursor

That's it!
