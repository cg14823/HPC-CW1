# Makefile

EXE=d2q9-bgk

CC=icc
CFLAGS= -std=c99 -O3 -fp-model fast=2
LIBS = -lm

FINAL_STATE_FILE=./final_state.dat
AV_VELS_FILE=./av_vels.dat
REF_FINAL_STATE_FILE=check/256x256.final_state.dat
REF_AV_VELS_FILE=check/256x256.av_vels.dat

all: $(EXE)

$(EXE): $(EXE).c
	$(CC) $(CFLAGS) -qopenmp $^ -o $@

check:
	python check/check.py --ref-av-vels-file=$(REF_AV_VELS_FILE) --ref-final-state-file=$(REF_FINAL_STATE_FILE) --av-vels-file=$(AV_VELS_FILE) --final-state-file=$(FINAL_STATE_FILE)

.PHONY: all check clean

clean:
	rm -f $(EXE)
	rm profile.txt
	rm d2q9-bgk.pomp.c
	rm d2q9-bgk.pomp.o
	rm profile.0.0.0
	rm profile.0.0.1
	rm profile.0.0.2
	rm profile.0.0.3
	rm profile.0.0.4
	rm profile.0.0.5
	rm profile.0.0.6
	rm profile.0.0.7
	rm profile.0.0.8
	rm profile.0.0.9
	rm profile.0.0.10
	rm profile.0.0.11
	rm profile.0.0.12
	rm profile.0.0.13
	rm profile.0.0.14
	rm profile.0.0.15
