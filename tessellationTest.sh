#!/bin/sh
APP=/home/dormon/git/gpuengine-code/build/apps/Shadows/Shadows
SCENE=/media/windata/ft/prace/models/sponza/sponza.obj
PATH=/home/dormon/git/ShadowsTestData/sphere_fly.txt
WINDOWSIZEX=4096
WINDOWSIZEY=4096
METHOD=cssv
LENGTH=1000
FRAMESPERMEASUREMENT=1

TEST="--window-size-x ${WINDOWSIZEX} --window-size-y ${WINDOWSIZEY} --test fly --test-fly-keys ${PATH} --test-fly-length ${LENGTH} --test-framesPerMeasurement ${FRAMESPERMEASUREMENT}"

#${APP} --cssv-zfail 1 --cssv-localAtomic 1 --cssv-cullSides 0 --test-output Sponza1Mesh1CSSVFLN4096 ${TEST} --method cssv --model /data/models/sponza_1mesh1/sponza_1mesh1.obj
#${APP} --cssv-zfail 1 --cssv-localAtomic 1 --cssv-cullSides 0 --test-output Sponza1Mesh2CSSVFLN4096 ${TEST} --method cssv --model /data/models/sponza_1mesh2/sponza_1mesh2.obj
#${APP} --sintorn-frustumsPerWorkgroup 8  --sintorn-discardBackFacing 1 --sintorn-bias 10 --test-output Sponza1Mesh1SintornB84096 ${TEST} --method sintorn --model /data/models/sponza_1mesh1/sponza_1mesh1.obj
#${APP} --sintorn-frustumsPerWorkgroup 8  --sintorn-discardBackFacing 1 --sintorn-bias 10 --test-output Sponza1Mesh2SintornB84096 ${TEST} --method sintorn --model /data/models/sponza_1mesh2/sponza_1mesh2.obj

#${APP} --cssv-zfail 1 --cssv-localAtomic 1 --cssv-cullSides 0 --test-output O1Mesh1CSSVFLN4096 ${TEST} --method cssv --model /data/models/o1mesh1/o1mesh1.obj
#${APP} --cssv-zfail 1 --cssv-localAtomic 1 --cssv-cullSides 0 --test-output O1Mesh2CSSVFLN4096 ${TEST} --method cssv --model /data/models/o1mesh2/o1mesh2.obj
#${APP} --cssv-zfail 1 --cssv-localAtomic 1 --cssv-cullSides 0 --test-output O1Mesh3CSSVFLN4096 ${TEST} --method cssv --model /data/models/o1mesh3/o1mesh3.obj
#${APP} --cssv-zfail 1 --cssv-localAtomic 1 --cssv-cullSides 0 --test-output O1Mesh4CSSVFLN4096 ${TEST} --method cssv --model /data/models/o1mesh4/o1mesh4.obj
#${APP} --sintorn-frustumsPerWorkgroup 8  --sintorn-discardBackFacing 1 --sintorn-bias 10 --test-output O1Mesh1SintornB84096 ${TEST} --method sintorn --model /data/models/o1mesh1/o1mesh1.obj
#${APP} --sintorn-frustumsPerWorkgroup 8  --sintorn-discardBackFacing 1 --sintorn-bias 10 --test-output O1Mesh2SintornB84096 ${TEST} --method sintorn --model /data/models/o1mesh2/o1mesh2.obj
#${APP} --sintorn-frustumsPerWorkgroup 8  --sintorn-discardBackFacing 1 --sintorn-bias 10 --test-output O1Mesh3SintornB84096 ${TEST} --method sintorn --model /data/models/o1mesh3/o1mesh3.obj
#${APP} --sintorn-frustumsPerWorkgroup 8  --sintorn-discardBackFacing 1 --sintorn-bias 10 --test-output O1Mesh4SintornB84096 ${TEST} --method sintorn --model /data/models/o1mesh4/o1mesh4.obj

${APP} --cssv-zfail 1 --cssv-localAtomic 1 --cssv-cullSides 0 --test-output Sphere1CSSVFLN4096 ${TEST} --method cssv --model /data/models/sphere1/sphere1.obj
${APP} --cssv-zfail 1 --cssv-localAtomic 1 --cssv-cullSides 0 --test-output Sphere2CSSVFLN4096 ${TEST} --method cssv --model /data/models/sphere2/sphere2.obj
${APP} --cssv-zfail 1 --cssv-localAtomic 1 --cssv-cullSides 0 --test-output Sphere3CSSVFLN4096 ${TEST} --method cssv --model /data/models/sphere3/sphere3.obj
${APP} --cssv-zfail 1 --cssv-localAtomic 1 --cssv-cullSides 0 --test-output Sphere4CSSVFLN4096 ${TEST} --method cssv --model /data/models/sphere4/sphere4.obj
${APP} --cssv-zfail 1 --cssv-localAtomic 1 --cssv-cullSides 0 --test-output Sphere5CSSVFLN4096 ${TEST} --method cssv --model /data/models/sphere5/sphere5.obj
${APP} --cssv-zfail 1 --cssv-localAtomic 1 --cssv-cullSides 0 --test-output Sphere6CSSVFLN4096 ${TEST} --method cssv --model /data/models/sphere6/sphere6.obj
${APP} --sintorn-frustumsPerWorkgroup 8  --sintorn-discardBackFacing 1 --sintorn-bias 10 --test-output Sphere1SintornB84096 ${TEST} --method sintorn --model /data/models/sphere1/sphere1.obj
${APP} --sintorn-frustumsPerWorkgroup 8  --sintorn-discardBackFacing 1 --sintorn-bias 10 --test-output Sphere2SintornB84096 ${TEST} --method sintorn --model /data/models/sphere2/sphere2.obj
${APP} --sintorn-frustumsPerWorkgroup 8  --sintorn-discardBackFacing 1 --sintorn-bias 10 --test-output Sphere3SintornB84096 ${TEST} --method sintorn --model /data/models/sphere3/sphere3.obj
${APP} --sintorn-frustumsPerWorkgroup 8  --sintorn-discardBackFacing 1 --sintorn-bias 10 --test-output Sphere4SintornB84096 ${TEST} --method sintorn --model /data/models/sphere4/sphere4.obj
${APP} --sintorn-frustumsPerWorkgroup 8  --sintorn-discardBackFacing 1 --sintorn-bias 10 --test-output Sphere5SintornB84096 ${TEST} --method sintorn --model /data/models/sphere5/sphere5.obj
${APP} --sintorn-frustumsPerWorkgroup 8  --sintorn-discardBackFacing 1 --sintorn-bias 10 --test-output Sphere6SintornB84096 ${TEST} --method sintorn --model /data/models/sphere6/sphere6.obj
