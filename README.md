# docker-workshop
workshop codespaces

## Ingest data example

Run the pipeline script with command-line options using `click`:

```bash
python pipeline/ingest_data.py \
  --pg-user root \
  --pg-pass root \
  --pg-host localhost \
  --pg-port 5432 \
  --pg-db ny_taxi \
  --year 2021 \
  --month 1 \
  --chunksize 100000 \
  --target-table yellow_taxi_data
```
