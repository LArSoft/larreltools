# larreltools

## LArSoft Release Management Tools

larreltools contains scripts used when making larsoft patch and regular releases.

## General Purpose Scripts

- clone_ssi.sh
- dogit

## Patch Releases

All scripts needed to create a patch release will be in the path automatically.

Note that patch releases work from special branches and have a version of the form vxx_yy_zz_nn. 

larreltools supplies the following scripts for use when building patch releases.
- cp-patch-tag
  - make a cross package LARSOFT_SUITE tag
- dogit
  - use to issue the same git command to all packages in $MRB_SOURCE
  - useful for checking status
- makePatchRelNotes
  - generate a text file to be used when updating the [[larsoft:LArSoft_release_list|release list]]
- startPatchRel
  - makes a working directory with all larsoft and experiment packages
- tagPatchRel
  - Use after the versions have been updated to tag a release.  Will push the changes and tag to the remote repository.
- updatePatchVersion
  - increment patch release version by one
- see the [patch release instructions](https://larsoft.github.io/LArSoftWiki/LArSoftInternals/How_to_tag_and_build_a_LArSoft_patch_release) for details


## Regular Releases

To avoid confusion, only the scripts used when building patch releases are in the path.
Expert users (e.g., the LArSoft release manager) will need to do the following:
```
setup larreltools
export PATH=$LARRELTOOLS_DIR/expert:${PATH}
```

Scripts for nutools and larsoft release managers:
- updateVersion
- startNuLiteRel
- manageNuLite
- startLArSoftRel
- manageLArGithub
- cp-lar-tag
- make-release-notes

