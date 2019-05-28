# sample01.ipynbとsample01.pyは同じ
# pylintはコメントの付け方でerrorが起こる。

#%% Change working directory from the workspace root to the ipynb file location. Turn this addition off with the DataScience.changeDirOnImportExport setting
import os
try:
    os.chdir(os.path.join(os.getcwd(), 'jupyter'))
    print(os.getcwd())
except:
    pass
#%%
import matplotlib.pyplot as plt
import numpy as np

#%%
x = np.linspace(0, 2 * np.pi, 100)

fig = plt.figure()  # Figureを作成
ax = fig.add_subplot(1, 1, 1)  # Axesを作成
print("ax.lines before plot:\n", ax.lines)  # Axes.linesは空リスト
line1 = ax.plot(x, np.sin(x), label='1st plot')  # Axes.linesにLine2Dを追加+その他の設定
print("ax.lines after 1st plot:\n", ax.lines)
line2 = ax.plot(x, np.sin(x + np.pi / 8),
                 label='2nd plot')  # Axes.linesにLine2Dを追加+その他の設定
print('ax.lines after 2nd plot:\n', ax.lines)
ax.legend()
print('line1:', line1)
print('line2:', line2)

#%%
fig = plt.figure()
ax = fig.add_subplot(1, 1, 1)  # 何もプロットしていないAxesでもAxisは自動的に作られる
print('fig.axes:', fig.axes)
print('ax.figure:', ax.figure)
print('ax.xaxis:', ax.xaxis)
print('ax.yaxis:', ax.yaxis)
print('ax.xaxis.axes:', ax.xaxis.axes)
print('ax.yaxis.axes:', ax.yaxis.axes)
print('ax.xaxis.figure:', ax.xaxis.figure)
print('ax.yaxis.figure:', ax.yaxis.figure)
print('fig.xaxis:', fig.xaxis)