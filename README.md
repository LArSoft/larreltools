# larreltools
LArSoft code management tools

larreltools contains scripts used when making larsoft patch and regular releases.
To avoid confusion, only the scripts used when building patch releases are in the path.
Expert users (e.g., the LArSoft release manager) will need to do the following:
```
setup larreltools
export PATH=$LARRELTOOLS_DIR/expert:${PATH}
```
General purpose scripts:
- clone_ssi.sh
- dogit

Note that patch releases work from special branches and have a version of the form vxx_yy_zz_nn. 
Patch scripts:
- startPatchRel
- tagPatchRel
- updatePatchVersion
- makePatchRelNotes
- cp-patch-tag

Scripts for nutools and larsoft release managers:
- updateVersion
- startNuLiteRel
- manageNuLite
- startLArSoftRel
- manageLArGithub
- cp-lar-tag
- make-release-notes
