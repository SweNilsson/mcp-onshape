# Changelog

All notable changes to `@casys/mcp-onshape` will be documented in this file.

## [0.1.0] - 2026-07-30

Initial public release.

### Added

- **100 MCP tools across 14 categories** — documents (12), assemblies (14), part studios (14), exports/imports (10), versions & workspaces (8), parts (7), configurations (6), releases & revisions (6), metadata (5), drawings (5), comments (4), users & teams (3), thumbnails (3), webhooks (3).
- **Zero-dependency Onshape REST client** — supports both Basic Auth (development) and HMAC-SHA256 request signing (production), against the Onshape `v10` API.
- **Four MCP App viewers** — `bom-viewer`, `3d-viewer` (three.js), `doclist-viewer`, and `mass-viewer`, served as `ui://mcp-onshape/*` resources.
- **stdio and HTTP transports** — stdio for Claude Desktop and PML, HTTP (default port 3013) for remote hosts, with `--categories` filtering to load a tool subset.
- **Fail-fast error contract** — every HTTP failure raises `OnshapeAPIError` carrying status and response body; no silent fallbacks.

### Notes

- Onshape's free personal plan forces all documents to be public, forbids commercial use, and its API terms prohibit automated data extraction from public documents. A paid plan is required for any real use of this server. See [Environment Variables](README.md#environment-variables) in the README.
