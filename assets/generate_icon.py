from PIL import Image

filename = r'bus.png'
img = Image.open(filename)

icon_sizes = [(16,16), (32, 32), (48, 48), (64,64)]
img.save('logo.ico', sizes=icon_sizes)
