# Samples

samples.md

*   https://github.com/ArthurClune/claude-md-examples

*   https://www.reddit.com/r/ClaudeAI/comments/1mgfy4t/highly_effective_claudemd_for_large_codebasees/

```markdown
# Project Context

## Architecture
- Monorepo with packages in /packages
- React frontend in /packages/ui
- Node.js API in /packages/api
- Shared types in /packages/types
- PostgreSQL database via Prisma

## Code Standards
- TypeScript strict mode everywhere
- ESLint + Prettier enforced (pre-commit hooks)
- No default exports
- JSDoc on all public APIs
- Tests required for all new code

## Commands
- `npm test` - Run all tests
- `npm run test:watch` - Watch mode
- `npm run lint` - Check linting
- `npm run lint:fix` - Auto-fix lint issues
- `npm run build` - Production build
- `npm run dev` - Start dev servers
- `npm run db:migrate` - Run migrations
- `npm run db:seed` - Seed database

## Patterns

### API Endpoints
Create in packages/api/src/routes/
Use Zod for request/response validation
All endpoints need OpenAPI documentation

### React Components
Create in packages/ui/src/components/
Use React Query for server state
Prefer composition over inheritance

### Database
Prisma schema in packages/api/prisma/
Always create migration for schema changes
Use transactions for multi-table operations

## Important Notes
- NEVER commit .env files
- API runs on :3000, UI on :3001
- Local DB: postgres://localhost:5432/myapp
- Feature flags in packages/api/src/flags.ts

## Recent Decisions
- 2025-12-01: Migrated to React Query v5
- 2025-11-15: Adopted Zod for all validation
- 2025-11-01: Moved to ESM modules

# Summary Instructions
When using compact, focus on:
- Recent code changes
- Test results
- Architecture decisions made this session
```