# README

Dockerize Rails 6.1 with Docker 20.10 on Ubuntu 20.04.

Build the railsapp docker image: ./build.sh
Run the railsapp docker image: ./run.sh

# Issues

1. rails webpacker:install (this runs everytime the image is built, need to cache like the gem install)
2. The blog post instructions result in permission issue. It requires sudo to change any files in the project.
3. How to access rails console ?

# References

1. The Docker Workshop - Learn how to use Docker containers effectively to speed up the development process by Vincent Sesto et al
2. Docker for Rails Developers by Rob Isenberg
3. Dockerizing a Rails app blog post by https://semaphoreci.com/community/tutorials/dockerizing-a-ruby-on-rails-application
