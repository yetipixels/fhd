---
name: conversation-context-preservation
description: |
  Summarizes long ChatGPT and Antigravity conversation histories and preserves essential context, confirmed decisions, technical architecture, and progress without loss of detail or hallucination.
  Use this skill whenever:
    1. A conversation is getting long and context compaction or handoff is needed.
    2. Starting a new conversation or agent session for an ongoing project.
    3. Switching between tasks or passing work to another team member or agent.
    4. Summarizing previous project discussions, transcripts, or user requirements.
    5. Updating an existing project status summary with newly confirmed information.
    6. Generating a high-fidelity session handoff prompt.
license: Apache-2.0
metadata:
  version: v1.0.0
  author: Antigravity Workflow Engineering
---

# Chat History Summarization & Context Preservation

A standardized engineering skill for analyzing long conversation trajectories, extracting verified project context, classifying decisions, tracking technical progress, and generating structured handoff summaries that enable seamless continuation without redundant back-and-forth.

---

## 1. Core Principles & Negative Constraints

1. **Evidence-Based Extraction Only**: Never invent missing facts, requirements, or progress. If an implementation detail was not confirmed in the conversation or code, do not claim it was completed.
2. **Decision Boundary Discipline**: Clearly distinguish between *confirmed user requirements*, *tentative proposals*, *rejected approaches*, and *pending decisions*. Never elevate a model suggestion into a user decision.
3. **Zero Credential Exposure**: Strictly omit all API keys, access tokens, passwords, private keys, database connection strings, and sensitive credentials.
4. **Signal Over Chronological Noise**: Do not summarize turns message-by-message ("First user said hi, then model said hello"). Synthesize the *substance*, *technical state*, and *outcomes*.
5. **Self-Sustaining Handoff**: The generated summary must allow a fresh AI model in a new conversation to immediately grasp the full architecture, file structure, established preferences, and next priorities without needing access to the original chat log.

---

## 2. Conversation Analysis Workflow

```mermaid
flowchart TD
    RawLog["Raw Conversation / Transcripts / User Prompt"] --> FilterNoise["1. Filter Noise & Small Talk"]
    FilterNoise --> Sanitize["2. Redact Secrets & Credentials"]
    Sanitize --> ExtractData["3. Extract Technical Context & Decisions"]
    ExtractData --> ClassifyDecisions["4. Classify Decisions: Confirmed vs Proposed vs Rejected"]
    ClassifyDecisions --> AuditProgress["5. Audit Status: Done vs In-Progress vs Blocked"]
    AuditProgress --> BuildSummary["6. Format into 10 Standard Sections"]
    BuildSummary --> GenerateHandoff["7. Produce Next-Conversation Handoff Prompt"]
```

### Step 1: Filter Noise & Redact
- Exclude pleasantries, apologies, retry loops, and transient system chatter.
- Scan for patterns like `bearer [A-Za-z0-9_-]+`, `ghp_[A-Za-z0-9]+`, `password=...`, private keys (`-----BEGIN PRIVATE KEY-----`), and replace with `[REDACTED]`.

### Step 2: Classify Decisions
Assign every architectural or business choice to one of four categories:
- **Confirmed**: Explicitly requested, confirmed, or approved by the user (Binding).
- **Proposed**: Suggested by model or user, but awaiting final decision (Tentative).
- **Rejected**: Explicitly declined with rationale recorded (Forbidden to re-suggest).
- **Pending**: Blocked by technical dependency or awaiting user clarification.

### Step 3: Audit Technical Artifacts
- Check exact file paths, modified lines, git commits, branches, and running processes.
- List active ports, endpoints, and deployment mechanisms.

---

## 3. Standard 10-Section Output Structure

Every context preservation document must follow this exact Markdown structure:

```markdown
# Project Context
[Brief explanation of the project, its business/technical purpose, repository name, and active workspace.]

# Requirements
[Confirmed functional, visual, and architectural requirements. Categorized by feature or priority.]

# Architecture & Technology Stack
[Languages, frameworks, libraries, database, APIs, CSS architecture, toolchains, and deployment target.]

# Important Decisions
- Confirmed Decisions: [List with brief rationale]
- Proposed Ideas: [Ideas explored but not finalized]
- Rejected Approaches: [Approaches explicitly discarded and why]
- Pending Decisions: [Open items needing decision]

# Implementation Status
- Completed: [Features fully implemented, tested, and verified]
- In Progress: [Items currently being worked on]
- Not Yet Implemented: [Backlog items planned but not started]
- Needs Verification: [Items requiring user review or automated testing]

# Files & Code References
[Key files, directories, configuration paths, and their specific role in the project.]

# Issues & Troubleshooting
[Problems encountered, root causes identified, solutions attempted, and unresolved bugs.]

# User Preferences & Constraints
[Specific coding conventions, styling constraints, forbidden practices, or workflow rules.]

# Next Steps
[Numbered, prioritized list of concrete actions needed to continue.]

# Instructions for the Next Conversation
[A concise continuation prompt for the next agent: what to understand, what to inspect, what NOT to change, and where to begin.]
```

