‌ olor_prompt="yes"‌ ‌
parse_git_branch()‌ { ‌ ‌ ‌
git‌ b
‌ ranch‌ 2
‌ >‌ / ‌ dev/null‌ | ‌ ‌ s
‌ ed‌ - ‌ e‌ ' ‌ /^[^*]/d'‌ - ‌ e‌ ' ‌ s/*‌ \ ‌ (.*\)/(\1)/'‌ ‌
}‌ ‌
if‌ [ ‌ ‌ " ‌ $color_prompt"‌ =
‌ ‌ y
‌ es‌ ] ‌ ;‌ t ‌ hen‌ ‌
PS1='\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[01;31m\]‌‌$(parse_git_branch)\[\033[00m\]\$‌ ' ‌ ‌ ‌
else‌ ‌
PS1='\u@\h:\W‌ $
‌ (parse_git_branch)\$‌ ' ‌ ‌ ‌
fi‌ ‌
unset‌ c
‌ olor_prompt‌ f ‌ orce_color_prompt‌ ‌
