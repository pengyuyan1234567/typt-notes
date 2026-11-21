#import "@local/modern-cug-report:0.1.3": *
#show: doc => template(doc, footer: "CUG水文气象学2026", header: "046242王子聪作业")

= 1 前提假设：
#text(size: 15pt)[为了推导地转风公式，需要对实际大气的运动状态进行以下简化假设：]

 + 忽略摩擦力： 假设空气处于边界层以上的自由大气中，不受地表摩擦力影响。

 + 无加速度： 气流做水平、匀速、直线运动（即 $(d u)/(d t) = 0$ 且 $(d v)/(d t) = 0$）。

 + 无垂直运动： 仅考虑水平方向（$x$，$y$ 轴）上的二维运动。

= 2 在高度坐标系（$z$ 坐标系）中的推导

大气水平运动的基本动量方程（$x$ 轴指向东，$y$ 轴指向北）为：

#box-blue($ (d u)/(d t) = - 1/rho (partial p)/(partial x) + f v $)

#box-blue($ (d v)/(d t) = -1/rho (partial p)/(partial y) - f u $)

其中：

- $(d u)/(d t)$ 和 $(d v)/(d t)$ 为气块的水平加速度。
- $-1/rho nabla p$ 代表水平气压梯度力（$rho$ 为空气密度，$p$ 为气压）。
- $f = 2 Omega sin phi$ 为科里奥利参数（$Omega$ 为地球自转角速度，$phi$ 为地理纬度），$f v$ 和 $-f u$ 分别是科里奥利力在 $x$ 和 $y$ 方向的分量。

根据无加速度的假设，令等式左边为零，得到气压梯度力与科里奥利力的平衡方程：

#box-blue($ 0 = -1/rho (partial p)/(partial x) + f v_g $)

#box-blue($ 0 = -1/rho (partial p)/(partial y) - f u_g $)

通过移项，即可得到地转风在高度坐标系下的分量公式（下标 $g$ 表示地转风 geostrophic）：

#box-red($ u_g = -1/(rho f) (partial p)/(partial y) $)

#box-red($ v_g = 1/(rho f) (partial p)/(partial x) $)

写成矢量形式为：

#box-red($ bold(V)_g = 1/(rho f) bold(k) times nabla_h p $)

= 3 在等压面坐标系（$p$ 坐标系）中的推导

在实际气象应用中（如天气图分析），使用高度坐标系不方便，因为空气密度 $rho$ 随高度和温度剧烈变化。气象学通常将坐标系转换为等压面坐标，引入重力位势 $Phi$（$Phi = g z$，即重力加速度与等压面高度的乘积）。

在等压面上，水平气压梯度力可以精确地表示为位势梯度 $-nabla_p Phi$。
此时，动量方程的平衡条件变为：

#box-blue($ 0 = -(partial Phi)/(partial x) + f v_g $)

#box-blue($ 0 = -(partial Phi)/(partial y) - f u_g $)

整理后得到地转风在p坐标系下的公式：

#box-red($ u_g = -1/f (partial Phi)/(partial y) = -g/f (partial z)/(partial y) $)

#box-red($ v_g = 1/f (partial Phi)/(partial x) = g/f (partial z)/(partial x) $)

由此推导完毕
