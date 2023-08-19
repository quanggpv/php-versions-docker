# php-versions-docker

Hi guys,

This repo is designed to help you use multiple PHP versions on a nginx web server.

Don't forget to add your virtual hosts to the hosts file.


Some notes:
- Currently, queue was configured in supervisor, supervisor & cron job are just installed in `php74` image. If you use them for other php verions, just copy images & change those names
- The log files for supervisor are config in supervisor.conf, 'stdout_logfile' = 'path/to/your_log_file'


How to run:
cd /path/to/docker-compose.xml 
docker-compose build
docker-compose up -d
