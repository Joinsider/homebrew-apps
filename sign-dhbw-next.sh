#!/bin/bash
# sign-dhbw-next.sh - Self-sign DHBW Next app (alternative method)

set -e

CERT_NAME="DHBW Local Certificate"
APP_PATH="/Applications/dhbw-next.app"

echo "Creating local code signing certificate..."

# Check if certificate already exists
if security find-certificate -c "$CERT_NAME" ~/Library/Keychains/login.keychain-db &>/dev/null; then
    echo "Certificate '$CERT_NAME' already exists in keychain."
    read -p "Do you want to use it? (y/n): " use_existing
    if [[ "$use_existing" != "y" ]]; then
        echo "Please delete the existing certificate first, then run this script again."
        exit 1
    fi
else
    echo ""
    echo "We need to create a code signing certificate."
    echo "This will open Keychain Access. Please follow these steps:"
    echo ""
    echo "1. Keychain Access → Certificate Assistant → Create a Certificate"
    echo "2. Name: $CERT_NAME"
    echo "3. Identity Type: Self-Signed Root"
    echo "4. Certificate Type: Code Signing"
    echo "5. Click 'Create' then 'Continue' then 'Done'"
    echo ""
    read -p "Press Enter to open Keychain Access..."
    
    open -a "Keychain Access"
    
    echo ""
    read -p "Press Enter after you've created the certificate..."
    
    # Verify certificate was created
    if ! security find-certificate -c "$CERT_NAME" ~/Library/Keychains/login.keychain-db &>/dev/null; then
        echo "Error: Certificate not found. Please make sure you created it with the exact name: $CERT_NAME"
        exit 1
    fi
fi

echo ""
echo "Signing DHBW Next app..."
codesign --force --sign "$CERT_NAME" --deep "$APP_PATH"

echo ""
echo "Verifying signature..."
if codesign -vv "$APP_PATH" 2>&1; then
    echo ""
    echo "✓ Successfully signed! DHBW Next is ready to use."
else
    echo ""
    echo "⚠ Signing completed but verification had warnings."
fi

# Ask user if they want to remove quarantine attributes
echo ""
read -p "Do you want to remove Gatekeeper quarantine attributes? (y/n): " remove_quarantine
if [[ "$remove_quarantine" == "y" ]]; then
    echo ""
    echo "Removing quarantine attributes..."
    xattr -cr "$APP_PATH"
    echo "✓ Quarantine attributes removed."
    echo ""
    echo "Note: This bypasses macOS Gatekeeper for this app."
fi

echo ""
echo "The app will now maintain keychain access across updates"
echo "as long as you sign each version with '$CERT_NAME'"
