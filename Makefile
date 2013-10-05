#
# Makefile for MT6589
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# the output recovery-ROM filename when you run "make zipfile"
local-out-zip-file :=

# all the miui apps are listed in the file patchrom/build/miuiapps.mk - this variable defines those miui apps which we modified.
local-miui-modifed-apps :=

# This variable defines those apps from local-zip-file which we modified.
local-modified-apps :=

# Normally not all the miui apps is suitable for our device (e.g. some device will not want Phone.apk). This variable defines those miui apps which we don't want.
local-miui-removed-apps :=

# This variable defines those stock ROM apps which we want to keep. If replacing an MIUI app with stock app, be sure to also remove MIUI one in local-miui-removed-apps
local-phone-apps :=

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
	#rm -rf $(ZIP_DIR)/system/backup/
	#rm $(ZIP_DIR)/system/framework/theme-res-mint.apk
	#rm $(ZIP_DIR)/system/framework/theme-res-mocha.apk
	#rm $(ZIP_DIR)/system/framework/theme-res-raspberry.apk
