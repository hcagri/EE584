import torch 
from torchvision.utils import make_grid
import os 
from PIL import Image
from torchvision.transforms import PILToTensor
import torchvision
import matplotlib.pyplot as plt

arr = []

fnames = os.listdir('/Users/hcagri/Documents/METU-Master/Term II/EE 584/project/mosse-object-tracking-master/keep_track')
tens_arr = []
for name in fnames:
    if name.endswith('.png'):
        arr.append(name)

arr = sorted(arr, key= lambda x: int(x.split('.')[0]))
print(arr)

for name in arr:
    img = plt.imread(os.path.join('/Users/hcagri/Documents/METU-Master/Term II/EE 584/project/mosse-object-tracking-master/keep_track',name))
    #img = Image.open(os.path.join('/Users/hcagri/Documents/METU-Master/Term II/EE 584/project/mosse-object-tracking-master/mosse',name))
    # img_tensor = PILToTensor()(img).type(torch.float32)
    img_tensor = torch.tensor(img)
    tens_arr.append(img_tensor.permute(2,0,1))

whole_img = torch.stack(tens_arr, dim=0)
img_grid = make_grid(whole_img, nrow=1)
torchvision.utils.save_image(img_grid, f"keep_track_grid.png")
