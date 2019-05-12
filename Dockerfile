FROM ruby:2.6.3
LABEL maintainer="samkennerly@gmail.com"

# Update system packages and install Jekyll.
RUN apt-get update && \
    gem update --system && \
    gem install jekyll:3.8.5

# Install Jekyll plugins and/or themes.
RUN gem update --system && gem install \
    jekyll-seo-tag:2.6.0 \
    jekyll-sitemap:1.3.1 \
    minima:2.5.0

# Prevent Jekyll from silently ignoring 'url' in _config.yml file.
# https://jekyllrb.com/news/#siteurl-is-set-by-the-development-server
ENV JEKYLL_ENV=production

CMD ["jekyll","serve","--host","0.0.0.0","--port","4000","--watch"]
