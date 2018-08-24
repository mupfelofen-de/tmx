Functions
=========

**libTMX** provides a few functions to load maps and use the hasmaps. To access a loaded map, see :doc:`datastructure`.

Load maps
---------

.. c:function:: tmx_map* tmx_load(const char *path)

.. c:function:: tmx_map* tmx_load_buffer(const char *buffer, int len)

.. c:function:: tmx_map* tmx_load_fd(int fd)

.. c:type:: typedef int (*tmx_read_functor)(void *userdata, char *buffer, int len)

.. c:function:: tmx_map* tmx_load_callback(tmx_read_functor callback, void *userdata)

.. c:function:: void tmx_map_free(tmx_map *map)

External resources
------------------

.. c:type:: tmx_resource_manager

.. c:function:: tmx_resource_manager* tmx_make_resource_manager()

.. c:function:: void tmx_free_resource_manager(tmx_resource_manager *rc_mgr)

Load resources and maps
-----------------------

Tilesets
^^^^^^^^

.. c:function:: int tmx_load_tileset(tmx_resource_manager *rc_mgr, const char *path)

.. c:function:: int tmx_load_tileset_buffer(tmx_resource_manager *rc_mgr, const char *buffer, int len, const char *key)

.. c:function:: int tmx_load_tileset_fd(tmx_resource_manager *rc_mgr, int fd, const char *key)

.. c:function:: int tmx_load_tileset_callback(tmx_resource_manager *rc_mgr, tmx_read_functor callback, void *userdata, const char *key)

Object Templates
^^^^^^^^^^^^^^^^

.. c:function:: int tmx_load_template(tmx_resource_manager *rc_mgr, const char *path)

.. c:function:: int tmx_load_template_buffer(tmx_resource_manager *rc_mgr, const char *buffer, int len, const char *key)

.. c:function:: int tmx_load_template_fd(tmx_resource_manager *rc_mgr, int fd, const char *key)

.. c:function:: int tmx_load_template_callback(tmx_resource_manager *rc_mgr, tmx_read_functor callback, void *userdata, const char *key)

Maps
^^^^

.. c:function:: tmx_map* tmx_rcmgr_load(tmx_resource_manager *rc_mgr, const char *path)

.. c:function:: tmx_map* tmx_rcmgr_load_buffer(tmx_resource_manager *rc_mgr, const char *buffer, int len)

.. c:function:: tmx_map* tmx_rcmgr_load_fd(tmx_resource_manager *rc_mgr, int fd)

.. c:function:: tmx_map* tmx_rcmgr_load_callback(tmx_resource_manager *rc_mgr, tmx_read_functor callback, void *userdata)

Utilities
---------

.. c:function:: tmx_tile* tmx_get_tile(tmx_map *map, unsigned int gid)

.. c:function:: tmx_property* tmx_get_property(tmx_properties *hash, const char *key)

.. c:type:: typedef void (*tmx_property_functor)(tmx_property *property, void *userdata)

.. c:function:: void tmx_property_foreach(tmx_properties *hash, tmx_property_functor callback, void *userdata)

Error reporting
---------------

.. c:function:: void tmx_perror(const char*)

.. c:function:: const char* tmx_strerr(void)

Blah.