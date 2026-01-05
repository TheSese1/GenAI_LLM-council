# LLM Council — Local & Distributed Deployment with Ollama

This project is a refactoring and local deployment of **Andrej Karpathy’s LLM Council**, a system where multiple Large Language Models (LLMs) collaboratively answer a user query, critique each other’s responses, and synthesize a final answer through a designated **Chairman** model.

The original implementation relies on **OpenRouter / OpenAI** for model access.  
Our goal is to **fully replace external APIs with locally hosted LLMs using Ollama**, enabling a **distributed multi-LLM system** running across one or more machines.

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
├── pyproject.toml
├── start.sh
└── requirements.txt
```

---

## ✅ Mandatory Requirements

- Replace **OpenRouter** with **Ollama** for *all* LLM calls
- Each team member must run **at least one LLM**
- Models may run on:
  - Separate machines, or
  - The same machine if resources allow
- Machines must communicate using the **Ollama REST API**
- The **Chairman LLM** must run on a separate instance (ideally a separate machine)

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

## 🚀 Getting Started (Quick Overview)

1. Install [Ollama](https://ollama.com/) on each machine
2. Pull the required models (e.g. `llama3`, `mistral`, etc.)
3. Configure each LLM instance in the project settings
4. Start the council services
5. Submit a query and observe the full council workflow

> A detailed setup guide is provided in the `docs/` folder.

---

## 📚 References

- Andrej Karpathy – *LLM Council (Original Concept)*
- Ollama – Local LLM Runtime
- REST-based distributed systems
