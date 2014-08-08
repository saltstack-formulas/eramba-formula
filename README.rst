================
eramba-formula
================

Downloads and installs eramba.

http://www.eramba.org/

>   eramba is an open-source, web-application and framework
>   (largely based on ISO/IEC 27001, 9001, 22301, ITIL, CoBIT and real life experience)
>   aimed to help security managers, consultants and officers with: risk,
>   compliance, audits, awareness, controls catalogues, budgets, efficiencies,
>   continuity plans, exception management, awareness and project management.

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
