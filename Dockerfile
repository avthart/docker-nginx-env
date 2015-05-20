FROM nginx:latest
MAINTAINER Albert van t Hart <avthart@gmail.com>

ADD https://github.com/kreuzwerker/envplate/releases/download/v0.0.7/ep-linux /bin/ep
RUN chmod +x /bin/ep

EXPOSE 80 443

CMD [ "/bin/ep", "-v", "/etc/nginx/*.conf", "--", "/usr/sbin/nginx", "-g", "daemon off;" ]