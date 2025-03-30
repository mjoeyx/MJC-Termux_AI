#!/data/data/com.termux/files/usr/bin/bash

# MJC-Termux AI Assistant Installer
# Dev: Mjoeyx
# GitHub: GitHub.com/mjoeyx

# Colors
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
NC='\033[0m' # No Color

# Check if running in Termux
if [ ! -d "$PREFIX/bin" ]; then
    echo -e "${RED}Error: This script must be run in Termux${NC}"
    exit 1
fi

echo -e "${BLUE}╭──────────────────────────────────────╮${NC}"
echo -e "${BLUE}│${NC}${GREEN}   MJC-Termux AI Assistant Installer  ${BLUE}│${NC}"
echo -e "${BLUE}╰──────────────────────────────────────╯${NC}"

# Update packages
echo -e "${YELLOW}[*] Memperbarui paket...${NC}"
apt update -y && apt upgrade -y

# Install dependencies
echo -e "${YELLOW}[*] Menginstall dependencies...${NC}"
apt install -y curl jq bc

# Download the script directly
echo -e "${YELLOW}[*] Mengunduh MJC-Termux AI Assistant...${NC}"
curl -s -Lo $PREFIX/bin/termux-ai \
    https://github.com/Anon4You/Termux-Ai/raw/main/termux-ai.sh

# Make script executable
echo -e "${YELLOW}[*] Mengatur permissions...${NC}"
chmod +x $PREFIX/bin/termux-ai

# Create config directory
echo -e "${YELLOW}[*] Membuat directory config...${NC}"
mkdir -p ~/.config/termux_assistant

echo -e "${GREEN}[✓] Installasi Selesai!${NC}"
echo -e "\nJalankan AI Assistant dengan: ${BLUE}mjc-termux-ai${NC}"

# First run instructions
echo -e "\n${YELLOW}Konfigurasikan API key Anda:${NC}"
echo -e "1. Run ${BLUE}mjc-termux-ai${NC}"
echo -e "2. Ke Pengaturan (Option 2)"
echo -e "3. Pilih 'API Key' (Option 1)"
echo -e "4. Masukan OpenRouter API key Anda\n"

exit 0
