## Challenge 4 – Build It Right
You're working with a Dockerfile that looks simple — maybe too simple.

At first glance, you have a Java environment, and there's a comment suggesting something about multi-stage builds. But here's the twist: the final container shouldn’t contain any compilers, SDKs, or unnecessary tools. You want to keep your runtime image clean, fast, and secure.

Your job? Implement a proper multi-stage build. In the first stage, you "build" the app (or pretend to), and in the second stage, you create a runtime-only image that includes only the essential output from the build stage.

But beware: the flag isn't just sitting in the image waiting for you. It will only appear if the runtime container contains a proper "artifact" from the build stage.

⚠️ If you skip the builder stage or forget to copy the right file — no flag for you.

## How to Run
docker build -t challenge-4 .
docker run -it challenge-4
