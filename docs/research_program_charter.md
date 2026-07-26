# Galactic Archaeology with Gaia DR3 & LAMOST DR9

## A Personal Independent Research Program in Galactic Dynamics and Stellar Populations

This repository hosts a personal independent research program in Galactic archaeology, using Gaia DR3 and LAMOST DR9 to identify dynamically and chemically distinct stellar populations in the Milky Way through reproducible computational methods.

## Research Goal

Use Gaia DR3 and LAMOST DR9 to identify dynamically and chemically distinct stellar populations in the Milky Way through reproducible computational methods.

## Project Vision

This project is designed as an open, reproducible research program rather than a one-time coursework-style analysis. It is organized as a long-term scientific portfolio that connects data engineering, Galactic dynamics, stellar-population analysis, chemical tagging, computational discovery, and scientific validation.

The aim is to build a research-grade open repository, a personal data release, and a manuscript-style scientific report based on Gaia DR3 and LAMOST DR9.

## Research Projects

The full program is organized into six independent but connected research projects.

### Project I — Data Foundation

Build the Gaia–LAMOST data foundation through data acquisition, cross-match, quality control, feature engineering, and candidate discovery.

Main deliverable:

- Candidate Catalog v1

### Project II — Orbital Dynamics

Extend the candidate catalogue with full orbital-dynamics information, including orbit integration, angular momentum, orbital energy, action-space analysis, and orbit-family interpretation.

Core components include:

- Orbit integration
- Eccentricity
- Apocenter
- Pericenter
- Zmax
- Guiding radius
- Orbital energy
- Lx, Ly, Lz
- Lperp
- Ltotal
- Integrals of motion
- Energy–Lz space
- Action space
- Toomre diagram

Main deliverable:

- Orbital Catalog

### Project III — Stellar Population Analysis

Classify candidate stars into Galactic stellar populations and compare them with disk, halo, and merger-related structures.

Target populations include:

- Thin disk
- Thick disk
- Stellar halo
- Gaia-Sausage-Enceladus
- Helmi Stream
- Nyx
- Sequoia
- Splash
- Other dynamically unusual populations

Main deliverable:

- Population Catalogue

### Project IV — Chemical Evolution

Use LAMOST chemical information to study metallicity, abundance patterns, and chemical tagging.

Core chemical features may include:

- [Fe/H]
- [alpha/Fe]
- [Mg/Fe]
- [Ca/Fe]
- [Si/Fe]
- Other reliable LAMOST abundance indicators, where available

Main deliverable:

- Chemical Catalogue

### Project V — Computational Discovery

Develop the computational and data-science layer of the research program. This project examines whether unsupervised and statistical methods can reveal consistent structures in Gaia–LAMOST phase-space and chemical data.

Core methods include:

- PCA
- UMAP
- DBSCAN
- HDBSCAN
- Gaussian Mixture Models
- OPTICS
- Hierarchical clustering
- Consensus clustering
- Anomaly detection

Main deliverable:

- Computational Discovery Catalogue

### Project VI — Scientific Validation

Validate the scientific reliability of the results and move the project from exploratory analysis toward research-grade interpretation.

Core components include:

- Monte Carlo uncertainty propagation
- Gaia astrometric error propagation
- Radial-velocity and distance uncertainty propagation
- Recomputed orbital quantities across sampled realizations
- Error-bar estimation
- Literature comparison
- Scientific interpretation

Main deliverable:

- Scientific Discussion and Validation Report

## Common Research Standard

Each research project follows the same scientific structure:

1. Scientific Question
2. Background and Motivation
3. Data and Methods
4. Results
5. Validation and Uncertainty
6. Discussion
7. Deliverables

This shared structure ensures that the repository develops as a coherent scientific program rather than a collection of disconnected notebooks.

## Current Repository Mapping

The existing repository already contains the early foundations of this research program:

- Historical development label: Project 1. Current research-program mapping: Project I — Data Foundation.
- Historical development label: Project 2. Current research-program mapping: Project V — Computational Discovery.
- Historical development label: Project 3. Current research-program mapping: Project II — Orbital Dynamics.

During the transition, the repository will remain in its current flat structure. Large directory restructuring is intentionally postponed until the research outputs are stable.

## Long-Term Deliverables

The final research program aims to produce:

- Candidate Catalog
- Orbit Catalog
- Population Catalog
- Chemical Catalog
- Computational Discovery Catalog
- Publication-quality figures
- Research-paper-style tables
- Methodology and reproducibility documentation
- A reproducible computational workflow
- A LaTeX manuscript in A&A-style or MNRAS-style format

The manuscript does not need to be submitted immediately, but the long-term goal is to reach a standard close to submission readiness.