---

## 4. Context Updating & Reconciliation Workflow

When an ongoing project summary already exists and needs to be updated with new conversation turns:

1. **Diff Against Existing Summary**:
   - Identify which *Pending Decisions* were resolved $\rightarrow$ move to *Confirmed* or *Rejected*.
   - Identify which *In Progress* tasks were completed $\rightarrow$ move to *Completed* with commit/file proof.
   - Append newly identified *Issues* or mark solved ones as resolved.
2. **Handle Superseded Information**:
   - If the user explicitly changed a requirement (e.g. "Actually don't use PostgreSQL, let's use SQLite"), update the *Architecture* section, move PostgreSQL to *Rejected Approaches* with the note *"Superseded by user request on [Date]"*, and update *Requirements*.
   - Never keep two conflicting requirements active simultaneously.
3. **Preserve Established Constraints**:
   - Ensure user preferences recorded earlier (e.g. "Do not use global pip", "Never push to main directly") are preserved through subsequent summary updates.

---

## 5. Comparative Examples: High-Quality vs. Low-Quality Summaries

### ❌ Low-Quality Summary (Vague, Chronological, Unactionable)
> *"The user asked to add products. The agent added cushions and then there was a bug with the modal. The agent fixed it and then the user asked for responsiveness. The agent made it responsive. Then the user asked for a favicon and pushed it. The next steps are to keep working on the website."*

*Why this fails:*
- Zero file paths, zero commit hashes, zero architectural specifics.
- Doesn't tell the next agent what CSS variables exist, what branch is checked out, or what remains to be done.
- Reads like a diary rather than an engineering state machine.

### ✅ High-Quality Summary (Accurate, Structured, Actionable)
> ### Project Context
> E-commerce catalog and brand website for Fair Home Decor (`fairhomedecor.com`), a luxury artisanal wooden furniture company based in East Brunswick, NJ.
> 
> ### Requirements
> - Handcrafted catalog of 496+ furniture and decor pieces with 49 embroidered cushions.
> - Luxury editorial aesthetic: warm beige `#FAF8F5`, deep brown `#2B2520`, sage green `#7C8C6E`.
> - Fully responsive across mobile (360px–480px), iPad/tablets (768px–1024px), and desktop.
> - Inquiries and B2B trade applications delivered directly to `info@fairhomedecor.com`.
> 
> ### Architecture & Technology Stack
> - Stack: Semantic HTML5, CSS Custom Properties (`assets/css/style.css`), Vanilla JS (`assets/js/`).
> - Data: Client-side catalog database in `assets/js/products-data.js` (496 products).
> - Deployment: GitHub Pages on repository `yetipixels/fhd.git`, apex domain `fairhomedecor.com` via CNAME.
> 
> ### Important Decisions
> - Confirmed: Display `$XXX` for all unpriced products during soft launch.
> - Confirmed: Removed body `transform` from page transitions to preserve `position: fixed` modal containment.
> - Rejected: Third-party backend server for contact forms (using Formspree/Mailto fallback to minimize dependencies).
> 
> ### Implementation Status
> - Completed: Catalog rendering, quick-view modal, page transitions, responsive layouts, welcome modal, brand favicon suite (`favicon.ico`, `favicon-32x32.png`, `apple-touch-icon.png`).
> - In Progress: Preparing reusable Antigravity workflow skills.
> - Next Steps: Document workflow skills and verify cross-project accessibility.
> 
> ### Instructions for the Next Conversation
> 1. Do NOT modify product catalog data or change the warm brand color tokens.
> 2. Always test responsive layouts down to 360px without horizontal scroll.
> 3. Verify git branches: active working branch is `dev`, production is `main`.

---

## 6. Execution Checklist

When invoking this skill to preserve conversation context:

1. [ ] Read the full transcript or available conversation turns.
2. [ ] Identify the core technical goal and current runtime state.
3. [ ] Separate confirmed facts from proposals and discarded options.
4. [ ] List exact file paths, git branches, and commit hashes.
5. [ ] Scrub any accidental secret tokens or personal credentials.
6. [ ] Populate all 10 standard sections using [`context-summary-template.md`](./templates/context-summary-template.md).
7. [ ] Generate the ready-to-use continuation prompt using [`handoff-prompt-template.md`](./templates/handoff-prompt-template.md).

