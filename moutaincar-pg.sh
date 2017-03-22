#! /bin/bash

clear
echo "REINFORCE on MountainCar Environment"
echo "************************************"

th run.lua \
   -env 'MountainCar-v0' \
   -policy categorical \
   -learningUpdate reinforce \
   -model mlp \
   -optimAlpha 0.9 \
   -timestepsPerBatch 1000 \
   -stepsizeStart 0.3 \
   -gamma 1 \
   -nHiddenLayerSize 10 \
   -gradClip 5 \
   -baselineType padTimeDepAvReturn \
   -beta 0.01 \
   -weightDecay 0 \
   -windowSize 10 \
   -nSteps 1000 \
   -nIterations 10000 \
   -video 0 \
   -optimType rmsprop \
   -verboseUpdate true \
   -uploadResults false \
   -renderAllSteps false 
