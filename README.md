# s-tools

## 現行（2025年2月現在）の構成

1. Cloudflare
    - DNS: Nameserver
    - WAF + CDN: security and CDN cache
    - Pages: [ポートフォリオ (Astro)](https://s-hirano.com)と[storybook](https://storybook.s-hirano.com)のホスト用
    - R2: Object storage for images
2. Vercel cloud
    - [個人開発ウェブサイト(Next.js)](https://private.s-hirano.com)ホスト用
    - Vercel analytics
    - Vercel Speed insights
3. Prisma
    - Accelerate: Global connection pool and caching
    - PostgreSQL: DBaaS
    - Studio: Admin DB management tool
4. Auth0: Auth and user management
5. Sentry: Error detection
6. Oname.com: Domain管理
7. Google
    - Google analytics
    - Google search console
8. GitHub
    - Code management
    - CI
    - CD
9. Docker
    - Docker Hub: Container images registry for on-premise servers
10. ConoHa
    - VPS: on-premise like server

## オンプレ版利用技術スタック

1. Grafana
2. nginx
3. Node exporter
4. Portainer
5. Prometheus
6. [s-private](https://github.com/s-hirano-ist/s-private)
    1. Next.js
    2. PostgreSQL
    3. MinIO
