FROM nginx

# RUN mkdir -p /home/app
# RUN useradd app
# ENV HOME=/home/app
# ENV APP_HOME=/home/app/web
# RUN mkdir $APP_HOME
# WORKDIR $APP_HOME
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d
