# 🎓 Student Portfolio Website

A clean, modern, and attractive student portfolio website built using **pure HTML and CSS** in a single `index.html` file, packaged with **Docker and Nginx (Alpine)** for effortless deployment.

---

## 🎨 Features
- **Modern Blue & White Design:** Crisp typography, subtle gradients, and card box-shadows.
- **Single File:** Everything is contained inside `index.html` using internal CSS (no external frameworks like React, Node.js, Bootstrap, or Tailwind needed).
- **Fully Responsive:** Adapts cleanly to desktops, tablets, and mobile devices.
- **Sections Included:**
  1. **Header & Navigation:** Sticky navbar with smooth-scrolling links.
  2. **Home (Hero):** Introduction badge, title, quick bio, CTA buttons, and student avatar badge.
  3. **About Me:** Academic summary, coursework, and stat counters.
  4. **Skills:** Categorized skill cards (Web Development, Programming, Tools & DevOps).
  5. **Projects:** Showcase cards featuring preview and source code buttons.
  6. **Contact:** Direct contact info (Email, LinkedIn, GitHub, Location) and a clean message form.
  7. **Footer:** Copyright and credits.

---

## 🚀 Running with Docker (Beginner-Friendly Guide)

### Prerequisites
Make sure **Docker Desktop** is installed and running on your computer.

---

### Step 1: Open Terminal in Project Directory
Navigate to the folder containing `Dockerfile` and `index.html`:
```bash
cd "c:\Users\karti\OneDrive\Desktop\PRACTICAL"
```

---

### Step 2: Build the Docker Image
Run the `docker build` command to create your container image:
```bash
docker build -t student-portfolio .
```
- `docker build`: Tells Docker to create an image.
- `-t student-portfolio`: Names (tags) your image `student-portfolio`.
- `.`: Specifies that the current directory contains the `Dockerfile`.

---

### Step 3: Run the Container
Start the container using `docker run`:
```bash
docker run -d -p 8080:80 --name my-portfolio student-portfolio
```
- `docker run`: Starts a new container.
- `-d` *(detached)*: Runs the container in the background so your terminal remains free.
- `-p 8080:80`: Maps port `8080` on your computer (host) to port `80` inside the Nginx container. *(You can also use `-p 80:80` if port 80 is not in use by other services)*.
- `--name my-portfolio`: Assigns a friendly name to your running container.
- `student-portfolio`: The image to run.

---

### Step 4: View the Website in Your Browser
Open your favorite web browser and go to:
```text
http://localhost:8080
```
*(Or `http://localhost` if you used port 80).*

---

### Step 5: Managing the Container

- **To check if the container is running:**
  ```bash
  docker ps
  ```

- **To stop the website:**
  ```bash
  docker stop my-portfolio
  ```

- **To start it again:**
  ```bash
  docker start my-portfolio
  ```

- **To remove the container completely:**
  ```bash
  docker rm -f my-portfolio
  ```

---

## 💻 Running Without Docker (Direct Preview)
You can also open the website directly without Docker:
- Simply double-click the `index.html` file, or open it in any web browser (Chrome, Edge, Firefox, Safari).
