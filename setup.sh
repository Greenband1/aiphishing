#!/bin/bash

# Create project directories
mkdir -p app/auth app/analysis app/rate_limiting app/schemas tests alembic

# Create initial files
touch app/__init__.py
touch app/main.py
touch app/config.py
touch app/database.py

# Create auth module files
touch app/auth/__init__.py
touch app/auth/models.py
touch app/auth/routes.py
touch app/auth/dependencies.py

# Create analysis module files
touch app/analysis/__init__.py
touch app/analysis/models.py
touch app/analysis/routes.py
touch app/analysis/email_parser.py
touch app/analysis/header_analyzer.py
touch app/analysis/url_analyzer.py
touch app/analysis/ai_analyzer.py

# Create rate limiting module files
touch app/rate_limiting/__init__.py
touch app/rate_limiting/models.py
touch app/rate_limiting/limiter.py

# Create schema files
touch app/schemas/__init__.py
touch app/schemas/auth.py
touch app/schemas/analysis.py
touch app/schemas/config.py

# Create test files
touch tests/__init__.py
touch tests/test_auth.py
touch tests/test_analysis.py
touch tests/test_rate_limiting.py
touch tests/test_integration.py

# Create configuration files
touch requirements.txt
touch .env
touch .gitignore
touch README.md

# Create initial .env file
cat << EOF > .env
APP_NAME=AI Phishing Analyzer
VERSION=2.1
DEBUG=true
DATABASE_URL=sqlite:///./aiphishing.db
API_KEY_PREFIX=aiphish_
RATE_LIMIT_DEFAULT=10
RATE_LIMIT_BURST_MULTIPLIER=2.0
RATE_LIMIT_BURST_DURATION=30
AI_MODEL=gpt-4o-mini
LOG_LEVEL=DEBUG
EOF

# Create initial .gitignore
cat << EOF > .gitignore
venv/
__pycache__/
*.pyc
*.pyo
*.pyd
.Python
*.db
.env
.DS_Store
.idea/
.vscode/
*.log
EOF
