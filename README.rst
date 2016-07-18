====
tmux formula
====

Formula to install and configure tmux 

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

Available States
====

.. contents::
   :local:

      
``tmux``
----

Installs tmux and a .tmux.conf to the default global tmux conf location.
The tmux configuration file included just adds UTF-8 support but can be changed by adding `.tmux.conf` to your `salt://files` path

---------------------------

Testing
=========

Requirements
------------

Testing is done with KitchenSalt_ which means you'll also need a working Ruby setup and preferably 2.2.2, but you can use whatever version as long as you update the `Gemfile`.  You will also need `bundler` installed and can be done so with `gem install bundler`.

If all that works, you should be able to run `kitchen test` which is an alias for `kitchen converge` + `kitchen verify` but it deletes the box on completion so it isn't very useful during development.  

.. _KitchenSalt: https://github.com/simonmcc/kitchen-salt

Cheat Sheet
------------

.. code-block::

   # Initial setup
   which bundle || gem install bundler
   bundle install
   
   # build vagrant box and run states
   kitchen converge
   
   # run tests in `test/integration/default`
   kitchen verify

   # sledgehammer
   kitchen destroy

   # alias for running  (destroy + converge + verify + destroy)
   kitchen test

  
