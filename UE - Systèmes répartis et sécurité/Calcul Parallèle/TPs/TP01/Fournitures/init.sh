#!/bin/bash
SIMGRID=/source/workspace/

export PATH=${SIMGRID}/bin:${PATH}

alias smpirun="smpirun -hostfile ${SIMGRID}/archis/cluster_hostfile.txt -platform ${SIMGRID}/archis/cluster_crossbar.xml"
