"""Configuration for the LLM Council."""

import os
from dotenv import load_dotenv

load_dotenv()

# Council members - list of model identifiers
COUNCIL_MODELS = [
    "openai/gpt-5.1",
    "google/gemini-3-pro-preview",
    "anthropic/claude-sonnet-4.5",
    "x-ai/grok-4",
]

# Chairman model - synthesizes final response
CHAIRMAN_MODEL = "google/gemini-3-pro-preview"

# Data directory for conversation storage
DATA_DIR = "data/conversations"
