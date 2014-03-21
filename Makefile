#
# Makefile for MT6589
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# the output recovery-ROM filename when you run "make zipfile"
local-out-zip-file :=

# all the miui apps are listed in the file patchrom/build/miuiapps.mk - this variable defines those miui apps which we modified.
#local-miui-modified-apps := MiuiHome MiuiSystemUI Provision
# [XT] we do all this in the translation-phase from now on, APKTool 2 allows much cleaner injection
local-miui-modified-apps := 

# This variable defines those apps from local-zip-file which we modified
local-modified-apps := 

# Removed these apps from original ZIP file
local-remove-apps :=

# This target permits you to do some customization before we generate the final recovery-ROM.
# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should: 
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-zip-misc
local-after-zip :=

include $(PORT_BUILD)/porting.mk

# To define any local-target
local-zip-misc:
	echo "[i] local-zip-misc - nothing to do"

