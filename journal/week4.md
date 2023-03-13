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

![image](https://user-images.githubusercontent.com/96833570/224562141-b17a3ac9-c71c-41ec-959a-d44864bceda8.png)


## db-drop

I debugged `ERROR:  database "cruddur" is being accessed by other users DETAIL:  There are 4 other sessions using the database.` error as shown.

![image](https://user-images.githubusercontent.com/96833570/224660250-1f422372-7f41-4e0c-92b2-e5730bbbb9f3.png)

```
select * from pg_stat_activity;

select pg_terminate_backend(pid) 
from pg_stat_activity
where pid = '50';
```

Now i could run db-setup script:

![image](https://user-images.githubusercontent.com/96833570/224660766-c8d6bd4b-d594-4c09-a8aa-cc59c88d263d.png)


![image](https://user-images.githubusercontent.com/96833570/224684078-d22d0376-0ec7-4633-a7b6-3fe4c305e910.png)


### Security group

```
export GITPOD_IP=$(curl icanhazip.com)
gp env GITPOD_IP=$(curl icanhazip.com)
```

```
export DB_SG_ID="sg-0b4c0bdc8b9f2110d" \
gp env DB_SG_ID="sg-0b4c0bdc8b9f2110d" \
export DB_SG_RULE_ID="sgr-0076bdf38773d6838" \
gp env DB_SG_RULE_ID="sgr-0076bdf38773d6838"
```
Debugging `CIDR block /32 is malformed`:

```
aws ec2 modify-security-group-rules \
    --group-id $DB_SG_ID \
    --region $AWS_DEFAULT_REGION \
    --security-group-rules "SecurityGroupRuleId=$DB_SG_RULE_ID,SecurityGroupRule={Description=devcontainer,IpProtocol=tcp,FromPort=5432,ToPort=5432,CidrIpv4=$GITPOD_IP/32}"
```

Since i  reached the usage limit on Gitpod, i setup a local dev environment with devcontainers and could succesfully provision RDS Instance/ Connect to RDS via devcontainers.

![image](https://user-images.githubusercontent.com/96833570/224793344-46a20fc6-8722-41cd-8f4b-40cb015a5961.png)

![image](https://user-images.githubusercontent.com/96833570/224793423-47dc8bec-7db4-4b8e-849e-ccd139b66374.png)


