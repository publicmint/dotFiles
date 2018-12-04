# Tmux environments.

1. Support tmux version
  * 2.8

1. Requirements package
  * pkg-config
  * libevent-dev
  * libncurses5-dev
  * automake

1. Compiling tmux-mem-cpu-load plugin
  1. Need packages
  	1. cmake
	1. gcc

  1. Build
    1. cd $TMUX_PLUGIN_MANAGER_PATH/
	1. cmake .
	1. make
