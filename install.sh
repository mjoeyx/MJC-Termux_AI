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
    echo -e "${RED}Error: Script harus dijalanlan di Termux${NC}"
    exit 1
fi

echo -e "${BLUE}╭──────────────────────────────────────╮${NC}"
echo -e "${BLUE}│${NC}${GREEN}   MJC-Termux AI Assistant Installer ${BLUE}│${NC}"
echo -e "${BLUE}╰──────────────────────────────────────╯${NC}"

# Update packages
echo -e "${YELLOW}[*] Perbarui beberapa Paket...${NC}"
apt update -y && apt upgrade -y

# Install dependencies
echo -e "${YELLOW}[*] Menginstall dependencies...${NC}"
apt install -y curl jq bc

# Download the script directly
echo -e "${YELLOW}[*] Mengunduh MJC-Termux AI Assistant...${NC}"
curl -s -Lo $PREFIX/bin/mjc-termux-ai \
    https://github.com/mjoeyx/MJC-Termux_AI/raw/main/mjc-termux-ai.sh

# Make script executable
echo -e "${YELLOW}[*] Mengatur permissions...${NC}"
chmod +x $PREFIX/bin/mjc-termux-ai

# Create config directory
echo -e "${YELLOW}[*] Membuat config directory...${NC}"
mkdir -p ~/.config/termux_assistant

echo -e "${GREEN}[✓] Installation complete!${NC}"
echo -e "\nRun the AI Assistant with: ${BLUE}mjc-termux-ai${NC}"

# First run instructions
echo -e "\n${YELLOW} Konfigurasilan API key Anda:${NC}"
echo -e "1. Run ${BLUE}mjc-termux-ai${NC}"
echo -e "2. Pergi ke Pengaturan (Option 2)"
echo -e "3. Pilih 'API Key' (Option 1)"
echo -e "4. Masukan OpenRouter API key Anda\n"

exit 0
