## Challenge 1 – Heavy Is Not Secure**

Everything seems to work. The container builds, it runs, and you even get a flag. So… what’s the problem?

Well, take a look at the base image. It’s using Ubuntu 20.04 — a full-blown operating system. That means your container is carrying around a lot of baggage it doesn’t really need. More packages, more libraries, more potential vulnerabilities. Not great for security — or efficiency.

Your task is simple: make it leaner. Replace the current base image with something smaller and more lightweight. **Alpine Linux** is a great option — it’s tiny, fast, and built with security in mind. If you pick the right one, the flag will still be there when you run the container. If not… you’ll just get a message telling you to try again.

So go ahead — trim the fat. In container security, **lighter is better**.
