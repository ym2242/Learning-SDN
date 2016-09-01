#! /bin/bash

for i in 1 2 3 4; do
	ovs-vsctl add-port br0 p$i -- set Interface p$i ofport_request=$i type=internal
	ovs-ofctl mod-port br0 p$i up
done
