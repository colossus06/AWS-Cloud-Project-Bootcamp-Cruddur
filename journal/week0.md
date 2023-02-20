# Week 0 — Billing and Architecture

## Required Homework/Tasks

### Install and Verify AWS CLI

I created `.gitpod.yml` file and configured to persist aws cli and restarted the gitpod

![image](https://user-images.githubusercontent.com/96833570/220199484-771bfa59-86a8-4e80-b71c-cea8b8d3c2e2.png))


### Generate AWS Credentials

I created an IAM admin and configured the credentials.

![image](https://user-images.githubusercontent.com/96833570/220199856-266ff98f-79f4-4a17-bf57-2442ca007c68.png)






### Create a Budget

## Calculating the monthly budget

![image](https://user-images.githubusercontent.com/96833570/220199254-ba133c68-a3a4-4ad2-bd7f-980a5fb2f78b.png)


#### UI

![image](https://user-images.githubusercontent.com/96833570/220195204-bd6a0de0-d5d4-43e0-acf8-dfe82055064a.png)


#### CLI

I excercised creating another one and but with cli this time using [official documentation](https://docs.aws.amazon.com/cli/latest/reference/budgets/create-budget.html) and [week 0 video](https://www.youtube.com/watch?v=OdUnNuKylHg&list=PLBfufR7vyJJ7k25byhRXJldB5AiwgNnWv&index=16&ab_channel=ExamPro).


I created the following files in `aws/json` dir:
* alarm-config.json
* budget.json
* notifications-with-subscribers.json

**creating a budget**

```
aws budgets create-budget \
    --account-id $ACCOUNT_ID \
    --budget file://aws/json/budget.json \
    --notifications-with-subscribers file://aws/json/notifications-with-subscribers.json
```

![image](https://user-images.githubusercontent.com/96833570/220205470-48942682-ef9b-4aa3-a78f-005575db9340.png)

**Creating sns topic**

```
aws sns subscribe \
    --topic-arn="arn:aws:sns:us-east-1:782114400256:billing-alarm-cli" \
    --protocol=email \
    --notification-endpoint=topcug@devtechops.dev
 ```

![image](https://user-images.githubusercontent.com/96833570/220206808-f16100dd-f20c-424c-b6f7-8328fd1bff57.png)


Confirmed the subscription

![image](https://user-images.githubusercontent.com/96833570/220206794-478afc7b-b86c-4fe0-a86c-ff3532aac18f.png)


**creating an alarm**

`aws cloudwatch put-metric-alarm --cli-input-json file://aws/json/alarm-config.json`

![image](https://user-images.githubusercontent.com/96833570/220207777-fe343926-1ff6-44d5-9282-b272fd568efe.png)


### Create an architectural diagram the CI/CD logical pipeline in Lucid Charts

Lucid Charts Share Link


### Open a support ticket and request a service limit

#### Takeaways

```
aws sts get-caller-identity

aws sts get-caller-identity --query Account --output text
ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
env | grep ACCOUNT_ID
gp env ACCOUNT_ID="account-id"
```

## refs

[sns subscribe cli](https://docs.aws.amazon.com/cli/latest/reference/sns/subscribe.html#examples)
[put-metric-alarm cli](https://docs.aws.amazon.com/cli/latest/reference/cloudwatch/put-metric-alarm.html)
