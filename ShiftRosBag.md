# Shift the time of a rosbag,
#### for when things are going bad...

```python
#!/usr/bin/python
import rospy
import rosbag

# duration between the epoch and Oct 06 2012 17:15:38.30
TIME_OFFSET = rospy.Duration(4.5)

with rosbag.Bag('outputVision.bag', 'w') as outbag:
    for topic, msg, t in rosbag.Bag('vision.bag').read_messages():
        #t += TIME_OFFSET
        t = t - TIME_OFFSET 
        msg.header.stamp = msg.header.stamp - TIME_OFFSET
        outbag.write(topic, msg, t)
```
