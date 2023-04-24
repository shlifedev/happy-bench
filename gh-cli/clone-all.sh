gh repo list shlifedev --limit 999 --json name --jq ".[]|.name" \ 
  | xargs -L1 gh repo clone
