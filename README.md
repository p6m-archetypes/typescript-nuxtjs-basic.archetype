# TypeScript Nuxt.js Application Archetype

![Latest Release](https://img.shields.io/github/v/release/p6m-archetypes/typescript-nuxtjs-basic.archetype?style=flat-square&label=Latest%20Release&color=blue)

Modern Nuxt.js application archetype with TypeScript, Vue 3 Composition API, server-side rendering, and Kubernetes deployment configuration.

## 🎯 What This Generates

This archetype creates a Nuxt.js application with:

- **⚡ Nuxt 3**: Vue.js framework with server-side rendering and auto-imports
- **🎨 TypeScript**: Full type safety across the application
- **🚀 Rendering Strategies**: SSR, SSG, and hybrid rendering for optimal performance
- **🐳 Container-Ready**: Docker and Kubernetes deployment manifests
- **🧪 Testing Setup**: Vitest and Vue Test Utils configured
- **🎯 ESLint & Prettier**: Code quality and formatting tools
- **📦 Modern Tooling**: Vite for lightning-fast builds and hot module replacement

## 📦 Generated Project Structure

```
my-customer-frontend/
├── pages/                  # File-based routing (auto-generated routes)
├── components/             # Vue components (auto-imported)
├── composables/            # Reusable composition functions
├── layouts/                # Application layouts
├── server/                 # Server API routes and middleware
├── public/                 # Static assets
├── assets/                 # Build-processed assets (CSS, images)
├── k8s/                    # Kubernetes manifests
├── Dockerfile
├── nuxt.config.ts
└── package.json
```

## 🚀 Quick Start

### Prerequisites

- [Archetect](https://archetect.github.io/) CLI tool
- Node.js 18+ and npm
- Docker (optional, for containerized deployment)

### Generate a New Application

```bash
archetect render https://github.com/p6m-archetypes/typescript-nuxtjs-basic.archetype.git#v1

# Example prompt answers:
# organization-name: acme-inc
# project-title: Customer Portal
# project-prefix: customer
# Result: customer-frontend/
```

### Development Workflow

```bash
cd customer-frontend

# 1. Install dependencies
npm install

# 2. Run development server
npm run dev

# 3. Run tests
npm test

# 4. Build for production
npm run build

# 5. Preview production build
npm run preview

# 6. Access application
# - Development: http://localhost:3000
```

## 📋 Configuration Prompts

| Property | Description | Example |
|----------|-------------|---------|
| `organization-name` | GitHub organization or username | acme-inc |
| `project-title` | Display name for the application | Customer Portal |
| `project-prefix` | Project identifier (suffix '-frontend' added automatically) | customer |

## ✨ Key Features

### 🏛️ Nuxt.js Features

- **File-Based Routing**: Automatic route generation from pages/ directory
- **Auto Imports**: Components, composables, and utilities imported automatically
- **Server API Routes**: Built-in API endpoints in server/ directory
- **Layouts System**: Reusable layout components for consistent UI
- **Server-Side Rendering**: Render Vue components on the server for SEO
- **Data Fetching**: Built-in useFetch and useAsyncData composables

### 🎨 Developer Experience

- **TypeScript**: Full type safety with Vue 3 and Nuxt 3
- **Hot Module Replacement**: Instant updates during development with Vite
- **ESLint**: Configured with Nuxt and Vue recommended rules
- **Prettier**: Code formatting with pre-commit hooks
- **Auto Imports**: No import statements needed for components and composables
- **DevTools**: Nuxt DevTools for debugging and inspecting application state

### 🧪 Testing

- **Vitest**: Fast unit testing framework built on Vite
- **Vue Test Utils**: Official testing utilities for Vue components
- **Test Coverage**: Coverage reporting configured
- **E2E Ready**: Can integrate Playwright or Cypress for end-to-end tests

### 🚢 Deployment

- **Docker**: Multi-stage Dockerfile optimized for production
- **Kubernetes**: Deployment, Service, and Ingress manifests
- **Universal Rendering**: SSR with client-side hydration
- **Static Generation**: Pre-render pages at build time
- **Hybrid Rendering**: Mix SSR and static pages per route

## 🎯 Use Cases

This archetype is ideal for:

1. **Customer-Facing Applications**: Public websites requiring SEO optimization with Vue.js
2. **Content Websites**: Blogs, documentation sites, and marketing pages
3. **E-commerce Platforms**: Product catalogs with server-side rendering
4. **Dashboard Applications**: Internal tools with Vue's progressive framework
5. **Universal Applications**: Apps requiring both SSR and client-side interactivity

## 📚 What's Inside

### Core Configuration

#### Nuxt Configuration
Pre-configured `nuxt.config.ts` with TypeScript support, module imports, and build optimization for production deployment.

#### TypeScript Configuration
Strict TypeScript setup with Nuxt's auto-generated types and Vue 3 Composition API support.

#### Styling
CSS with optional support for Tailwind CSS, Sass, or PostCSS. Scoped styles in Vue components supported out of the box.

### Development Tools

- **ESLint**: Nuxt and Vue rules for code quality
- **Prettier**: Consistent code formatting across the project
- **Nuxt DevTools**: Interactive debugging and performance profiling
- **VS Code Settings**: Recommended extensions and Volar configuration

## 🔧 Nuxt.js-Specific Features

### Rendering Strategies

- **SSR (Server-Side Rendering)**: Universal rendering with SEO benefits
- **SSG (Static Site Generation)**: Pre-render pages at build time
- **Hybrid Rendering**: Configure rendering per route (SSR, SSG, or SPA)
- **Client-Only Rendering**: SPA mode for specific pages or components

### Performance Optimization

- **Route-Level Code Splitting**: Automatic splitting per page
- **Component Lazy Loading**: Load components on demand with defineAsyncComponent
- **Image Optimization**: Nuxt Image module for responsive images
- **Payload Extraction**: Optimize data transfer between server and client

### Server API Routes

Built-in server endpoints in `server/` directory for:
- API routes with file-based routing
- Server middleware for authentication
- Database queries and backend logic
- Third-party API integration

### Vue 3 Composition API

- **Script Setup**: Simplified component syntax with `<script setup>`
- **Composables**: Reusable stateful logic with auto-imports
- **Reactivity**: ref, reactive, computed for reactive state management
- **Lifecycle Hooks**: onMounted, onUnmounted, and more

## 📋 Validation

Build and test the generated application:

```bash
npm run build && npm test
```

## 🔗 Related Archetypes

- **[TypeScript Next.js](../typescript-nextjs-basic.archetype)** - React alternative with SSR
- **[TypeScript Vue.js](../typescript-vuejs-basic.archetype)** - Client-side Vue.js without SSR
- **[TypeScript Angular](../typescript-angular-basic.archetype)** - Full-featured Angular framework
- **[TypeScript Svelte](../typescript-svelte-basic.archetype)** - Compiled framework alternative

## 🤝 Contributing

For issues or enhancements, create detailed bug reports or feature requests in the repository.

## 📄 License

MIT License

---

**Ready to build modern web applications with Nuxt.js?** Generate your first app and start building! 🚀
