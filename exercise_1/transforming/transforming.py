from pyspark import SparkContext
from pyspark import HiveContext
sc = SparkContext()
hospitals = HiveContext(sc).sql('from hospitals select *')
hospitals.show()
