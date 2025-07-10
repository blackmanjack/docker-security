# Challenge 5 - Tame the Beast

Some containers are greedy. By default, they can consume all your host's CPU and memory - which might be fine for personal scripts, but in production (or a shared environment), that's a huge problem.

This container doesn't play nice if you let it run freely. It expects you to enforce discipline: **limit its CPU and memory usage properly**. If you do that, it behaves. If not? No flag for you.

---

## 🎯 Objective

Run this container **with the correct CPU and memory limits** so it reveals the flag.

---

## 🔍 What to Know

- By default, containers have access to **all** your CPU cores and RAM.
- Docker supports limiting these using flags like:
  ```bash
  --cpus=1 --memory=512m
  ```
