#!/usr/bin/env python3

import itertools
import os
import statistics
import sys

########################################################################################################################

TIMEOUT = 3600

logFiles = os.listdir('./exp1-difflog')
benches = { fname[:fname.find('_')] for fname in logFiles }
stats = {}

for bench in sorted(benches):
    stats[bench] = []
    for fname in filter(lambda s: s.startswith(bench), logFiles):
        lines = [ line for line in open(f'./exp1-difflog/{fname}') ]

        timeLines = itertools.dropwhile(lambda s: not s.startswith('// Achieved loss'), lines)
        timeLines = list(filter(lambda s: s.startswith('Main:'), timeLines))
        assert(len(timeLines) <= 1)

        time = timeLines[0] if 0 < len(timeLines) else None
        time = time[len('Main: '):] if time else None
        time = time[:time.find(' ')] if time else None
        time = float(time) if time else TIMEOUT

        stats[bench].append(time)
    median = statistics.median(stats[bench])
    stats[bench] = [ t / median for t in stats[bench] ]
    stats[bench] = [ min(t, 8) for t in stats[bench] ]

sortedBenches = sorted(benches)
flatStats = [ stats[bench] for bench in sortedBenches ]

########################################################################################################################

import matplotlib
matplotlib.use("TkAgg")
matplotlib.rcParams['pdf.fonttype'] = 42

import matplotlib.pyplot as plt
import matplotlib.pylab as pylab
import matplotlib.patches as mpatches
from matplotlib.legend_handler import HandlerLine2D

fig, ax = plt.subplots()
bp = ax.boxplot(flatStats, whis='range')

plt.xticks(list(range(1, 1 + len(sortedBenches))), sortedBenches, rotation='vertical')
ax.tick_params(labelsize=9)

xlabel = "Benchmark Name"
ylabel = "Running Time"
ax.set_ylabel(ylabel, fontsize=15)#, fontweight='bold')
ax.set_xlabel(xlabel, fontsize=15)

fig.tight_layout()
plt.savefig('f6_a.pdf')
