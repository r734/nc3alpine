# Run a .NET Core 3.0 app in Alpine

This is an example of building a self-contained, single-file hello-world .NET Core 3.0 app and running it in an Alpine container. The final container size is 46 MB.

Inspired by [this post](https://devandchill.com/posts/2019/06/net-core-3.0-publish-single-file-binary-on-alpine-container/).

To build, `docker build -t nc3alpine .`

To run, `docker run --rm -it nc3alpine`
