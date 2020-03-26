#汉化过的szurubooru，您可以轻松搭建一个功能强大的中文图库。

2020/3/36 更新日志

增加了新功能 跳过相似项，可大大加快批量上传速率。

以下是原文README

# szurubooru

Szurubooru is an image board engine inspired by services such as Danbooru,
Gelbooru and Moebooru dedicated for small and medium communities. Its name [has
its roots in Polish language and has onomatopeic meaning of scraping or
scrubbing](http://sjp.pwn.pl/sjp/;2527372). It is pronounced as *shoorubooru*.

## Features

- Post content: images (JPG, PNG, GIF, animated GIF), videos (MP4, WEBM), Flash animations
- Post comments
- Post notes / annotations, including arbitrary polygons
- Rich JSON REST API ([see documentation](doc/API.md))
- Token based authentication for clients
- Rich search system
- Rich privilege system
- Autocomplete in search and while editing tags
- Tag categories
- Tag suggestions
- Tag implications (adding a tag automatically adds another)
- Tag aliases
- Duplicate detection
- Post rating and favoriting; comment rating
- Polished UI
- Browser configurable endless paging
- Browser configurable backdrop grid for transparent images

## Installation

It is recommended that you use Docker for deployment.
[See installation instructions.](doc/INSTALL.md)

Users who wish to avoid using Docker may find the [old installation instructions](doc/LEGACY_INSTALL.md) helpful.

## Screenshots

Post list:

![20160908_180032_fsk](https://cloud.githubusercontent.com/assets/1045476/18356730/3f1123d6-75ee-11e6-85dd-88a7615243a0.png)

Post view:

![20160908_180429_lmp](https://cloud.githubusercontent.com/assets/1045476/18356731/3f1566ee-75ee-11e6-9594-e86ca7347b0f.png)

## License

[GPLv3](LICENSE.md).
