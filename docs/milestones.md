# Project Milestones

This project is organized as an umbrella research-oriented project with three connected sub-projects.

## Project I: Gaia–LAMOST Cross-matching and Chemo-kinematic Feature Construction

### Milestone 1: Gaia DR3 Query and Validation

**Goal:**  
Build the initial Gaia DR3 stellar sample and validate the basic astrometric and photometric fields.

**Main tasks:**

- Query Gaia DR3 stellar data
- Inspect key columns such as RA, Dec, parallax, proper motion, and photometry
- Generate basic validation plots
- Save the initial Gaia sample for later cross-matching

**Status:** Completed

---

### Milestone 2: LAMOST Catalogue Exploration and Gaia Cross-match

**Goal:**  
Explore LAMOST spectroscopic data and build a Gaia–LAMOST cross-matched sample.

**Main tasks:**

- Explore LAMOST DR9 low-resolution spectroscopic catalogue fields
- Inspect stellar parameters such as effective temperature, surface gravity, metallicity, and radial velocity
- Cross-match LAMOST entries with Gaia DR3 sources
- Evaluate cross-match quality using angular separation
- Save the cross-matched Gaia–LAMOST sample

**Status:** Completed

---

### Milestone 3: Chemo-kinematic Feature Construction

**Goal:**  
Construct physically meaningful features for stellar population analysis.

**Main tasks:**

- Estimate distance-related quantities from Gaia parallax
- Combine Gaia proper motions with LAMOST radial velocities
- Construct kinematic features for later analysis
- Prepare chemical and stellar-parameter features such as metallicity, effective temperature, and surface gravity
- Build an analysis-ready feature table

**Status:** In progress

---

## Project II: Unsupervised Stellar Population Discovery

### Milestone 4: Exploratory Visualization

**Goal:**  
Visualize the Gaia–LAMOST sample in physical, photometric, chemical, and kinematic spaces.

**Planned tasks:**

- Color-magnitude diagram
- Distance and parallax distributions
- Metallicity distribution
- Proper motion and velocity-related plots
- Initial comparison of possible stellar population groups

**Status:** Planned

---

### Milestone 5: Dimensionality Reduction and Clustering

**Goal:**  
Apply exploratory machine learning methods to search for possible stellar population structures.

**Planned tasks:**

- Feature scaling and preprocessing
- Dimensionality reduction
- Clustering experiments
- Visual inspection of cluster properties
- Comparison with astrophysical interpretation

**Status:** Planned

---

## Project III: Interpretable Machine Learning for Galactic Substructure Candidates

### Milestone 6: Candidate Selection Workflow

**Goal:**  
Develop an interpretable workflow for selecting and analyzing candidate Galactic substructures.

**Planned tasks:**

- Define candidate selection criteria
- Train or test interpretable feature-based models
- Analyze feature importance or model explanations
- Compare selected candidates with astrophysical expectations

**Status:** Planned

---

### Milestone 7: Research-style Report

**Goal:**  
Write a concise research-style report summarizing the data, methods, figures, limitations, and future work.

**Planned sections:**

- Introduction
- Data
- Methodology
- Results
- Discussion
- Limitations
- Future work

**Status:** Planned

## Project I Completion Status

Project I has been completed and polished for presentation.

Completed stages:

- Milestone 1: Gaia DR3 sample query and validation
- Milestone 2: LAMOST catalogue exploration and Gaia–LAMOST cross-match
- Milestone 3: chemo-kinematic feature construction
- Milestone 4: larger Gaia–LAMOST sample preparation
- Milestone 5: velocity and candidate diagnostics
- Milestone 6: candidate-level validation
- Milestone 7: scientific interpretation draft
- Final Packaging: repository-level organization and final report draft
- Final Polish: README, documentation, and presentation refinement

Project I deliverables:

- reproducible Jupyter notebook workflow
- processed Gaia–LAMOST data products
- diagnostic figures for photometric, chemical, and kinematic analysis
- candidate-level diagnostic visualizations
- final report draft
- documented limitations and future research directions

Project I is now considered complete as a standalone research portfolio project.

The next major stage will be Project V, focusing on machine-learning assisted stellar population clustering and stronger statistical interpretation.
