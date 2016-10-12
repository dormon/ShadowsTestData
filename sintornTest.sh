#!/bin/sh
--sintorn-frustumsPerWorkgroup - nof triangles solved by work group
--sintorn-bias - offset of triangle planes
--sintorn-discardBackFacing - discard light back facing fragments from hierarchical depth texture construction

./apps/Shadows/Shadows --sintorn-frustumsPerWorkgroup 1 --sintorn-discradBackFacing 1 --test-output SponzaSintornB1 --sintorn-bias 10 --method sintorn --window-size-x 1920 --window-size-y 1080 --test fly --model /data/models/Sponza/sponza.obj --camera-path sponza_fly.txt 
./apps/Shadows/Shadows --sintorn-frustumsPerWorkgroup 2 --sintorn-discradBackFacing 1 --test-output SponzaSintornB2 --sintorn-bias 10 --method sintorn --window-size-x 1920 --window-size-y 1080 --test fly --model /data/models/Sponza/sponza.obj --camera-path sponza_fly.txt 
./apps/Shadows/Shadows --sintorn-frustumsPerWorkgroup 4 --sintorn-discradBackFacing 1 --test-output SponzaSintornB4 --sintorn-bias 10 --method sintorn --window-size-x 1920 --window-size-y 1080 --test fly --model /data/models/Sponza/sponza.obj --camera-path sponza_fly.txt 
./apps/Shadows/Shadows --sintorn-frustumsPerWorkgroup 8 --sintorn-discradBackFacing 1 --test-output SponzaSintornB8 --sintorn-bias 10 --method sintorn --window-size-x 1920 --window-size-y 1080 --test fly --model /data/models/Sponza/sponza.obj --camera-path sponza_fly.txt 
./apps/Shadows/Shadows --sintorn-frustumsPerWorkgroup 16 --sintorn-discradBackFacing 1 --test-output SponzaSintornB16 --sintorn-bias 10 --method sintorn --window-size-x 1920 --window-size-y 1080 --test fly --model /data/models/Sponza/sponza.obj --camera-path sponza_fly.txt 
./apps/Shadows/Shadows --sintorn-frustumsPerWorkgroup 1 --sintorn-discradBackFacing 0 --test-output SponzaSintornN1 --sintorn-bias 10 --method sintorn --window-size-x 1920 --window-size-y 1080 --test fly --model /data/models/Sponza/sponza.obj --camera-path sponza_fly.txt 
./apps/Shadows/Shadows --sintorn-frustumsPerWorkgroup 2 --sintorn-discradBackFacing 0 --test-output SponzaSintornN2 --sintorn-bias 10 --method sintorn --window-size-x 1920 --window-size-y 1080 --test fly --model /data/models/Sponza/sponza.obj --camera-path sponza_fly.txt 
./apps/Shadows/Shadows --sintorn-frustumsPerWorkgroup 4 --sintorn-discradBackFacing 0 --test-output SponzaSintornN4 --sintorn-bias 10 --method sintorn --window-size-x 1920 --window-size-y 1080 --test fly --model /data/models/Sponza/sponza.obj --camera-path sponza_fly.txt 
./apps/Shadows/Shadows --sintorn-frustumsPerWorkgroup 8 --sintorn-discradBackFacing 0 --test-output SponzaSintornN8 --sintorn-bias 10 --method sintorn --window-size-x 1920 --window-size-y 1080 --test fly --model /data/models/Sponza/sponza.obj --camera-path sponza_fly.txt 
./apps/Shadows/Shadows --sintorn-frustumsPerWorkgroup 16 --sintorn-discradBackFacing 0 --test-output SponzaSintornN16 --sintorn-bias 10 --method sintorn --window-size-x 1920 --window-size-y 1080 --test fly --model /data/models/Sponza/sponza.obj --camera-path sponza_fly.txt 

