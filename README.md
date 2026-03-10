```
██████╗ ███████╗ █████╗ ██████╗ ██╗   ██╗      ∩___∩
██╔══██╗██╔════╝██╔══██╗██╔══██╗╚██╗ ██╔╝     |     |
██████╔╝█████╗  ███████║██████╔╝ ╚████╔╝      | •_• |
██╔══██╗██╔══╝  ██╔══██║██╔══██╗  ╚██╔╝       |  ω  |
██████╔╝███████╗██║  ██║██║  ██║   ██║       /|     |\
╚═════╝ ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝      (_|     |_)
```

# BEARY: Your AI-Powered Productivity Suite

**BEARY helps you work smarter, not harder.** A collection of AI-powered tools designed to enhance your productivity and streamline your workflow—without replacing your expertise or creativity.

> **Philosophy:** Your content, your expertise, your voice. BEARY just makes the process more efficient.

---

## What BEARY Does

BEARY is a suite of **independent, modular tools** that help with common office and personal productivity tasks:

- **Research Tool** - Gather and synthesize information efficiently
- **Presentation Tool** - Create and format PowerPoint slides quickly
- **Editing Tool** *(Coming Soon)* - Refine and polish your existing writing

**Key Principle:** BEARY assists with tasks, but **your content and ideas remain yours**. These tools help you work more efficiently, not generate content from scratch.

---

##  Quick Start (Pick Your Tool)

### Just Need Research?
→ **[Research Tool Documentation](tools/research/README.md)**

### Just Need Presentations?
→ **[Presentation Tool Documentation](tools/presentations/README.md)**

### Want Everything?
Keep reading for full installation...

---

## 📦 Repository Structure

```
BEARY/
├── tools/                      # Individual productivity tools
│   ├── research/              # Background research & synthesis
│   ├── presentations/         # PowerPoint automation
│   └── editing/               # (Coming soon) Writing refinement
├── core/                      # Shared utilities
│   ├── templates/             # Document templates
│   ├── shared-skills/         # Reusable AI skills
│   └── mcp-configs/           # MCP server configurations
├── examples/                  # End-to-end workflow examples
└── .windsurf/                 # Windsurf IDE configuration
```

**Each tool is standalone** - use what you need, ignore the rest.

---

## Available Tools

### 1. Research Tool
**Purpose:** Efficiently gather and organize information on a topic

**What it does:**
- Conducts structured internet research
- Takes organized notes with proper citations
- Synthesizes findings into a coherent document

**What it doesn't do:**
- Replace your analysis or expertise
- Generate content without your direction
- Make decisions about what's important

**Use when:** You need to quickly get up to speed on a topic, gather sources, or create a foundation for your own work.

---

### 2. Presentation Tool
**Purpose:** Streamline PowerPoint creation and formatting

**What it does:**
- Analyzes existing PowerPoint templates
- Applies consistent styling and themes
- Automates slide creation from your content
- Formats charts, tables, and layouts

**What it doesn't do:**
- Create presentation content for you
- Decide what to present
- Replace your storytelling

**Use when:** You have content ready and need to format it into professional slides quickly.

**Note:** Requires external PowerPoint MCP server installation (instructions in tool README).

→ **[Full Documentation](tools/presentations/README.md)**

---

### 3. Editing Tool *(Coming Soon)*
**Purpose:** Refine and polish your existing writing

**What it does:**
- Suggests improvements to clarity and flow
- Checks consistency and style
- Identifies areas that need strengthening

**What it doesn't do:**
- Rewrite your content
- Change your voice or message
- Generate new ideas

**Use when:** You've written something and want to make it better.

---

## 💡 Philosophy: Your Content Matters

BEARY is built on the principle that **your expertise, ideas, and voice are irreplaceable**. 

These tools are designed to:
- ✅ Save you time on repetitive tasks
- ✅ Help you organize and structure information
- ✅ Streamline formatting and presentation
- ✅ Support your workflow, not replace it

They are **not** designed to:
- ❌ Generate content without your input
- ❌ Replace your critical thinking
- ❌ Make decisions for you
- ❌ Pass off AI work as human expertise

**Always cite AI assistance when applicable.** Your integrity matters.

---

## 🎓 Getting Started

### Prerequisites
- **Windsurf IDE** (Cascade) - BEARY is optimized for Windsurf
- **Python 3.11+** - For running tools locally
- **Internet connection** - For research and MCP servers

### Installation

1. **Clone the repository:**
   ```bash
   git clone <repository-url>
   cd BEARY
   ```

2. **Choose your tool(s):**
   - **Research only:** Follow `tools/research/README.md`
   - **Presentations only:** Follow `tools/presentations/README.md`
   - **Everything:** Continue below...

3. **Set up your environment:**
   ```bash
   python -m venv .venv
   source .venv/bin/activate  # On Windows: .venv\Scripts\activate
   ```

4. **Configure Windsurf:**
   - Copy relevant MCP configurations from `core/mcp-configs/`
   - Set your preferences in `.windsurf/USER.md`

---

## 📚 Documentation

- **[Research Tool Guide](tools/research/README.md)** - Detailed research workflow
- **[Presentation Tool Guide](tools/presentations/README.md)** - PowerPoint automation
- **[Core Utilities](core/README.md)** - Shared templates and configurations
- **[Examples](examples/README.md)** - End-to-end workflow examples

---

## ⚠️ Important Notes

### AI Limitations
BEARY uses AI agents, and **LLMs can hallucinate**. Always:
- ✅ Verify citations and sources
- ✅ Check facts and accuracy
- ✅ Review generated content critically
- ✅ Use high-quality models for important work

### Ethical Use
- **Never plagiarize** - Cite sources appropriately
- **Disclose AI use** - Be transparent when AI assisted your work
- **Maintain integrity** - Your reputation depends on accurate, honest work

---

## 🤝 Contributing

BEARY is designed to be modular and extensible. Contributions welcome!

- **Add new tools** - Follow the `tools/` structure
- **Improve existing tools** - Submit PRs with enhancements
- **Share workflows** - Add examples to `examples/`

---

## 📄 License

[Add your license here]

---

## 🐻 About BEARY

BEARY started as a background research tool and has evolved into a productivity suite. The name stands for **B**ackground r**E**se**AR**ch, but now represents a broader mission: helping professionals work more efficiently while maintaining the quality and integrity of their work.

**Your expertise. Your content. Your voice. Just more efficient.**