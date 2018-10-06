#!/bin/bash
# -------------------------------------------------------------------------------
#  Modify ImageMagisk configuration file to allow PDF and PostScript generation
#
#  Revision history :
#    06/10/2018, V1.0 - Creation by N. Bernaerts
# -------------------------------------------------------------------------------

# initialisation
CONF_FILE="/etc/ImageMagick-6/policy.xml"

# remove culprit lines
sudo sed -i '/disable ghostscript format types/d' "${CONF_FILE}"
sudo sed -i '/\"PS\"/d' "${CONF_FILE}"
sudo sed -i '/\"EPS\"/d' "${CONF_FILE}"
sudo sed -i '/\"PDF\"/d' "${CONF_FILE}"
sudo sed -i '/\"XPS\"/d' "${CONF_FILE}"
