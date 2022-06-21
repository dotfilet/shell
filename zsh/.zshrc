setopt nullglob
ZSH_EARLY_MODULES=(~/.zshrc.d/first/*.sh)
ZSH_MODULES=(~/.zshrc.d/*.sh)
ZSH_LATE_MODULES=(~/.zshrc.d/last/*.sh)
unsetopt nullglob

for module in "${ZSH_EARLY_MODULES[@]}"; do
  source "${module}"
done
for module in "${ZSH_MODULES[@]}"; do
  source "${module}"
done
for module in "${ZSH_LATE_MODULES[@]}"; do
  source "${module}"
done
