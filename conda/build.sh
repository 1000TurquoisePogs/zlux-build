#!/bin/sh

# This program and the accompanying materials are
# made available under the terms of the Eclipse Public License v2.0 which accompanies
# this distribution, and is available at https://www.eclipse.org/legal/epl-v20.html
# 
# SPDX-License-Identifier: EPL-2.0
# 
# Copyright Contributors to the Zowe Project.

# /plugins is a primary location for plugins of a component. Secondarily, /components/componentname/plugins

destination=$PREFIX/opt/zowe/plugins/app-server/$PKG_NAME/$PKG_VERSION
mkdir -p $destination
cp -r ${SRC_DIR}/* $destination
cd $destination
rm -f build_env_setup.sh conda_build.sh metadata_conda_debug.yaml *.ppf

exit 0
