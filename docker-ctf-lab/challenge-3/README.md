# Challenge 3 – Root Is Too Much
This container works, sure — but it runs everything as root.

And that’s a problem.

Running containers as the root user is risky. If something goes wrong, or if an attacker finds a way in, they’ve got full control — not just of the container, but potentially the host too.

Your mission? Fix it.

Take a look at the Dockerfile and figure out how to drop those root privileges. There’s already a non-root user set up for you — all you need to do is switch over and make sure the container uses it properly.

Once the container is running as a non-root user, the flag will be there waiting for you.

You don’t need to exploit anything. Just stop giving containers more power than they need.

## How to run
docker build -t challenge-3 .
docker run --rm challenge-3
