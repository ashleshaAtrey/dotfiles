# Conky Configs

## Setup

Edit the configuration files, replacing `[{disk_path}]`, `[{fs_path}]` and
`[{net_interface}]` tags with the informationf or the system. Edit the CPU
percentages and the temperatures, making sure the number of cores is correct
and that the processor model sed commands are correct.

Please the configs in `~/.config/conky/`. If you want to script the startup of
conky, place the conky-start bash script in your `$PATH` after
editing it to contain the paths for your system. Then symlink it in
`~/.config/autostart-scripts`.
