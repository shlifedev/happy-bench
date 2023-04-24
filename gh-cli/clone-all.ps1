gh repo list shlifedev --limit 999 --json name --jq ".[]|.name" |
   ForEach-Object { gh repo clone $_ }
