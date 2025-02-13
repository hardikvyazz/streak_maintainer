
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
   ```

2. **Navigate to the project directory**:
   ```bash
   cd streak_maintainer
   ```

3. **Create a new file to track commits** (optional, if not already created):
   ```bash
   touch streak.txt
   ```

4. **Initialize the Git repository** (if you haven't already done this):
   ```bash
   git init
   git add README.md
   git commit -m "Initial commit"
   ```

5. **Add your GitHub repository as the remote origin**:
   ```bash
   git remote add origin https://github.com/your-username/streak_maintainer.git
   git push -u origin main
   ```

---

## **Usage**

This project includes a **shell script** that automates commits to maintain your GitHub streak. You can modify the script to fit your needs, such as customizing the number of commits or changing the commit messages.

### **Commit Automation Script (`auto_commit.sh`)**

This script generates 2-4 commits per day with random commit messages.

1. **Edit `auto_commit.sh` to specify the correct path** to your repository if necessary.

2. **Make the script executable**:
   ```bash
   chmod +x auto_commit.sh
   ```

---

## **Automating Commits with Cron**

To ensure commits are made automatically at specific times of the day, use `cron` to schedule the script.

1. **Open crontab** for editing:
   ```bash
   crontab -e
   ```

2. **Add the following cron job entries** to run the script at random times each day:

   ```bash
   0 10 * * * /bin/bash /home/ubuntu/Playground/streak_maintainer/auto_commit.sh >> /home/ubuntu/Playground/streak_maintainer/commit_log.txt 2>&1
   30 14 * * * /bin/bash /home/ubuntu/Playground/streak_maintainer/auto_commit.sh >> /home/ubuntu/Playground/streak_maintainer/commit_log.txt 2>&1
   15 18 * * * /bin/bash /home/ubuntu/Playground/streak_maintainer/auto_commit.sh >> /home/ubuntu/Playground/streak_maintainer/commit_log.txt 2>&1
   45 22 * * * /bin/bash /home/ubuntu/Playground/streak_maintainer/auto_commit.sh >> /home/ubuntu/Playground/streak_maintainer/commit_log.txt 2>&1
   ```

   This will ensure that the script runs at **10 AM**, **2:30 PM**, **6:15 PM**, and **10:45 PM** each day.

3. **Save and close** the crontab file. The commits will now be scheduled!

---

## **Contributing**

We welcome contributions to improve this project! Feel free to fork the repository, make improvements, and submit a pull request.

### **Steps to Contribute:**

1. **Fork the repository**.
2. **Create a feature branch** (`git checkout -b feature-branch`).
3. **Commit your changes** (`git commit -am 'Add new feature'`).
4. **Push to the branch** (`git push origin feature-branch`).
5. **Submit a pull request**.

---

## **License**

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## **Acknowledgments**

- GitHub for providing the platform and contribution streaks.
- Cron and Bash for the automation tools.

---

Feel free to **copy** this README and use it for your own streak-maintaining repositories! 😊