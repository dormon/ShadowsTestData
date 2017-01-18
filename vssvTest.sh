#!/bin/sh
APP=/home/dormon/git/gpuengine-code/build/apps/Shadows/Shadows
#SCENE=/media/windata/ft/prace/models/sponza/sponza.obj
SCENE=/data/models/Sponza/sponza.obj
PATH=/home/dormon/git/ShadowsTestData/sponza_fly.txt
WINDOWSIZEX=1920
WINDOWSIZEY=1080
METHOD=vssv
LENGTH=1000
FRAMESPERMEASUREMENT=1

TEST="--window-size-x ${WINDOWSIZEX} --window-size-y ${WINDOWSIZEY} --method ${METHOD} --test fly --model ${SCENE} --test-fly-keys ${PATH} --test-fly-length ${LENGTH} --test-framesPerMeasurement ${FRAMESPERMEASUREMENT}"

${APP} --zfail 0 --vssv-usePlanes 0 --vssv-useStrips 0 --vssv-useAll 0 --test-output SponzaVSSVOld ${TEST} 
${APP} --zfail 0 --vssv-usePlanes 1 --vssv-useStrips 0 --vssv-useAll 0 --test-output SponzaVSSVPlanes ${TEST} 
${APP} --zfail 0 --vssv-usePlanes 1 --vssv-useStrips 1 --vssv-useAll 0 --test-output SponzaVSSVPlanesStrips ${TEST} 
${APP} --zfail 0 --vssv-usePlanes 1 --vssv-useStrips 1 --vssv-useAll 1 --test-output SponzaVSSVPlanesStripsDivergence ${TEST} 
