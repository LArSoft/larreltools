
install_scripts( LIST 
		 calculatePatchUpdate
		 clone_ssi.sh
		 cp-patch-tag
		 dogit
		 makePatchRelNotes
                 startPatchRel
		 startUboonePatchRel
		 tagPatchRel
		 updatePatchVersion
               )

# ssh-init.sh is designed to be sourced. Do not make it executable.
#message( STATUS "will install ssh-init in ${${product}_bin_dir}")
install( FILES ssh-init.sh DESTINATION ${${product}_bin_dir} )
