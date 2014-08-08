================
eramba-formula
================

Downloads and installs

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

Available states
================

.. contents::
    :local:

``eramba``
------------

Installs the eramba package.

``eramba.database``
------------

Configure database settings.

``eramba.cron``
------------

Sets up cron.

This formula depend on the following formulas:

* `php <https://github.com/saltstack-formulas/php-formula>`_

* `apache <https://github.com/saltstack-formulas/apache-formula>`_
or
* `nginx <https://github.com/saltstack-formulas/nginx-formula>`_
