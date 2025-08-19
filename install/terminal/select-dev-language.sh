# Install default programming languages
if [[ -v MENYUNTU_FIRST_RUN_LANGUAGES ]]; then
  languages=$MENYUNTU_FIRST_RUN_LANGUAGES
else
  AVAILABLE_LANGUAGES=("Ruby on Rails" "Python" "Java")
  languages=$(gum choose "${AVAILABLE_LANGUAGES[@]}" --no-limit --height 10 --header "Select programming languages")
fi

if [[ -n "$languages" ]]; then
  for language in $languages; do
    case $language in
    Ruby)
      mise use --global ruby@latest
      mise settings add idiomatic_version_file_enable_tools ruby
      mise x ruby -- gem install rails --no-document
      ;;
    Python)
      mise use --global python@latest
      ;;
    Java)
      mise use --global java@latest
      ;;
    esac
  done
fi
