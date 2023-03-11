# Week 4 — Postgres and RDS


Debugging `An error occurred (InvalidParameterValue) when calling the CreateDBInstance operation: us-east-1 is not a valid availability zone.` error:

```
aws rds create-db-instance \
  --db-instance-identifier cruddur-db-instance \
  --db-instance-class db.t3.micro \
  --engine postgres \
  --engine-version  14.6 \
  --master-username root \
  --master-user-password huEE33z2Qvl383 \
  --allocated-storage 20 \
  --region us-east-1 \
  --availability-zone us-east-1a \
  --backup-retention-period 0 \
  --port 5432 \
  --no-multi-az \
  --db-name cruddur \
  --storage-type gp2 \
  --publicly-accessible \
  --storage-encrypted \
  --enable-performance-insights \
  --performance-insights-retention-period 7 \
  --no-deletion-protection
```

`psql -Upostgres --host localhost`

![image](https://user-images.githubusercontent.com/96833570/224510346-51b81fc8-6076-4104-9a0f-bd9f97bfd152.png)
