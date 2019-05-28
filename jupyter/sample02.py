#%% Change working directory from the workspace root to the ipynb file location. Turn this addition off with the DataScience.changeDirOnImportExport setting
import os
try:
    os.chdir(os.path.join(os.getcwd(), 'jupyter'))
    print(os.getcwd())
except:
    pass
#%%
# get_ipython().run_line_magic('matplotlib', 'inline')
import matplotlib.pyplot as plt
import numpy as np
# from matplotlib import rc

# rc("text", usetex=True)

#%%
iv = np.loadtxt("./dd_out_iv.txt")
iv[:, 1:4] = iv[:, 1:4] / (10**3)

fig = plt.figure(figsize=(9, 9))

ax1 = fig.add_subplot(221)
line1, = ax1.plot(iv[:, 0], iv[:, 1], label=r"$ J_p $")
ax1.grid(True)
ax1.set_xlabel(r"V (V)")
ax1.set_ylabel(r"$ J \times 10^3 A/m^2 $")
ax1.set_title(r"Current-voltage characteristics")
ax1.legend()

ax2 = fig.add_subplot(222)
line2, = ax2.plot(iv[:, 0], iv[:, 2], label=r"$ J_n $")
ax2.grid(True)
ax2.set_xlabel(r"V (V)")
ax2.set_ylabel(r"$ J \times 10^3 A/m^2 $")
ax2.set_title(r"Current-voltage characteristics")
ax2.legend()

ax3 = fig.add_subplot(223)
line3, = ax3.plot(iv[:, 0], iv[:, 3], label=r"$ J_p + J_n $")
ax3.grid(True)
ax3.set_xlabel(r"V (V)")
ax3.set_ylabel(r"$ J \times 10^3 A/m^2 $")
ax3.set_title(r"Current-voltage characteristics")
ax3.legend()

ax4 = fig.add_subplot(224)
line41, = ax4.plot(iv[:, 0], iv[:, 1], label=r"$ J_p $")
line42, = ax4.plot(iv[:, 0], iv[:, 2], label=r"$ J_n $")
line43, = ax4.plot(iv[:, 0], iv[:, 3], label=r"$ J_p + J_n $")
ax4.grid(True)
ax4.set_xlabel(r"V (V)")
ax4.set_ylabel(r"$ J \times 10^3 A/m^2 $")
ax4.set_title(r"Current-voltage characteristics")
ax4.legend()
plt.show()

m = np.loadtxt("dd_out_m.txt")
m[:, 0] = m[:, 0] * (10**6)
m[:, 1:5] = m[:, 1:5] / (10**22)

fig1 = plt.figure(figsize=(9, 9))
ax1 = fig1.add_subplot(111)
line1, = ax1.plot(m[:, 0], m[:, 1], label=r"$ potential $")

ax1.grid(True)
ax1.set_xlabel(r"x $ (\mu m) $")
ax1.set_ylabel(r"$ \psi $ (V)")
ax1.set_title(r"potential distribution")
ax1.legend()
plt.plot()

fig2 = plt.figure(figsize=(9, 9))

ax1 = fig2.add_subplot(221)
line1, = ax1.plot(m[:, 0], m[:, 2], label=r"$ p $")
ax1.grid(True)
ax1.set_ylabel(r"$ p, n, \rho 10^22 /m^3 $")
ax1.set_xlabel(r"x ($ \mu m $)")
ax1.set_title(r"density distribution")
ax1.legend()

ax2 = fig2.add_subplot(222)
line2, = ax2.plot(m[:, 0], m[:, 3], label=r"$ n $")
ax2.grid(True)
ax2.set_ylabel(r"$ p, n, \rho 10^22 /m^3 $")
ax2.set_xlabel(r"x ($ \mu m $)")
ax2.set_title(r"density distribution")
ax2.legend()

ax3 = fig2.add_subplot(223)
line3, = ax3.plot(m[:, 0], m[:, 4], label=r"$ p - n + c $")
ax3.grid(True)
ax3.set_ylabel(r"$ p, n, \rho 10^22 /m^3 $")
ax3.set_xlabel(r"x ($ \mu m $)")
ax3.set_title(r"density distribution")
ax3.legend()

ax4 = fig2.add_subplot(224)
line41, = ax4.plot(m[:, 0], m[:, 2], label=r"$ p $")
line42, = ax4.plot(m[:, 0], m[:, 3], label=r"$ n $")
line43, = ax4.plot(m[:, 0], m[:, 4], label=r"$ p - n + c $")
ax4.grid(True)
ax4.set_ylabel(r"$ p, n, \rho 10^22 /m^3 $")
ax4.set_xlabel(r"x ($ \mu m $)")
ax4.set_title(r"density distribution")
ax4.legend()
plt.plot()

