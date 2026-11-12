# Session Handoff Continuation Prompt Template

Use this template when starting a fresh session, spinning up a subagent, or transitioning work to another developer or conversation. Copy and fill in the bracketed variables.

---

```markdown
<SESSION_CONTINUATION_HANDOFF>

## 1. Project Identity & Runtime Environment
- **Project Name**: [Project Name]
- **Repository Path**: `[Workspace Root Path]`
- **Active Git Branch**: `[e.g. dev]` (latest commit: `[commit-hash]`)
- **Runtime / Dev Server**: `[e.g. Running on port 3000 (PID/Task ID: ...)]`

## 2. Core Goal & Current Status
- **Overarching Goal**: [1-2 sentences on what we are building or achieving]
- **Current Milestone**: [What was just finished and what is active right now]

## 3. Ground Truth Decisions (Do NOT Re-evaluate)
The following decisions have been confirmed and are binding:
- [Confirmed Decision 1: e.g. Using vanilla CSS tokens rather than Tailwind]
- [Confirmed Decision 2: e.g. Catalog data lives in assets/js/products-data.js]
- [Confirmed Decision 3: e.g. Active working branch is 'dev', do not commit directly to 'main']

## 4. Forbidden Approaches (Explicitly Rejected)
Do NOT suggest or implement these previously discarded approaches:
- [Rejected 1 and reason: e.g. Heavy external UI library - rejected to keep load time minimal]
- [Rejected 2 and reason: e.g. Page transition transforms - broke fixed modals]

## 5. Critical Files to Inspect First
Before touching any code, read these exact files:
- `[path/to/key_file_1]` (Role: [Explanation])
- `[path/to/key_file_2]` (Role: [Explanation])
- `[path/to/design_tokens_or_config]` (Role: [Explanation])

## 6. Immediate Next Task
Please perform the following task immediately without changing existing architectural conventions:
1. [Specific, atomic task description]
2. [Target file(s) to edit or test]
3. [Expected outcome and verification criteria]

</SESSION_CONTINUATION_HANDOFF>
```

