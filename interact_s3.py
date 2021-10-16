import boto3
import pandas as pd

# Criar um client para interagir com o AWS S3
s3_client = boto3.client("s3")

s3_client.download_file("datalake-saito-igti",
                        "data/raw-data/MICRODADOS_ENEM_2019.csv",
                        "data/raw-data/MICRODADOS_ENEM_2019.csv")

df = pd.read_csv("data/raw-data/MICRODADOS_ENEM_2019.csv",sep=";")
print(df)


s3_client.upload_file("data/MICRODADOS_ENEM_2019.csv",
                      "datalake-saito-igti",
                      "data/raw-data/MICRODADOS_ENEM_2019.csv")