a = np.loadtxt("./dd_out_a.txt")
a[:, 0] = a[:, 0] * (10**6)
a[:, 1] = a[:, 1] / (10**6)
a[:, 2:5] = a[:, 2:5] / (10**3)

fig1 = plt.figure(figsize=(9, 9))
ax1 = fig1.add_subplot(111)
line1, = ax1.plot(a[:, 0], a[:, 1], label=r"$ potential $")

ax1.grid(True)
ax1.set_xlabel(r"x $ (\mu m) $")
ax1.set_ylabel(r"$E (10^6 V/m)$")
ax1.set_title(r"electric field distribution")
ax1.legend()
plt.plot()

fig = plt.figure(figsize=(9, 9))
ax1 = fig.add_subplot(221)
line1, = ax1.plot(a[:, 0], a[:, 2], label=r"$ J_p $")
ax1.grid(True)
ax1.set_ylabel(r"$ J \times 10^3 A/m^2 $")
ax1.set_xlabel(r"x ($ \mu m $)")
ax1.set_title(r"current distribution")
ax1.legend()

ax2 = fig.add_subplot(222)
line2, = ax2.plot(a[:, 0], a[:, 3], label=r"$ J_n $")
ax2.grid(True)
ax2.set_ylabel(r"$ J \times 10^3 A/m^2 $")
ax2.set_xlabel(r"x ($ \mu m $)")
ax2.set_title(r"current distribution")
ax2.legend()

ax3 = fig.add_subplot(223)
line3, = ax3.plot(a[:, 0], a[:, 4], label=r"$ J_p + J_n $")
ax3.grid(True)
ax3.set_ylabel(r"$ J \times 10^3 A/m^2 $")
ax3.set_xlabel(r"x ($ \mu m $)")
ax3.set_title(r"current distribution")
ax3.legend()

ax4 = fig.add_subplot(224)
line41, = ax4.plot(a[:, 0], a[:, 2], label=r"$ J_p $")
line42, = ax4.plot(a[:, 0], a[:, 3], label=r"$ J_n $")
line43, = ax4.plot(a[:, 0], a[:, 4], label=r"$ J_p + J_n $")
ax4.grid(True)
ax4.set_ylabel(r"$ J \times 10^3 A/m^2 $")
ax4.set_xlabel(r"x ($ \mu m $)")
ax4.set_title(r"current distribution")
ax4.legend()
plt.plot()

#%%

#%%

#%%
iv = np.loadtxt("dd_out_iv.txt")
iv[:, 1:4] = iv[:, 1:4] / (10**3)

fig = plt.figure(figsize=(15, 15))

ax1 = fig.add_subplot(221)
line1, = ax1.plot(iv[:, 0], iv[:, 1], label=r"$ J_p $")
ax1.grid(True)
ax1.set_xlabel(r"V (V)")
ax1.set_ylabel(r"$ J \times 10^3 A/m^2 $")
ax1.set_title(r"Current-voltage characteristics")
ax1.legend()

ax2 = fig.add_subplot(222)
line2, = ax2.plot(iv[:, 0], iv[:, 2], label=r"$ J_n $")
ax2.grid(True)
ax2.set_xlabel(r"V (V)")
ax2.set_ylabel(r"$ J \times 10^3 A/m^2 $")
ax2.set_title(r"Current-voltage characteristics")
ax2.legend()

ax3 = fig.add_subplot(223)
line3, = ax3.plot(iv[:, 0], iv[:, 3], label=r"$ J_p + J_n $")
ax3.grid(True)
ax3.set_xlabel(r"V (V)")
ax3.set_ylabel(r"$ J \times 10^3 A/m^2 $")
ax3.set_title(r"Current-voltage characteristics")
ax3.legend()

ax4 = fig.add_subplot(224)
line41, = ax4.plot(iv[:, 0], iv[:, 1], label=r"$ J_p $")
line42, = ax4.plot(iv[:, 0], iv[:, 2], label=r"$ J_n $")
line43, = ax4.plot(iv[:, 0], iv[:, 3], label=r"$ J_p + J_n $")
ax4.grid(True)
ax4.set_xlabel(r"V (V)")
ax4.set_ylabel(r"$ J \times 10^3 A/m^2 $")
ax4.set_title(r"Current-voltage characteristics")
ax4.legend()
plt.show()

fig.savefig("dd_out_1.png")

#%%
m = np.loadtxt("dd_out_m.txt")
m[:, 0] = m[:, 0] * (10**6)
m[:, 1:5] = m[:, 1:5] / (10**22)

