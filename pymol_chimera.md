# Pymol vs Chimera - command line commands comparison

| what| pymol | chimera |
|-------|-------|---------|
| background color | `bg_color black` | `background solid black` |
| fetch pdb file | `fetch code` | `open code` |
| color atoms | | `color yellow ligand & C` |
| hide hydrogen bonds | | `~hbonds.` |


# Chimera - interesting stuff

- Image Tutorial: Surface Properties: https://www.cgl.ucsf.edu/chimera/docs/UsersGuide/tutorials/surfprop.html
- Structure analysis: https://www.cgl.ucsf.edu/chimera/docs/UsersGuide/tutorials/squalene.html

```python
delete :.a
del solvent
surface
~disp ions
setattr m stickScale 2
color yellow ligand & C 

# hydrophobicity:
rangecolor kdHydrophobicity min dodger blue 0 white max orange red
# from dodger blue for the most polar residues to orange red for the most hydrophobic, with white in between

# The sop (“surface operations”) command limits the display of surface #0 to a 5.0-Å zone
# around the ligand and shows only the largest resulting fragment.
sop zone #0 ligand 5.0 max 1

# tile structure
set independent # can be used to make models rotate about individual centers

# untile structure ?
reset



```


