#!/bin/sh
APP=/home/dormon/git/GPUEngine/build/apps/Shadows/Shadows
SCENE=/data/models/Sponza/sponza.obj
PATH=/home/dormon/git/ShadowsTestData/sponza_fly.txt
LENGTH=1000
FRAMESPERMEASUREMENT=1

TEST="--test fly --model ${SCENE} --test-fly-keys ${PATH} --test-fly-length ${LENGTH} --test-framesPerMeasurement ${FRAMESPERMEASUREMENT} --method cssvsoe"

${APP} --window-size 64   4096  --test-output RectangleCSSVSOESponza64x4096   ${TEST}
${APP} --window-size 128  2048  --test-output RectangleCSSVSOESponza128x2048  ${TEST}
${APP} --window-size 256  1024  --test-output RectangleCSSVSOESponza256x1024  ${TEST}
${APP} --window-size 512  512   --test-output RectangleCSSVSOESponza512x512   ${TEST}
${APP} --window-size 1024 256   --test-output RectangleCSSVSOESponza1024x256  ${TEST}
${APP} --window-size 2048 128   --test-output RectangleCSSVSOESponza2048x128  ${TEST}
${APP} --window-size 4096 64    --test-output RectangleCSSVSOESponza4096x64   ${TEST}


