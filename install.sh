#!/bin/bash

# Update the system
sudo dnf update --assumeyes

# Run the following scripts
/bin/bash ./tools_install.sh
/bin/bash ./font_install.sh
/bin/bash ./shell_install.sh
