## This is a term project of Machine Vision - EE 584 METU
* Halil Çağrı Bilgi - cagri.bilgi@metu.edu.tr 

---
To run the mosse tracker follow the instructions inside the [README](mosse-object-tracking/README.md)

---
### Environment Setup for Pytracking 
For these experiments you need to have a linux machine.  
To install the dependencies run the following command. 

```
bash install.sh
```

`Note: ` Check for the paths in the following files and correct them:
* [pytracking/evaluation/local.py](pytracking/evaluation/local.py) 
    * settings.got10k_path
    * settings.network_path 
    * settings.result_plot_path
    * settings.results_path
    * settings.segmentation_path

* [pytracking/evaluation/environment.py](pytracking/evaluation/environment.py)
    * self.got10k_path


To run the experiments on GOT10k-val data using keep track algorithm.
```
cd /pytracking
```
```
python run_tracker.py 'keep_track' 'default' --dataset_name 'got10k_val' --sequence {idx}
```
where idx is for which sequence you would like to run the tracking algorithm.

## For Original Pytracking Repository 
https://github.com/visionml/pytracking