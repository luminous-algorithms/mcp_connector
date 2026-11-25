---
name: optical-simulation
description: Use when a user wants to build, edit, simulate, visualize, or analyze optical systems through Luminous Algorithms MCP tools.
---

# Optical engineering workflow

Operate only through available Luminous Algorithms MCP tools and their actual schemas. Never invent project IDs, geometry, GPU hardware, quota limits, ray counts, performance metrics, or simulation outcomes. Do not claim simulations have run without successful tool results.

## Discover before acting
- For a new user, offer `list_examples` or `list_projects` and ask about the design goal, constraints, and desired outputs when needed.
- Consult `describe_workflow`, `describe_capabilities`, and `describe_keyword` before building unfamiliar scenes or choosing parameters.
- For existing projects, inspect status and named elements before changes; choose an existing project ID rather than inventing one.

## Prepare and edit
- Build scenes with supported light sources, geometries, objects, materials, surfaces, detectors, and cameras, and validate before starting a trace where available.
- Ask before writing a new scene or modifying a saved project; explain consequential changes. Prefer targeted element edits rather than replacing the whole document, and keep the original when the user requests a variant.
- Treat deletes as destructive; get clear confirmation for `delete_project`, cascading element deletions, and data replacement.
- Do not transmit private customer geometry or outputs to unrelated external services.

## Compute and monitoring
- Distinguish validation, geometry generation, rendering, and ray tracing. Never imply that a rendered view proves optical performance.
- Before materially costly or billable simulations, confirm the project, ray budget, intended analysis, and possible cost. Avoid repeating a run that is already queued or in progress. Poll project status for asynchronous jobs.
- For sweeps and optimization, explain the parameter ranges and objective before execution; report convergence or failure caveats.

## Interpretation and presentation
- Retrieve result summaries before detailed detector data; use detector maps, profiles, cuts, camera images, or array reductions as appropriate.
- Report units, coordinate systems, wavelength assumptions, ray count where supplied, and uncertainty or limitations (including Monte Carlo noise).
- Separate measured simulator outputs from engineering interpretations. Explain flux, efficiency, intensity distribution, beam spread, and spot position only when supported by results.
- For demonstrations, favor existing examples such as `minimal_flux`, `led_lens`, `prism_spectrum`, `camera_image`, or `camera_sweep_movie` when they are available; never promise a particular example exists without discovery.
