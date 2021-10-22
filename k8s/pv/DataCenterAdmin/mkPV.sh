#!/bin/bash

for SEQ in {2..9}
do
  echo $SEQ
  sed -e "s/pv1/pv${SEQ}/" -e "s/data1/data${SEQ}/" ./pv1.yaml >> ./pv${SEQ}.yaml
done