fig1 = plt.figure(figsize=(10, 10))
ax1 = fig1.add_subplot(111)
line1, = ax1.plot(m[:, 0], m[:, 1], label=r"$ potential $")

ax1.grid(True)
ax1.set_xlabel(r"x $ (\mu m) $")
ax1.set_ylabel(r"$ \psi $ (V)")
ax1.set_title(r"potential distribution")
ax1.legend()
plt.plot()

fig1.savefig("dd_out_2.png")

#%%
fig2 = plt.figure(figsize=(15, 15))

ax1 = fig2.add_subplot(221)
line1, = ax1.plot(m[:, 0], m[:, 2], label=r"$ p $")
ax1.grid(True)
ax1.set_ylabel(r"$ p, n, \rho 10^22 /m^3 $")
ax1.set_xlabel(r"x ($ \mu m $)")
ax1.set_title(r"density distribution")
ax1.legend()

ax2 = fig2.add_subplot(222)
line2, = ax2.plot(m[:, 0], m[:, 3], label=r"$ n $")
ax2.grid(True)
ax2.set_ylabel(r"$ p, n, \rho 10^22 /m^3 $")
ax2.set_xlabel(r"x ($ \mu m $)")
ax2.set_title(r"density distribution")
ax2.legend()

ax3 = fig2.add_subplot(223)
line3, = ax3.plot(m[:, 0], m[:, 4], label=r"$ p - n + c $")
ax3.grid(True)
ax3.set_ylabel(r"$ p, n, \rho 10^22 /m^3 $")
ax3.set_xlabel(r"x ($ \mu m $)")
ax3.set_title(r"density distribution")
ax3.legend()

ax4 = fig2.add_subplot(224)
line41, = ax4.plot(m[:, 0], m[:, 2], label=r"$ p $")
line42, = ax4.plot(m[:, 0], m[:, 3], label=r"$ n $")
line43, = ax4.plot(m[:, 0], m[:, 4], label=r"$ p - n + c $")
ax4.grid(True)
ax4.set_ylabel(r"$ p, n, \rho 10^22 /m^3 $")
ax4.set_xlabel(r"x ($ \mu m $)")
ax4.set_title(r"density distribution")
ax4.legend()
plt.plot()

fig2.savefig("dd_out_3.png")

#%%
a = np.loadtxt("./dd_out_a.txt")
a[:, 0] = a[:, 0] * (10**6)
a[:, 1] = a[:, 1] / (10**6)
a[:, 2:5] = a[:, 2:5] / (10**3)

fig1 = plt.figure(figsize=(10, 10))
ax1 = fig1.add_subplot(111)
line1, = ax1.plot(a[:, 0], a[:, 1], label=r"$ potential $")

ax1.grid(True)
ax1.set_xlabel(r"x $ (\mu m) $")
ax1.set_ylabel(r"$E (10^6 V/m)$")
ax1.set_title(r"electric field distribution")
ax1.legend()
plt.plot()

fig1.savefig("dd_out_4.png")

#%%
fig = plt.figure(figsize=(15, 15))
ax1 = fig.add_subplot(221)
line1, = ax1.plot(a[:, 0], a[:, 2], label=r"$ J_p $")
ax1.grid(True)
ax1.set_ylabel(r"$ J \times 10^3 A/m^2 $")
ax1.set_xlabel(r"x ($ \mu m $)")
ax1.set_title(r"current distribution")
ax1.legend()

ax2 = fig.add_subplot(222)
line2, = ax2.plot(a[:, 0], a[:, 3], label=r"$ J_n $")
ax2.grid(True)
ax2.set_ylabel(r"$ J \times 10^3 A/m^2 $")
ax2.set_xlabel(r"x ($ \mu m $)")
ax2.set_title(r"current distribution")
ax2.legend()

ax3 = fig.add_subplot(223)
line3, = ax3.plot(a[:, 0], a[:, 4], label=r"$ J_p + J_n $")
ax3.grid(True)
ax3.set_ylabel(r"$ J \times 10^3 A/m^2 $")
ax3.set_xlabel(r"x ($ \mu m $)")
ax3.set_title(r"current distribution")
ax3.legend()

ax4 = fig.add_subplot(224)
line41, = ax4.plot(a[:, 0], a[:, 2], label=r"$ J_p $")
line42, = ax4.plot(a[:, 0], a[:, 3], label=r"$ J_n $")
line43, = ax4.plot(a[:, 0], a[:, 4], label=r"$ J_p + J_n $")
ax4.grid(True)
ax4.set_ylabel(r"$ J \times 10^3 A/m^2 $")
ax4.set_xlabel(r"x ($ \mu m $)")
ax4.set_title(r"current distribution")
ax4.legend()
plt.plot()

fig.savefig("dd_out_5.png")

#%%
