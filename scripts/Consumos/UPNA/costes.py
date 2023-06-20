

import numpy as np
import pandas as pd



tarifaCPU=0.090
tarifaGPU=1.54



data=pd.read_csv("/data/scratch/nagios/GPU/UPNA/export.txt", delimiter="|")
data=data.loc[:, ~data.columns.str.contains('^Unnamed')]
#print(data)



data["Coste"]=np.where(data["ReqGRES"] != "",((data['CPUTimeRAW']/data['NCPUS'])/3600)*tarifaGPU,(data['CPUTimeRAW']/3600) * tarifaCPU)


print(np.round(data["Coste"].sum(),2))

