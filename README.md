# Quiz

## Demo

- Check
  ![Check](https://kyoronet.github.io/image-storage/rails-quiz/check.gif)

- Post
  ![Post](https://kyoronet.github.io/image-storage/rails-quiz/post.gif)

## Deploy

### Development

```bash
$ bundle install --without production
$ rails db:migrate
$ rails server
```

### Production

```bash
$ bundle install --without development:test
$ rails db:migrate
$ rails server -e production
```
