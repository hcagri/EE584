import sys

sys.path.append('../..')
from pytracking.analysis.playback_results import playback_results
from pytracking.evaluation import get_dataset, trackerlist


trackers = []
trackers.extend(trackerlist('keep_track', 'default', None, 'KEEP_TRACK'))

# 16, 18, 33

dataset = get_dataset('got10k_val')
playback_results(trackers, dataset[16])