# Project Context
<!-- Brief explanation of the project, its business or technical objective, repository name, active branch, and working environment. -->
- **Project Name**: [Project Name]
- **Repository / Workspace**: `[e.g. org/repo or /path/to/project]`
- **Active Branch**: `[e.g. dev or main]`
- **Objective**: [1-3 sentences describing the high-level goal and purpose of the project.]

---

# Requirements
<!-- Confirmed functional, visual, and non-functional requirements requested and approved by the user. Group by category if large. -->
### Functional Requirements
- [Requirement 1: e.g. Catalog browse with multi-filter faceted search]
- [Requirement 2: e.g. Contact form with email notification]

### Non-Functional & Visual Requirements
- [Requirement 3: e.g. Mobile-first responsive design down to 360px viewport width]
- [Requirement 4: e.g. WCAG AA compliance with minimum 4.5:1 text contrast ratio]

---

# Architecture & Technology Stack
<!-- Specific technical components, languages, libraries, frameworks, runtime versions, databases, and deployment mechanisms. -->
- **Frontend / Client**: `[e.g. React 18, Vite, Tailwind CSS, or Vanilla HTML5/CSS3/ES6+]`
- **Backend / APIs**: `[e.g. Node.js Express, FastAPI, or Serverless functions]`
- **State & Data Store**: `[e.g. PostgreSQL, Redis, or Client-side JSON store]`
- **Hosting & CI/CD**: `[e.g. GitHub Pages with custom domain, Vercel, or Cloudflare]`
- **Key Dependencies**:
  - `[package-name]`: [purpose]
  - `[package-name]`: [purpose]

---

# Important Decisions
<!-- Explicitly categorize architectural, design, and business decisions into the 4 standard tiers. -->
### Confirmed Decisions (Binding)
- **[Decision Title]**: [What was chosen, when, and the rationale behind it.]
- **[Decision Title]**: [What was chosen, when, and the rationale behind it.]

### Proposed Ideas (Tentative)
- **[Idea Title]**: [Idea explored or recommended by AI/team, but awaiting user confirmation.]

### Rejected Approaches (Explicitly Discarded)
- **[Rejected Option]**: [Why it was declined or abandoned, to prevent re-suggesting it in future turns.]

### Pending Decisions (Awaiting Clarification/Dependencies)
- **[Open Question]**: [Item currently blocking or needing user input before proceeding.]

---

# Implementation Status
<!-- Clear snapshot of current progress. Do not claim done unless verified by tests, code, or user confirmation. -->
### Completed
- [x] [Completed feature / task with reference to commit or file]
- [x] [Completed feature / task with reference to commit or file]

### In Progress
- [/] [Task currently being worked on, what is working so far]

### Not Yet Implemented
- [ ] [Planned task or backlog item]
- [ ] [Planned task or backlog item]

### Needs Verification
- [ ] [Item implemented but pending manual review, staging deployment, or automated test coverage]

---

# Files & Code References
<!-- Comprehensive list of critical files, their locations, and responsibilities. -->
| File Path | Description / Responsibility |
| :--- | :--- |
| `[path/to/main.ts]` | [Application entry point, initializes runtime] |
| `[path/to/styles.css]` | [Global design tokens, root variables, typography] |
| `[path/to/component.tsx]` | [Core business UI component] |
| `[path/to/config.json]` | [Project environment configuration] |

---

# Issues & Troubleshooting
<!-- Problems encountered during development, root cause analysis, attempted fixes, and remaining bugs. -->
### Resolved Issues
- **Issue**: [Description of bug or build error]
  - **Root Cause**: [What caused it]
  - **Resolution**: [How it was fixed, file modified]

### Active / Open Issues
- **Issue**: [Unresolved bug or blocker]
  - **Symptom**: [Error message or unexpected behavior]
  - **Next Investigation Step**: [What to test next]

---

# User Preferences & Constraints
<!-- Working preferences, architectural mandates, styling rules, and prohibited practices established by user. -->
- **Code Style & Tooling**: `[e.g. Strict TypeScript, no any, semicolons required, ESLint standard]`
- **Design & UI**: `[e.g. Warm neutral palette, no jarring saturated colors, 8px grid system]`
- **Workflow & Git**: `[e.g. Always develop on 'dev' branch, never commit secrets, do not run global pip]`
- **Forbidden Actions**: `[e.g. Do not rewrite existing CSS resets, do not install third-party UI libraries]`

---

# Next Steps
<!-- Prioritized, actionable numbered sequence of immediate next tasks. -->
1. **[Immediate Action 1]**: [Specific task with target file/component]
2. **[Immediate Action 2]**: [Specific task with target file/component]
3. **[Follow-up Action 3]**: [Verification, testing, or deployment step]

---

# Instructions for the Next Conversation
<!-- Concise copy-paste prompt that primes the next AI agent or team member with essential orientation. -->
> **Role & Context**: You are continuing work on **[Project Name]**. The project is currently on branch `[branch-name]`.
>
> **What to Understand**:
> - Read the Project Context, Requirements, and Important Decisions above.
> - Key files are located at `[key file paths]`.
>
> **What NOT to Change**:
> - Do not alter existing established decisions: [list 2-3 critical constants].
> - Do not reintroduce rejected approaches: [list rejected items].
>
> **Your Immediate Priority**:
> - Begin by addressing Step 1 of Next Steps: [describe task].

