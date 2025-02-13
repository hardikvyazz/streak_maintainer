# Streak Maintainer

A simple automation tool to maintain your GitHub contribution streak by making regular commits to your repository. This repository allows users to automate commits on GitHub, ensuring a consistent streak of contributions.

---

## **Table of Contents**

1. [Overview](#overview)
2. [Features](#features)
3. [Installation Guide](#installation-guide)
4. [Usage](#usage)
5. [Automating Commits with Cron](#automating-commits-with-cron)
6. [Contributing](#contributing)
7. [License](#license)

---

## **Overview**

GitHub contribution streaks are a fun way to track and maintain your activity on the platform. This project automates the process of making 2-4 commits per day, ensuring that your streak remains unbroken while you are away or unable to contribute manually.

This project automates the process using a custom shell script and crontab (for Linux users), which generates commits to a repository at specific intervals.

---

## **Features**

- **Automated Commits**: Make 2-4 commits daily with random commit messages to maintain your streak.
- **Customization**: Easy to modify the script for different commit schedules and commit types.
- **Logs**: All automated actions are logged for monitoring.
- **Simple Setup**: A straightforward, script-based setup for cron automation.

---

## **Installation Guide**

### **Prerequisites**

- A **GitHub account** and a **repository** where you want to maintain your streak.
- **Git** installed on your system.
- **Cron** installed for scheduling tasks (Linux-based systems).
- **Bash shell**.

### **Steps to Set Up**

1. **Clone this repository** to your local machine:
   ```bash
   git clone https://github.com/hardikvyazz/streak_maintainer.git
