import glob
from PIL import Image
import os


def make_gif(frame_folder):
    files = sorted(os.listdir(frame_folder), key= lambda x: int(x.split('.')[0]))
    #files = glob.glob(f"{frame_folder}/*.png")
    
    frames = [Image.open(os.path.join(frame_folder, image)) for image in files]
    frame_one = frames[0]
    frame_one.save("mosse.gif", format="GIF", append_images=frames,
               save_all=True, duration=100, loop=0)
    
if __name__ == "__main__":
    make_gif("/Users/hcagri/Documents/METU-Master/Term II/EE 584/project/mosse-object-tracking-master/record")