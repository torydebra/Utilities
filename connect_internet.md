# Magic trick to connect internet 
When using more network devices, as per robot embedded pcs

1. Check which network device is used (the one connected to the router, not the robot) with ifconfig and
modify `enp0s31f6` if necessary

2. Put this in a convenience script:
```
sudo ifconfig enp0s31f6:0
sudo dhclient enp0s31f6:0
```
