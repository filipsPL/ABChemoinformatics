# Pymol vs Chimera - command line commands comparison

| what| pymol | chimera |
|-------|-------|---------|
| background color | `bg_color black` | `background solid black` |
| fetch pdb file | `fetch code` | `open code` |
| color atoms | | `color yellow ligand & C` |
| hide hydrogen bonds | | `~hbonds.` |


# Chimera - interesting stuff

- Image Tutorial: Surface Properties: https://www.cgl.ucsf.edu/chimera/docs/UsersGuide/tutorials/surfprop.html


```
delete :.a
del solvent
surface
~disp ions
setattr m stickScale 2
color yellow ligand & C 

# hydrophobicity:
rangecolor kdHydrophobicity min dodger blue 0 white max orange red
```
