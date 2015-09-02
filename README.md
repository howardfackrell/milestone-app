#milestone-app
---
docker container for running milestones apps.  Basic Java 6 + Maven 3.2.5

---

##Options
- MILE_APP - name of the jar or war: skynet, pdr, brochurejmsprocessing
- MILE_ENV - dev, acp, or prod
- MILE_VERSION - version to deploy, such as 15.7.2
- APP_TYPE - web or worker (ie. batchapp)
- MAIN_CLASS - Main class to run. Only used for batchapps
- APP_ARGS - Program arguments.  Only used for batchapps

See https://github.com/howardfackrell/milestone-cloud-deploy.git for more 

--

##Usage
```
docker run -dP -e MILE_ENV=dev -e MILE_APP=pdr -e MILE_VERSION=8.13-SNAPSHOT -e EVE_KEY=84ab8677153dfac99551de milestones-app
```