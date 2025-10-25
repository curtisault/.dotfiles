# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

export PATH=$HOMEBREW_PREFIX/bin:$PATH
export PATH=$HOMEBREW_PREFIX/sbin:$PATH
export PATH=$HOME/.cargo/bin:$PATH
export PATH="/opt/homebrew/opt/postgresql@17/bin:$PATH"

if [ -f $HOME/.alias ]; then
  source $HOME/.alias
else
  print "404: ${$HOME}/.alias not found."
fi


# Exports
export EDITOR=/opt/homebrew/bin/nvim
export ZSH="$HOME/.oh-my-zsh"
export AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID
export AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY
export WASABI_ACCESS_KEY=$WASABI_ACCESS_KEY
export WASABI_SECRET_KEY=$WASABI_SECRET_KEY
export MICROSOFT_CLIENT_ID=$MICROSOFT_CLIENT_ID
export MICROSOFT_CLIENT_SECRET=$MICROSOFT_CLIENT_SECRET
export MICROSOFT_TENANT_ID=$MICROSOFT_TENANT_ID
export UKG_LOGIN_USERNAME="APIUSER"
export UKG_LOGIN_PASSWORD=$UKG_LOGIN_PASSWORD
export UKG_LOGIN_COMPANY_ID=$UKG_LOGIN_SANDBOX_COMPANY_ID
export UKG_API_KEY=$UKG_API_SANDBOX_KEY
export SENDGRID_API_KEY=$SENDGRID_API_KEY
export GOOGLE_MAPS_API_KEY=$GOOGLE_MAPS_API_KEY
export SAMSARA_API_TOKEN=$SAMSARA_API_TOKEN
export FLEETIO_API_TOKEN=$FLEETIO_API_TOKEN
export FLEETIO_API_ACCOUNT=$FLEETIO_API_ACCOUNT
export ANTHROPIC_API_KEY=$ANTHROPIC_API_KEY
export SOPS_AGE_KEY_FILE=~/.config/sops/age/keys.txt

eval "$(atuin init zsh)"
eval "$(~/.local/bin/mise activate zsh)"
eval "$(starship init zsh)"
