# WatchYourLAN-Patch

Built on top of the excellent [WatchYourLAN](https://github.com/aceberg/WatchYourLAN) project.

I wanted to customize the multi-VLAN support for my particular needs, this is the result.

## How this is different

The VLAN support in WatchYourLAN requires that the host you are running on has access to each of the VLANs you want to scan.
My network setup has [VLANs](https://lowtek.ca/roo/2023/openwrt-vlans-for-guest-and-iot-networks/), but the host running WatchYourLAN is on a single VLAN.

My hack (patch) is to replace the `arp-scan` binary with a shell script. This script uses ssh to connect to my OpenWRT device and run the arp-scan there.
Since my OpenWRT router can see all of the VLANs, I can then get data from each of them. This also allows me to run the docker container without the `--network:host`
option, this may be another reason someone wants to run this patch.

## Build log

- Update to upstream 2.1.2
