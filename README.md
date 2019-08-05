Prosody
==================

Fedora 29 linux with prosody installed.

Whats Prosody?
==================

It is simple and easy to self host xmpp/jabber server - see details here - [https://prosody.im/](https://prosody.im/)


Building image
==================

```shell

# docker build -t vodolaz095/prosody .

```

Starting docker swarm
==================

```shell

# docker stack deploy -c swarm.stack.yml prosody

```
