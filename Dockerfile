FROM ruby:2.6.3
LABEL maintainer="samkennerly@gmail.com"

# Update system packages and install Jekyll
RUN apt-get update && gem update --system && gem install jekyll:3.8.5

# Install theme and plugins
RUN gem update --system && gem install \
  jekyll-seo-tag:2.6.0 \
  jekyll-sitemap:1.3.1 \
  minima:2.5.0

CMD ["jekyll","serve","--host","0.0.0.0","--watch"]
