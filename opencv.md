# Extract frames
```python
import cv2

# Opens the Video file
cap= cv2.VideoCapture('/home/pytholic/Desktop/Projects/uav_mapping/data/evo/MAX_0012/MAX_0012.MP4')
length = int(cap.get(cv2.CAP_PROP_FRAME_COUNT))
print( length )

out_dir = '/home/pytholic/Desktop/Projects/uav_mapping/data/evo/MAX_0012/images/'
idx=0
while(cap.isOpened()):
    ret, frame = cap.read()
    idx += 1
    if (idx % 40) == 0:
        if ret == False:
            break
        # flip for iphone
        #frame = cv2.flip(frame, -1)
        frame = cv2.resize(frame, (1920, 1080))
        cv2.imwrite(out_dir + f'{idx:06d}.jpg', frame)
        print(f"Frame {idx} processed!")


cap.release()
cv2.destroyAllWindows()
```
