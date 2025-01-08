call plug#begin()
  """ LIBRARIES """
  Plug 'iron-e/vim-libmodal' "library for creating new modes
  Plug 'asins/vim-dict'  " vim dictionary repo
  """ CONFIGURATION """
  Plug 'editorconfig/editorconfig-vim' " dotfile (.editorconfig)
  Plug 'tpope/vim-sensible' " Default values
  Plug 'jesseleite/vim-sourcery' "Config file manager
  """ FUNCTIONALITY """
  Plug '907th/vim-auto-save'  "auto saver
  Plug 'strboul/urlview.vim'  "Url viewier 
  Plug 'tpope/vim-obsession'  "Vim session managent
  """ EXTRA MODES "
  Plug 'romgrk/winteract.vim' "Interactive Window
  Plug 'iron-e/vim-tabmode'  " Tab mode 
  """ INTERFACE """
  Plug 'scrooloose/nerdtree'  " FileSystem explorer
  Plug 'duggiefresh/vim-easydir'  " Directory plugin  
  Plug 'thaerkh/vim-workspace' "Auto session management
  Plug 'junegunn/fzf.vim'      "Fuzzy Finder
  Plug 'auxiliary/vim-layout'  "Multi file layout
  Plug 'lenowski/nuake'        "Terminal Panel
  Plug 'theprimeagen/vim-apm'  "Actions per minute
  Plug 'itchyny/lightline.vim' "Status line plugin 
  Plug 'preservim/tagbar'      "Class outline viewer
  Plug 'severin-lemaignan/vim-minimap'  " Vim Minimap
  """ BUFFERS """
  Plug 'vim-scripts/scratch-utility' "Scratch buffers
  Plug 'fholgado/minibufexpl.vim' "Buffer Explorer
  Plug 'rbong/vim-buffest' "Buffer editor
  Plug 'moll/vim-bbye'     "Buffer Deleter
  """ COMMANDS """
  Plug 'junegunn/fzf'          "Fuzzy finder 
  Plug 'hardenedapple/vsh'     "Run Shell Commands
  Plug 'skywind3000/asynctasks.vim'"Async Task Manager
  Plug 'wincent/ferret'        "Multi file search
  Plug 'w0rp/ale'              "Async linting engine
  Plug 'arp242/batchy.vim'     "Batch Operations 
  Plug 'dhruvasagar/vim-zoom'  "Window Zoom toggling
  Plug 'tpope/vim-eunuch'      "Unix/Linux commands 
  """ INTEGRATIONS """
  Plug 'vhdirk/vim-cmake'  "Cmake
  Plug 'janko-m/vim-test' "Test runners
  Plug 'tpope/vim-fugitive'    "Git wrapper
  Plug 'prettier/vim-prettier' "Wrapper for prettier 
  """ UTILITIES """
  Plug 'amopel/vim-log-print'  " Log/print statements
  Plug 'junegunn/vim-emoji'  "Emojis plugin 
  Plug 'dahu/vimple'        "Basic Utils
  Plug 'romainl/vim-qf'     "Quickfix Window utilities 
  """ COMPLETION """ 
  Plug 'shougo/neco-vim' "Vimscript completion
  Plug 'mattn/emmet-vim'  " Completions for web development
  """ THEMES & COLORS """
  Plug 'dracula/vim' "Darkmode theme
  Plug 'roosta/srcery' "Sorcery theme
  Plug 'nanotech/jellybeans.vim' "Colorful colorscheme
  Plug 'morhetz/gruvbox' "Retro colorscheme
  """ LANGUAGE SYNTAX """
  Plug 'pangloss/vim-javascript' "JS SyntaxHL
  Plug 'plasticboy/vim-markdown' "Markdown
  Plug 'mxw/vim-jsx'   "JSX / React
  Plug 'stanangeloff/php.vim' " PHP 
  """ LANGUAGE TOOLS 
  Plug 'simrat39/rust-tools.nvim' "Rust Tools
  Plug 'tpope/vim-fireplace'  " Clojure REPL support
  Plug 'moll/vim-node' " Nodejs Tools
  Plug 'smzm/hydrovim'  " Python runner 
  Plug 'heavenshell/vim-jsdoc' "JSDoc
  Plug 'jmcantrell/vim-virtualenv'" Run python with venv 
  """ SNIPPETS & TEMPLATES """ 
  Plug 'honza/vim-snippets' "Various
  Plug 'luchermitte/lh-cpp' "C++ Snippets
  Plug 'isruslan/vim-es6'  " JS ES6 Snippets
  Plug 'ap/vim-templates'  " Vim Templates 
call plug#end()