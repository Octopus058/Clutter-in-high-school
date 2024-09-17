import numpy as np
import matplotlib.pyplot as plt
x=np.arange(0,2*np.pi,0.001)
y1=np.sin(x)
y2=np.cos(x)
y0=0*x
x0=0*y1
plt.plot(x,y0)
plt.plot(x0,y1)
plt.plot(x,y1)
plt.plot(x,y2)
plt.title('sinx & cosx')
plt.xlabel('X')
plt.ylabel('Y')
plt.show()
