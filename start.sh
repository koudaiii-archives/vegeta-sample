#!bin/bash

# 100req/s 10s
vegeta attack -rate=100 -duration=10s -targets=./targets.txt > ./results.txt

# output text file
vegeta report -inputs=./results.txt -reporter=text

# plot
vegeta report -inputs=./results.txt -reporter=plot > ./plot.html
