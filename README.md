# dot_files

Add this to .bashrc or .bash_profile copy output stripping last new line
```
alias clip="perl -pe 'chomp if eof' | pbcopy"
```
