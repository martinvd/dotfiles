symclaudemd() {
  # Check if AGENTS.md exists in the current directory
  if [[ -e "AGENTS.md" ]]; then
    # Create the symlink CLAUDE.MD pointing to AGENTS.md
    ln -sf "AGENTS.md" "CLAUDE.MD"
    echo "Symlink CLAUDE.MD created, pointing to AGENTS.md."
  else
    # Print an error message if AGENTS.md does not exist
    echo "Error: AGENTS.md does not exist in the current directory."
  fi
}

cc() {
  CLAUDE_CODE_NO_FLICKER=1 claude --model eu.anthropic.claude-opus-4-8 --dangerously-skip-permissions
}
ccc='claude --continue'
ccr='claude --resume'

# update global stuff
updg() {
  brew upgrade
  bun update -g
  skills update -g
}
