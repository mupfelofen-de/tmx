Building libTMX
===============

Prerequisites
-------------

* A C compiler (`Clang`_, `GCC`_, ...) **libTMX** is written in C89 but
  uses the ``<stdint.h>`` header that is in the C99 standard, therefore you may build **libTMX** using a C89 compiler as
  long as you provide that header.
* `ZLib`_ to uncompress layers (optional, select an uncompressed layer format in the properties).
* `libxml2`_ to load maps; **libTMX** uses the `IO api`_ to load from various sources
  (protip: if libxml2 was built with the built-in HTTP client, then **libTMX** will be able to load maps from a remote
  server via HTTP), and the `xmlreader api`_ to parse XML documents, and the `hash api`_ as a hashtable implementation.
* The `CMake`_ build system builder.

.. _Clang: https://clang.llvm.org/
.. _GCC: https://gcc.gnu.org/
.. _ZLib: http://zlib.net/
.. _libxml2: http://xmlsoft.org/
.. _IO api: http://xmlsoft.org/html/libxml-xmlIO.html
.. _xmlreader api: http://xmlsoft.org/html/libxml-xmlreader.html
.. _hash api: http://xmlsoft.org/html/libxml-hash.html
.. _CMake: https://cmake.org/

Building
--------

Neque numquam voluptas consequatur vitae aliquid id. Porro excepturi tempore
facilis. Sapiente aut inventore eos dolor laborum neque. Quia laborum totam sunt
omnis non sed fugit laborum. Molestias architecto ea alias fuga et non omnis.
Laborum temporibus velit enim.

Velit veritatis impedit dolor aut consequatur. Esse quod rerum ex. Corporis
magni praesentium optio. Et quam ducimus ex incidunt sapiente. Tempore quasi rem
illum atque et ab inventore enim. Iste eos delectus deleniti nostrum autem
debitis.

Windows
-------

Consequuntur qui cum similique quo quas rerum. Voluptates vero voluptas
repellendus possimus magnam labore non qui. Quis culpa molestiae error sit est
et molestiae et. Aperiam voluptatem a neque est. Necessitatibus amet aut sed ut.
Numquam reprehenderit illum omnis ratione.
