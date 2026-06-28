# Global Illumination – Assignment 3

Implementation of **Importance Sampling** for the Global Illumination framework.

## Assignment Overview

This assignment implements:

- 1D Importance Sampling
  - Continuous sampling (`sample_01`)
  - Discrete sampling (`sample_index`)
  - Piecewise constant probability distribution
  - CDF construction
  - Binary search inversion sampling

- 2D Importance Sampling
  - Conditional distributions
  - Marginal distributions
  - Environment map sampling
  - PDF computation

- Spherical Distortion Correction
  - Applied the `sin(theta)` weighting factor when constructing the environment map distribution.

## Results

### 1D Distribution

| PDF | Sampling |
|-----|----------|
| ![](dist1D_pow_pdf.png) | ![](dist1D_pow_hits.png) |

### Gradient Distribution

| PDF | Sampling |
|-----|----------|
| ![](dist1D_gradient_pdf.png) | ![](dist1D_gradient_hits.png) |

### Constant Distribution

| PDF | Sampling |
|-----|----------|
| ![](dist1D_const_pdf.png) | ![](dist1D_const_hits.png) |

### Absolute Distribution

| PDF | Sampling |
|-----|----------|
| ![](dist1D_abs_pdf.png) | ![](dist1D_abs_hits.png) |

### 2D Distribution

| PDF | Sampling |
|-----|----------|
| ![](dist2D_0_pdf.png) | ![](dist2D_0_hits.png) |
| ![](dist2D_1_pdf.png) | ![](dist2D_1_hits.png) |

## Build

```bash
cmake -S . -B build -G Ninja
cmake --build build
```

## Run

```bash
./gi configs/a03.json
```

or

```bash
./gi configs/a03_sunset.json
```

or

```bash
./gi configs/a03_sibenik.json
```

## Repository Structure

```
src/                Source code
configs/            Rendering configurations
data/               Scene data
README.md           Project description
dist*.png           Debug outputs and sampling results
```

## Notes

- Importance sampling significantly reduces variance compared to uniform sampling.
- 2D sampling is implemented using marginal and conditional distributions.
- Binary search is used for efficient inverse CDF lookup.
- Environment map sampling includes spherical area correction using the sin(theta) weighting factor.

## Author

**Shalu Shajan**
