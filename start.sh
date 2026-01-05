#!/usr/bin/env bash

# LLM Council - Start script

## Function to detect OS and shell
detect_env() {
    case "$OSTYPE" in
        linux*)   OS="Linux";;
        darwin*)  OS="Mac";;
        msys*|cygwin*|win32*) OS="Windows";;
        *)        OS="Unknown";;
    esac
}

## Function to start a process cross-platform
start_process() {
    local CMD="$1"
    if [ "$OS" = "Windows" ]; then
        # Use start /B in Git Bash, or pwsh/PowerShell if available
        if command -v pwsh >/dev/null 2>&1; then
            pwsh -Command "Start-Process -NoNewWindow -FilePath $CMD"
        else
            # Fallback for Git Bash
            eval "$CMD &"
        fi
    else
        eval "$CMD &"
    fi
    echo $!
}

detect_env
echo "Detected OS: $OS"
echo ""
echo "Starting LLM Council..."
echo ""

# Start backend
echo "Starting backend on http://localhost:8001..."
BACKEND_CMD="uv run python -m backend.main"
BACKEND_PID=$(start_process "$BACKEND_CMD")

# Wait a bit for backend to start
sleep 2

echo ""
echo "✓ LLM Council is running!"
echo "  Backend:  http://localhost:8001"
echo ""
echo "Press Ctrl+C to stop both servers"

# Wait for Ctrl+C
trap "echo 'Stopping servers...'; kill $BACKEND_PID 2>/dev/null; exit" SIGINT SIGTERM
wait
