// 接在「= 前提假设：」之后粘贴即可（把下面的 == 小节换成 - 列表，跟截图一致）
// 如果你的模板需要编号，直接用 = / == 即可。

= 前提假设

为了推导地转风公式，需要对实际大气的运动状态进行以下简化假设：

- *忽略摩擦力*：假设空气处于边界层以上的自由大气中，不受地表摩擦力影响。
- *无加速度*：气流做水平、匀速、直线运动（即 $(dif u)/(dif t) = 0$ 且 $(dif v)/(dif t) = 0$）。
- *无垂直运动*：仅考虑水平方向（$x$、$y$ 轴）上的二维运动。

= 在高度坐标系（$z$ 坐标系）中的推导

大气水平运动的基本动量方程（$x$ 轴指向东，$y$ 轴指向北）为：

$ (dif u)/(dif t) = -1/rho (partial p)/(partial x) + f v $

$ (dif v)/(dif t) = -1/rho (partial p)/(partial y) - f u $

其中：

- $(dif u)/(dif t)$ 和 $(dif v)/(dif t)$ 为气块的水平加速度。
- $-1/rho nabla p$ 代表水平气压梯度力（$rho$ 为空气密度，$p$ 为气压）。
- $f = 2 Omega sin phi$ 为科里奥利参数（$Omega$ 为地球自转角速度，$phi$ 为地理纬度），$f v$ 和 $-f u$ 分别是科里奥利力在 $x$ 和 $y$ 方向的分量。

根据无加速度的假设，令等式左边为零，得到气压梯度力与科里奥利力的平衡方程：

$ 0 = -1/rho (partial p)/(partial x) + f v_g $

$ 0 = -1/rho (partial p)/(partial y) - f u_g $

通过移项，即可得到地转风在高度坐标系下的分量公式（下标 $g$ 表示地转风 geostrophic）：

$ u_g = -1/(rho f) (partial p)/(partial y) $

$ v_g = 1/(rho f) (partial p)/(partial x) $

写成矢量形式为：

$ bold(V)_g = 1/(rho f) bold(k) times nabla_h p $

= 在等压面坐标系（$p$ 坐标系）中的推导

在实际气象应用中（如天气图分析），使用高度坐标系不方便，因为空气密度 $rho$ 随高度和温度剧烈变化。气象学通常将坐标系转换为等压面坐标，引入*重力位势* $Phi$（$Phi = g z$，即重力加速度与等压面高度的乘积）。

在等压面上，水平气压梯度力可以精确地表示为位势梯度 $-nabla_p Phi$。
此时，动量方程的平衡条件变为：

$ 0 = -(partial Phi)/(partial x) + f v_g $

$ 0 = -(partial Phi)/(partial y) - f u_g $

整理后得到地转风在等压面坐标系下的公式：

$ u_g = -1/f (partial Phi)/(partial y) = -g/f (partial z)/(partial y) $

$ v_g = 1/f (partial Phi)/(partial x) = g/f (partial z)/(partial x) $

*公式物理意义：*

- 在北半球（$f > 0$），如果等压面上南方高度高、北方高度低（$(partial z)/(partial y) < 0$），则 $u_g > 0$，吹西风。这符合“背风而立，高压在右，低压在左”的白贝罗定律。
- 等压面高度梯度越大（等高线越密集），地转风速越大。
- 在赤道处（$phi = 0$），科里奥利参数 $f = 0$，分母为零，地转风公式失效，因此赤道附近的大气运动不能用地转平衡来近似。
