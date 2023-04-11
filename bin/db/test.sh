#!/usr/bin/python3

import psycopg
import os
import sys

print("Testing RDS Connecetion")
connection_url = os.getenv("CONNECTION_URL")
print("Connection url is: ", connection_url)
print("\n")

conn = None
try:
  print('attempting connection')
  conn = psycopg.connect(connection_url)
  print("Connection successful!")
except psycopg.Error as e:
  print("Unable to connect to the database:", e)
finally:
  conn.close()
  
print("\n")