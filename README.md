# PHP Development Environment

This image is created for the containerized development purpose of PHP.

## How to use?

cd into your PHP project root directory. then run the following command.

```shell
docker run --rm -d -p 8080:80 --name my_awesome_app -v "$PWD":/var/www/html mrinjamul/php-devel:7.3.28
```

Now go to [http://localhost:8080](http://localhost:8080) . You can see the website is up.

## Author

- Injamul Mohammad Mollah <mrinjamul@gmail.com>

## License

- licensed under [MIT](https://github.com/mrinjamul/php-devel/blob/main/LICENSE)

