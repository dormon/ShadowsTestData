#!/bin/sh
APP=/home/dormon/git/GPUEngine/build/apps/Shadows/Shadows
SCENE=/media/windata/ft/prace/models/sponza/sponza.obj
PATH=/home/dormon/git/ShadowsTestData/sponza_fly.txt
WINDOWSIZEX=1920
WINDOWSIZEY=1080
METHOD=sintorn
LENGTH=1000
FRAMESPERMEASUREMENT=1

TEST="--window-size-x ${WINDOWSIZEX} --window-size-y ${WINDOWSIZEY} --method ${METHOD} --test fly --model ${SCENE} --test-fly-keys ${PATH} --test-fly-length ${LENGTH} --test-framesPerMeasurement ${FRAMESPERMEASUREMENT}"



#${APP} --sintorn-frustumsPerWorkgroup 1  --sintorn-discardBackFacing 1 --test-output SponzaSintornB1  --sintorn-bias 10 ${TEST} 
#${APP} --sintorn-frustumsPerWorkgroup 2  --sintorn-discardBackFacing 1 --test-output SponzaSintornB2  --sintorn-bias 10 ${TEST} 
#${APP} --sintorn-frustumsPerWorkgroup 4  --sintorn-discardBackFacing 1 --test-output SponzaSintornB4  --sintorn-bias 10 ${TEST} 
${APP} --sintorn-frustumsPerWorkgroup 8  --sintorn-discardBackFacing 1 --test-output SponzaSintornB8  --sintorn-bias 10 ${TEST} 
#${APP} --sintorn-frustumsPerWorkgroup 16 --sintorn-discardBackFacing 1 --test-output SponzaSintornB16 --sintorn-bias 10 ${TEST}
#${APP} --sintorn-frustumsPerWorkgroup 1  --sintorn-discardBackFacing 0 --test-output SponzaSintornN1  --sintorn-bias 10 ${TEST} 
#${APP} --sintorn-frustumsPerWorkgroup 2  --sintorn-discardBackFacing 0 --test-output SponzaSintornN2  --sintorn-bias 10 ${TEST} 
#${APP} --sintorn-frustumsPerWorkgroup 4  --sintorn-discardBackFacing 0 --test-output SponzaSintornN4  --sintorn-bias 10 ${TEST} 
#${APP} --sintorn-frustumsPerWorkgroup 8  --sintorn-discardBackFacing 0 --test-output SponzaSintornN8  --sintorn-bias 10 ${TEST} 
#${APP} --sintorn-frustumsPerWorkgroup 16 --sintorn-discardBackFacing 0 --test-output SponzaSintornN16 --sintorn-bias 10 ${TEST}

