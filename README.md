# ABC of Chemoinformatics

... with focus on macromolecule-ligand interactions.

Inspired by magnus' [RNA Structural Bioinformatics Crash Course](https://github.com/mmagnus/RNA-Structural-Bioinformatics-Crash-Course/blob/master/README.md#rna-structural-bioinformatics-crash-course)

![email](data/email.png)

# TOC

# Intro - to read

- https://en.wikipedia.org/wiki/Enzyme_inhibitor
- https://en.wikipedia.org/wiki/Enzyme_assay
- https://en.wikipedia.org/wiki/Biological_target
- https://en.wikipedia.org/wiki/Drug_design
- https://en.wikipedia.org/wiki/ADME
- https://en.wikipedia.org/wiki/Quantitative_structure%E2%80%93activity_relationship
- https://en.wikipedia.org/wiki/Docking_%28molecular%29

## Basic concepts

### Molecular scaffolds

![scaffolds](data/scaffolds.png)

### Ligands activity measures

* **IC50** - half maximal inhibitory concentration [wiki](https://en.wikipedia.org/wiki/IC50)
  *  **pIC50** = -log(IC50)
* **EC50** - half maximal effective concentration
* **LD50**  - median lethal dose
* **Ki** - binding affinity - describes the interaction of most ligands with their binding sites; high-affinity ligand binding results from greater intermolecular force between the ligand and its receptor while low-affinity ligand binding involves less intermolecular force between the ligand and its receptor. In general, high-affinity binding involves a longer residence time for the ligand at its receptor binding site than is the case for low-affinity binding. 

The median affinity (IC50, EC50, ED50, Ki, Kd) for current small-molecule drugs is around **20 nM** (source: doi:10.1038/nrd2199)


# Software

## Drawing and visualizing small molecules

MarvinSketch from MarvinBeans Suite. Download for free (after registration): https://www.chemaxon.com/download/marvin-suite/#mbeans

:zap: **Practicals:**
- Draw the LSD molecule
- Save it as smiles, mol2, sdf
- copy it to clipboard as smiles and paste to the notepad
- optimize the 3D structure


## Molecule formats and formats conversion

- http://openbabel.org/wiki/Main_Page
- http://openbabel.org/docs/current/Command-line_tools/babel.html

:zap: **Practicals:**
- convert saved molecules to sdf, mol2 and PDB
- add hydrogens
- optimize 3D structure
- generate conformers


## Pymol

See: https://github.com/mmagnus/RNA-Structural-Bioinformatics-Crash-Course/blob/master/README.md#pymol

## KNIME

- Download: https://www.knime.org/knime
- Quick Start Guide: https://tech.knime.org/files/KNIME_quickstart.pdf (PDF)

:zap: **Practicals:**

- From the ChemBlDb, download IC50 activity for JAK2 Kinase
- prepare a workflow:
 - Read the data from CSV file
 - convert smiles string to structures
 - calculate moelcular descriptors: AMW, logP, TPSA
 - calculate logBB according to the formlula: ![formula](https://raw.githubusercontent.com/filipsPL/CADD-PW/master/KNIME/JAK/BBB.png) (:bulb: use Math Node)
 - calculate the pareto rank, minimizing IC50 value, MW, logP and TPSA

- For these data:
 - Create a 3D plot:
 - xyz: TPSA / logP / AMW
 - color by: IC50
 - points size: logBB
 - save as png
- play with another types of plot (parallel coordinates, bar plots, conditional bar plots etc)
- sort the table according to Pareto Ran value (ascending)
- save 10 top ranking compounds to csv and xls files.
