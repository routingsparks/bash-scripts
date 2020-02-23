#!/bin/bash
###########################################################
# Author: Dennis Perrone
# Creation Date: 20191305
# Purpose: Create an skeleton for an ansible playbook.
###########################################################


###########################################################
# F U N C T I O N S
###########################################################
ANSIBLE_DIR=$HOME/Documents/ansible/playbooks/
ANSIBLE_PLAYBOOK=$ANSIBLE_DIR/"$@"
MAIN_DIRS=$ANSIBLE_PLAYBOOK/
ROLES_DIRS=$ANSIBLE_PLAYBOOK/roles/
ROLES_FILES=$ROLES_DIRS/common/
###########################################################

create_playbook (){
if [[ -d $ANSIBLE_PLAYBOOK ]]; then
    echo "Playbook is already created";
else
    mkdir -p "$ANSIBLE_PLAYBOOK"
fi

if [[ -d $ANSIBLE_PLAYBOOK ]]; then
    mkdir -p $MAIN_DIRS/{group_vars,host_vars,library,module_utils,filter_plugins,roles}
fi

if [[ -d $ROLES_DIRS ]]; then
    mkdir -p $ROLES_DIRS/common/{tasks,handlers,templates,files,vars,defaults,meta,library,module_utils,lookup_plugins}
else
    echo "No roles directory exists."
fi

if [[ -d $ROLES_DIRS ]]; then
    touch $ANSIBLE_PLAYBOOK/{production,staging,site.yml} $ROLES_FILES/{tasks,handlers,templates,files,vars,defaults,meta}/main.yml
fi
}

create_playbook

if [[ $? -eq 0 ]]; then
    echo "$0 completed successfully."
else
    echo "$0 did not complete successfully."
fi