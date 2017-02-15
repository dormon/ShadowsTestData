#!/bin/sh
APP=/home/dormon/git/GPUEngine/build/apps/Shadows/Shadows
SCENE=/data/models/Sponza/sponza.obj
PATH=/home/dormon/git/ShadowsTestData/sponza_fly.txt
WINDOWSIZEX=4096
WINDOWSIZEY=4096
LENGTH=1000
FRAMESPERMEASUREMENT=1

TEST="--window-size ${WINDOWSIZEX} ${WINDOWSIZEY} --test fly --model ${SCENE} --test-fly-keys ${PATH} --test-fly-length ${LENGTH} --test-framesPerMeasurement ${FRAMESPERMEASUREMENT}"

#./apps/Shadows/Shadows --model /data/models/Sponza/sponza.obj --window-size 1920 1080 --camera-type free --camera-speed 10 --method cssv --zfail 1 --verbose

${APP} --method cssv --cssv-usePlanes 1 --test-output CSSVSponza4096x4096  ${TEST}
${APP} --method cssvsoe --test-output CSSVSOESponza4096x4096  ${TEST}
${APP} --method sintorn --sintorn-frustumsPerWorkgroup 8 --sintorn-discardBackFacing 1 --sintorn-bias 10 --test-output SintornSponza4096x4096  ${TEST}


