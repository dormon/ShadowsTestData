#!/bin/sh
APP=/home/dormon/git/gpuengine-code/build/apps/Shadows/Shadows
SCENE=/data/models/Sponza/sponza.obj
PATH=/home/dormon/git/ShadowsTestData/sponza_fly.txt
METHOD=cssv
LENGTH=1000
FRAMESPERMEASUREMENT=1

TEST="--model ${SCENE} --test fly --test-fly-keys ${PATH} --test-fly-length ${LENGTH} --test-framesPerMeasurement ${FRAMESPERMEASUREMENT}"


${APP} --window-size-x 512  --window-size-y 512  --cssv-zfail 1 --cssv-localAtomic 1 --cssv-cullSides 0 --test-output R512SponzaCSSVFLN ${TEST} --method cssv
${APP} --window-size-x 1024 --window-size-y 1024 --cssv-zfail 1 --cssv-localAtomic 1 --cssv-cullSides 0 --test-output R1024SponzaCSSVFLN ${TEST} --method cssv
${APP} --window-size-x 2048 --window-size-y 2048 --cssv-zfail 1 --cssv-localAtomic 1 --cssv-cullSides 0 --test-output R2048SponzaCSSVFLN ${TEST} --method cssv
${APP} --window-size-x 4096 --window-size-y 4096 --cssv-zfail 1 --cssv-localAtomic 1 --cssv-cullSides 0 --test-output R4096SponzaCSSVFLN ${TEST} --method cssv

${APP} --window-size-x 512   --window-size-y 512  --sintorn-frustumsPerWorkgroup 8  --sintorn-discardBackFacing 1 --sintorn-bias 10 --test-output R512SponzaSintornB ${TEST} --method sintorn
${APP} --window-size-x 1024  --window-size-y 1024 --sintorn-frustumsPerWorkgroup 8  --sintorn-discardBackFacing 1 --sintorn-bias 10 --test-output R1024SponzaSintornB ${TEST} --method sintorn
${APP} --window-size-x 2048  --window-size-y 2048 --sintorn-frustumsPerWorkgroup 8  --sintorn-discardBackFacing 1 --sintorn-bias 10 --test-output R2048SponzaSintornB ${TEST} --method sintorn
${APP} --window-size-x 4096  --window-size-y 4096 --sintorn-frustumsPerWorkgroup 8  --sintorn-discardBackFacing 1 --sintorn-bias 10 --test-output R4096SponzaSintornB ${TEST} --method sintorn
