# LLM Council — Local & Distributed Deployment with Ollama

This project is a refactoring and local deployment of **Andrej Karpathy’s LLM Council**, a system where multiple Large Language Models (LLMs) collaboratively answer a user query, critique each other’s responses, and synthesize a final answer through a designated **Chairman** model.

The original implementation relies on **OpenRouter / OpenAI** for model access.  
Our goal is to **fully replace external APIs with locally hosted LLMs using Ollama**, enabling a **distributed multi-LLM system** running across one or more machines.

---

## 📌 Project Overview

LLM Council (Local & Distributed) is a multi-agent reasoning system designed to improve answer quality by combining:

- Independent reasoning from multiple LLMs
- Peer review and ranking between models
- A final synthesis step handled by a dedicated Chairman model

This refactored version focuses on:

- Local execution (no external LLM APIs)
- Distributed deployment across multiple machines
- Reproducibility and cost-free inference
- Demonstrating collaborative reasoning using open models

---

## 📌 What Is the LLM Council?

The **LLM Council** is a structured multi-agent reasoning system:

- Multiple LLMs independently answer the same user query
- Models anonymously review and rank each other’s answers
- A designated **Chairman LLM** aggregates all responses
- The Chairman produces a final, synthesized answer

This setup improves reasoning quality by encouraging diversity, critique, and consensus.

---

## 🧠 Council Workflow

### Stage 1 — First Opinions
- Each LLM answers the user query independently
- Responses are collected
- The individual responses are shown in a "tab view", so that the user can inspect them all one by one

### Stage 2 — Review
- Each individual LLM is given the anonymized responses of the other LLMs
- The LLM is asked to rank them in accuracy and insight

### Stage 3 — Chairman Final Answer
- The Chairman LLM receives:
  - All original answers
  - All peer rankings and reviews
- He then compiles them into a single final answer that is presented to the user

---

## 🎯 Project Goal

Refactor the original LLM Council to run **entirely locally**, using **Ollama** as the LLM runtime instead of OpenRouter.

### Key Objectives
- Replace all OpenRouter/OpenAI calls with **Ollama REST API**
- Run multiple LLMs locally and/or across multiple machines
- Implement a fully working distributed **LLM Council**
- Demonstrate an end-to-end working prototype

---

## 🛠️ Technology Stack

- **Python**
- **Ollama** (local LLM hosting)
- **REST APIs** (inter-machine communication)
- **Original LLM Council codebase by Andrej Karpathy**

---

## 🧩 Project Structure Overview (subject to change)
```
project/
│
├── backend/
│ ├── __init__.py
│ ├── config.py
│ ├── council.py
│ ├── main.py
│ └── storage.py
│
├── docs/
│ └── setup-guide.md
│
├── README.md
├── main.py
├── .gitignore
├── pyproject.toml
└── start.sh
```

---

## ⚙️ Setup and Installation Instructions 

### Step 1 — Setup the environment
 - (See docs/setup-guide.md)
### Step 2 — Install Ollama
 - Install Ollama on each machine: https://ollama.com/
### Step 3 — Pull Required Models
```bash
ollama pull llama3
ollama pull mistral
```
### Step 4 — Configuration
 - Configuration files location: [...]
 - How to assign:
      - Chairman model: [...]
      - Council models: [...]
 - How to specify remote Ollama endpoints (IP / port): [...]

---

## ▶️ Instructions to Run the Demo (to complete)

### Step 1 — Start Ollama Services
Ensure Ollama is running on:
 - Chairman machine
 - Each council member machine
### Step 2 — Start Council Services
Make the file executable on Unix :
```bash
chmod +x start.sh
```
### Step 3 — Submit a Query
 - Method (CLI / Web UI / API): [...]
 - Example query:
```
[PLACEHOLDER: example user query]
```
### Step 4 — Observe the Workflow
 - Individual LLM responses
 - Peer reviews and rankings
 - Final Chairman synthesis
 - Example successful response per step:
```
All models respond
```
```
Reviews are generated
```
```
Chairman produces a final answer
```

---

## ✅ Mandatory Requirements

- Replace **OpenRouter** with **Ollama** for *all* LLM calls
- Each team member must run **at least one LLM**, for a **total of at least 3 LLMs**
- The Chairman LLM **MUST** run on a separate machine
- Models may run on:
  - Separate machines, or
  - The same machine if resources allow
- Machines must communicate using the **Ollama REST API**

Here, for a project with two members :
- The **Chairman LLM** must run on one PC.
- All **council LLMs** must run on a second, separate PC.

---

## 🧪 Evaluation Criteria

- **Code Quality**
  - Clean refactoring
  - Modular and readable logic
- **Functionality**
  - Fully working council workflow
  - Proper chairman synthesis
- **Improvements**
  - Enhancements beyond the original repository
- **Documentation**
  - Clear README
  - Setup guide
  - Architecture explanation
  - Final report

---

## 📅 Important Dates

- **Deadline:** 12/01
- **Final Demo:** In-class demonstration during the last TD session

⚠️ Make sure all machines are tested, connected, and running before evaluation.

---

## 🤖 Generative AI Usage Statement

This project made use of generative AI tools to assist with certain tasks. (Specifically: GPT-5 mini)

- Documentation Writing : The content and structure of this README, including setup instructions, project overview, and workflow explanations, were drafted and refined with the help of a generative AI assistant.

- Content Summarization & Workflow Explanation : Summaries of the LLM Council workflow stages and architecture diagrams were clarified and structured with AI guidance.

- Code generation : ...

---

## 📚 References

- Andrej Karpathy – *LLM Council (Original Concept)*
- Ollama – Local LLM Runtime
- REST-based distributed systems

---

## Group members (From CDOF3)

- Sébastien LEVESQUE
- Yunhao ZHOU
