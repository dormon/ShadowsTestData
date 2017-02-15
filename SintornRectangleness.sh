#!/bin/sh
APP=/home/dormon/git/GPUEngine/build/apps/Shadows/Shadows
SCENE=/data/models/Sponza/sponza.obj
PATH=/home/dormon/git/ShadowsTestData/sponza_fly.txt
LENGTH=1000
FRAMESPERMEASUREMENT=1

TEST="--test fly --model ${SCENE} --test-fly-keys ${PATH} --test-fly-length ${LENGTH} --test-framesPerMeasurement ${FRAMESPERMEASUREMENT} --method sintorn --sintorn-frustumsPerWorkgroup 8 --sintorn-discardBackFacing 1 --sintorn-bias 10"

${APP} --window-size 64   4096  --test-output RectangleSintornSponza64x4096   ${TEST}
${APP} --window-size 128  2048  --test-output RectangleSintornSponza128x2048  ${TEST}
${APP} --window-size 256  1024  --test-output RectangleSintornSponza256x1024  ${TEST}
${APP} --window-size 512  512   --test-output RectangleSintornSponza512x512   ${TEST}
${APP} --window-size 1024 256   --test-output RectangleSintornSponza1024x256  ${TEST}
${APP} --window-size 2048 128   --test-output RectangleSintornSponza2048x128  ${TEST}
${APP} --window-size 4096 64    --test-output RectangleSintornSponza4096x64   ${TEST}


