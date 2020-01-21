# jekyllbox

Heeeeeeeeere's Jekyll.

<img
  alt="Octojekyll"
  src="https://raw.githubusercontent.com/samkennerly/posters/master/jekyllbox.png"
  title="They're not sure it even is a cat.">

## abstract

Build and serve a [Jekyll] website in a [container].

[Installing a full Ruby development environment] is not required.

[Jekyll]: https://jekyllrb.com/
[container]: https://www.docker.com/resources/what-container
[Installing a full Ruby development environment]: https://medium.com/windmill-engineering/how-i-built-a-simple-static-jekyll-site-without-installing-ruby-a-rant-b7e87fb123d0

## basics

1. [Clone] this repo or [use it as a template].
1. Open a [terminal] and `cd` to this folder.
1. Run `bin/serve` to build and serve a Jekyll site.
1. Open a browser and enter `localhost:4000` in the address bar.

Press *CTRL-C* to stop the Jekyll server. The container will [self-destruct].

[Clone]: https://help.github.com/en/github/creating-cloning-and-archiving-repositories/cloning-a-repository
[use it as a template]: https://help.github.com/en/github/creating-cloning-and-archiving-repositories/creating-a-repository-from-a-template
[Terminal]: https://en.wikipedia.org/wiki/Command-line_interface
[self-destruct]: https://docs.docker.com/engine/reference/run/#clean-up---rm

## contents

### [bin/serve](bin/serve)

[Shell script] which

- builds a `jekyllbox` Docker [image].
- deletes any leftover [dangling images].
- runs Jekyll in a container.
- [publishes] port `4000` on the host machine.
- [bind mounts] the current working directory as `/context`.

[Shell script]: https://en.wikipedia.org/wiki/Shell_script
[image]: https://docs.docker.com/get-started/
[dangling images]: https://docs.docker.com/config/pruning/#prune-images
[publishes]: https://docs.docker.com/engine/reference/commandline/run/#publish-or-expose-port--p---expose
[bind mounts]: https://docs.docker.com/storage/bind-mounts/

### [Dockerfile](Dockerfile)

Docker [build instructions], including [JEKYLL_ENV], [plugins], and [themes].

[build instructions]: https://docs.docker.com/engine/reference/builder/
[JEKYLL_ENV]: https://github.com/jekyll/jekyll/issues?q=jekyll_env
[plugins]: https://jekyllrb.com/docs/plugins/
[themes]: https://jekyllrb.com/docs/themes/

## dependencies

1. Docker for [Linux], [Mac], or [Windows].

[Linux]: https://docs.docker.com/install/
[Mac]: https://docs.docker.com/v17.12/docker-for-mac/install/
[Windows]: https://docs.docker.com/docker-for-windows/install/

## examples

Build a `jekyllbox` image, build the site, and start a web server:
```
bin/serve
```

## faq

### How do I install Jekyll themes?

Update the [Dockerfile] to install any [gems] you need.

[Dockerfile]: Dockerfile
[gems]: https://guides.rubygems.org/what-is-a-gem/

