#!/bin/sh
APP=/home/dormon/git/gpuengine-code/build/apps/Shadows/Shadows
SCENE=/media/windata/ft/prace/models/sponza/sponza.obj
PATH=/home/dormon/git/ShadowsTestData/sponza_fly.txt
WINDOWSIZEX=1920
WINDOWSIZEY=1080
METHOD=cssv
LENGTH=1000
FRAMESPERMEASUREMENT=1

TEST="--window-size-x ${WINDOWSIZEX} --window-size-y ${WINDOWSIZEY} --method ${METHOD} --test fly --model ${SCENE} --test-fly-keys ${PATH} --test-fly-length ${LENGTH} --test-framesPerMeasurement ${FRAMESPERMEASUREMENT}"

#${APP} --cssv-zfail 1 --cssv-localAtomic 1 --cssv-cullSides 1 --test-output SponzaCSSVFLC ${TEST} 
${APP} --cssv-zfail 1 --cssv-localAtomic 1 --cssv-cullSides 0 --test-output SponzaCSSVFLN ${TEST} 
#${APP} --cssv-zfail 1 --cssv-localAtomic 0 --cssv-cullSides 1 --test-output SponzaCSSVFGC ${TEST} 
#${APP} --cssv-zfail 1 --cssv-localAtomic 0 --cssv-cullSides 0 --test-output SponzaCSSVFGN ${TEST} 
#${APP} --cssv-zfail 0 --cssv-localAtomic 1 --cssv-cullSides 1 --test-output SponzaCSSVPLC ${TEST} 
#${APP} --cssv-zfail 0 --cssv-localAtomic 1 --cssv-cullSides 0 --test-output SponzaCSSVPLN ${TEST} 
#${APP} --cssv-zfail 0 --cssv-localAtomic 0 --cssv-cullSides 1 --test-output SponzaCSSVPGC ${TEST} 
#${APP} --cssv-zfail 0 --cssv-localAtomic 0 --cssv-cullSides 0 --test-output SponzaCSSVPGN ${TEST} 
