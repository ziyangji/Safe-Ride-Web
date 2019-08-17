# This is a file to check if the client adress valid
from time import time
import numpy as np
import matplotlib.path as mpltPath
import sys

# To store the longitude and altitude of the edge of
#	serving area. The order is from up
#	 left corner, clockwise 
data_area = [(42.7476560, -73.68140550), (42.7476560, -73.6574369), 
			(42.7356354, -73.6584133), (42.7121860, -73.6651292), 
			(42.7086123, -73.6741186), (42.7136057, -73.6984043), 
			(42.7284725, -73.6949966), (42.7394849, -73.6856349),]
def check_input:
	if len( sys.argv != 2 ):
		print "Invalid Argument number"
		return False
	x = sys.argv[1]
	y = sys.argv[2]

	try: 
        	x = int(x)
	except ValueError:
        	return False
	try: 
        	x = int(x)
	except ValueError:
        	return False
	return True

if__name__== "__main__":
	
# Matplotlib mplPath
checkinput()
start_time = time()
path = mpltPath.Path(data_area)
inside = path.contains_points(x, y)
if inside:
	print "Client address valid"
else:
	print "Invalid Client address"
