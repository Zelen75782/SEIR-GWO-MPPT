# SEIR-GWO-MPPT


SEIR-GWO-MPPT (Shading Entropy Guided Interval Refinement Grey Wolf Optimization MPPT) is a maximum power point tracking algorithm designed for photovoltaic (PV) systems operating under partial shading conditions.

Under partial shading, the PV power-voltage characteristic typically exhibits multiple local maxima, making conventional MPPT methods prone to convergence toward local rather than global maximum power points. To address this issue, this project introduces a shading entropy based search guidance mechanism into the Grey Wolf Optimization (GWO) framework.

The algorithm consists of three main stages:

Adaptive Global Sampling

Grey Wolf Optimization is employed to explore the duty-cycle search space and construct a power-duty (P-D) characteristic profile. Candidate peak regions are identified during the global exploration process.

Shading Entropy Evaluation and Interval Refinement

A novel shading entropy index is calculated from the sampled P-D curve to estimate the complexity of the power landscape. The entropy value reflects peak distribution, directional variations, and curve roughness caused by partial shading. Based on the entropy level, the algorithm adaptively determines the number of candidate regions that should be preserved and further refined, reducing the risk of premature convergence.

Local MPPT Fine-Tuning

After interval refinement, a local adjustment stage is activated to suppress steady-state oscillations and improve tracking stability near the global maximum power point.

Simulation studies were conducted in MATLAB/Simulink using a two-module series-connected PV system under multiple partial shading scenarios. Compared with the conventional GWO-MPPT algorithm, the proposed method demonstrates improved global peak detection capability and achieves higher steady-state output power under non-uniform irradiance conditions.

Features
Shading entropy guided search adaptation
Multi-stage global-to-local optimization framework
Candidate interval refinement mechanism
Improved resistance to local optimum trapping
Applicable to multi-peak PV power curves under partial shading
Current Status

This work has been validated through simulation. Future work includes dynamic shading tests, comparisons with additional MPPT algorithms, and hardware implementation on embedded control platforms.
