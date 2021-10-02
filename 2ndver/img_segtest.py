import numpy as np
import cv2 as cv
from matplotlib import pyplot as plt

img = cv.imread('__filename__')
grey = cv.cvtColor(img, cv.COLOR_BGR2GRAY)

ret, thresh = cv.threshold(grey,0,255,cv.THRESH_BINARY_INV+cv.THRESH_OTSU)