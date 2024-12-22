import os
from PIL import Image 
import pytesseract 

#path to tesseract executable
pytesseract.pytesseract.tesseract_cmd = r'C:\Program Files\Tesseract-OCR\tesseract.exe'

#save the image
# image_path = r'D:\aryangite\image.png'

# filepath = image_path
        
# #extract text from image
# text = pytesseract.image_to_string(Image.open(filepath))

# f = open("note.txt", 'w')
# f.write(text)

i = 0

for _ in range(3):
    i += 1
    filepath = r"D:\aryangite\imagesss"
    images = os.listdir(filepath)
    real_images = f"image{i}.png"
    
    print(real_images)

    open_images = os.path.join(filepath, real_images)
    # print(item)
    #extract text from image
    text = pytesseract.image_to_string(Image.open(open_images))
    print(open_images)
    f = open(f"note{i}.txt", 'w')
    f.write(text)
        
    # os.remove(filepath)   
    # print(real_images)

    f = open(f"note{i}.txt", "r")
    print(f.read())

    # print(real_images)
# f = open("notes.txt", 'r')
# print(f.read())
