import numpy as np
import matplotlib.pyplot as plt
x=np.arange(0,5,0.00001)
y1=x**2
y2=2**x
y0=0*x
x0=0*y1
y00=7*x
plt.plot(x,y1)
plt.plot(x,y2)
plt.plot(x0,y00)
plt.plot(x,y0)
plt.title('2**x & x**2')
plt.xlabel('X')
plt.ylabel('Y')
plt.show()
