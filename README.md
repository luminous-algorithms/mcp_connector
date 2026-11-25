# Luminous Algorithms MCP Connector

Design, simulate, visualize, and analyze optical systems with physics-based ray tracing, straight from your AI assistant.

The connector links an MCP-capable client (Claude, ChatGPT/Codex, Cursor, VS Code and others) to the hosted **Luminous Algorithms** MCP server. You describe an optical system in plain language. The assistant builds the scene, runs the ray trace on Luminous Algorithms' GPUs, and shows you detector maps, camera images and performance analyses.

> Requires a Luminous Algorithms account. A free trial is available at [luminous-algo.com](https://luminous-algo.com/mcp/).

## What you can do

- Browse ready-made example systems (`minimal_flux`, `led_lens`, `prism_spectrum`, `camera_image`, …) and start a project from them
- Configure light sources, lenses and other geometry, materials, surfaces, scatter models, detectors and cameras
- Import CAD and mesh parts (STEP, IGES, STL, OBJ, PLY, GLB)
- Run ray traces, parameter sweeps and optimizations
- Plot detector maps, line cuts, far-field rings and camera images, and retrieve the numeric results

## Connect

| | |
|---|---|
| **Server URL** | `https://app.luminous-algo.com/mcp` |
| **Transport** | Streamable HTTP |
| **Auth** | OAuth 2.1 (you sign in with your Luminous Algorithms account on first use) |

### Claude (claude.ai, Claude Desktop)

Luminous Algorithms is listed in the Claude connector directory. Open **Settings → Connectors**, search for *Luminous Algorithms*, and click **Connect**.

### Claude Code

```bash
claude mcp add --transport http luminous-algorithms https://app.luminous-algo.com/mcp
```

Then run `/mcp` in Claude Code to sign in.

### Gemini CLI

```bash
gemini extensions install https://github.com/<owner>/<repo>
```

Then run `/mcp auth luminous-algorithms` in Gemini CLI to sign in. The extension also installs the optical-simulation skill.

### Cursor, VS Code, Windsurf and other MCP clients

Add the server to your client's MCP configuration:

```json
{
  "mcpServers": {
    "luminous-algorithms": {
      "url": "https://app.luminous-algo.com/mcp"
    }
  }
}
```

## Try it

- "What optical simulation examples are available?"
- "Create a project from the `led_lens` example and run it."
- "Plot the detector map of my last run and tell me the collected power."
- "Help me set up a lens and evaluate its optical efficiency."

## Repository contents

This repository holds the plugin package that is submitted to directories:

| Path | Purpose |
|---|---|
| [`plugin.json`](plugin.json) | Plugin manifest ([agent-plugins.org](https://agent-plugins.org) schema), including directory listing metadata and review test cases |
| [`.codex-plugin/plugin.json`](.codex-plugin/plugin.json) | Manifest for the OpenAI Codex plugin format |
| [`mcp.json`](mcp.json), [`.mcp.json`](.mcp.json) | MCP server definition (remote, OAuth) |
| [`gemini-extension.json`](gemini-extension.json) | Gemini CLI extension manifest |
| [`skills/optical-simulation/SKILL.md`](skills/optical-simulation/SKILL.md) | Skill that guides the assistant through a safe optical engineering workflow |
| [`assets/icon.png`](assets/icon.png) | 512×512 icon |
| [`scripts/build.sh`](scripts/build.sh) | Builds the submission zip into `dist/` |

Build a submission package:

```bash
./scripts/build.sh
```

## Support and policies

- Website: <https://luminous-algo.com/mcp/>
- Support: <https://luminous-algo.com/#contactform>
- Privacy policy: <https://app.luminous-algo.com/privacy>
- Terms of service: <https://app.luminous-algo.com/terms>

© Luminous Algorithms GmbH
