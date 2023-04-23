FROM 023175542133.dkr.ecr.us-east-1.amazonaws.com/cruddur-react-js:latest


ENV PORT=3000

COPY . /frontend-react-js
WORKDIR /frontend-react-js
RUN npm install
EXPOSE ${PORT}
CMD ["npm", "start"]