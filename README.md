## Cron Jobs

### Backing Up Configs
Creating a cron job for backing up configs. Edit crontabs with `crontabs -e` and enter the following:

```bash
0 0 12 ? * MON-FRI * /path/to/this/script.sh >> /path/to/logfile.log 2>&1
```
