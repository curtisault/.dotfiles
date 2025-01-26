## Cron Jobs

### Backing Up Configs

Add script and `chmod +x /path/to/this/script.sh`.

Creating a cron job for backing up configs every weekday at noon. 
Edit crontabs with `crontabs -e` and enter the following:

```bash
0 0 12 ? * MON-FRI * /path/to/script.sh >> /path/to/logfile.log 2>&1
```
