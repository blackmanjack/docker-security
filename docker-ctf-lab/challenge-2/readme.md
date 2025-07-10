# Challenge 2 – Outdated Base, No Flag!
So you built the container, ran it, and… nothing? No flag?

Yeah, that’s on purpose. The Dockerfile you're working with uses an old base image — one that’s no longer considered secure. And because of that, the container refuses to give up the flag.

Your task is to take a close look at how the image is being built. Find the outdated part, swap it out for something more current and secure, then rebuild the container. If you get it right, the flag will be there when you run it — no exploits or reverse engineering needed.

Sometimes, security is just about making the right choices. Good luck!

##  How to Run :
docker build -t challenge-2 .
docker run --rm challenge-2

