junos.vim
=========

Vim syntax for Junos configuration files.

                                   | before | after
-----------------------------------|--------|------
`show configuration`               | ![config_before](http://momota.github.io/images/20160622_junos-confg_before.png) | ![config_after](http://momota.github.io/images/20160622_junos-confg_after.png)
`show configuration | display set` |![config-set_before](http://momota.github.io/images/20160622_junos-confg-set_before.png) | ![config_after](http://momota.github.io/images/20160622_junos-confg-set_after.png)

License
=======

[MIT](http://opensource.org/licenses/MIT)


Installation
============

Manually
--------

1. Put all files under $VIM.

Pathogen
--------

1. Install with the following command.

        git clone https://github.com/momota/junos.vim ~/.vim/bundle/junos.vim

[NeoBundle](https://github.com/Shougo/neobundle.vim)
----------------------------------------------------

1. Add the following configuration to your `.vimrc`.

        NeoBundle 'momota/junos.vim'

2. Install with `:NeoBundleInstall`.
