export PATH=$HOME/bin:/usr/local/bin:/usr/bin:$HOME/.local/bin:$PATH

if [[ $(uname) == Darwin ]] && [[ $(uname -m) == arm64 ]]; then
  # Make sure to use homebrew's ruby because of issues with system ruby on Apple silicon (according to kdoctor)
  export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
fi

PATH+=:$HOME/.maestro/bin

if [[ -n "$WSL_DISTRO_NAME" ]]; then

  export ANDROID_HOME=$HOME/Android
  PATH+=:$ANDROID_HOME/cmdline-tools/bin
  PATH+=:$ANDROID_HOME/platform-tools
  PATH+=:$ANDROID_HOME/emulator
fi

if [[ $(uname) == Darwin ]]; then

  export ANDROID_HOME=~/Library/Android/sdk
  PATH+=:$ANDROID_HOME/tools/bin
  PATH+=:$ANDROID_HOME/platform-tools
  PATH+=:$ANDROID_HOME/emulator

  # Specify JDK in case there are multiple JDK installations
  export JAVA_HOME=$(/usr/libexec/java_home -v 19)

  # Homebrew
  eval "$(/opt/homebrew/bin/brew shellenv)"

  export PATH="$PATH:/Applications/Conveyor.app/Contents/MacOS"

  # pip packages
  # PATH+=:$(python3 -m site --user-base)/bin # for some reason, this gives Python/3.12
  PATH+=:$HOME/Library/Python/3.9
fi

export PATH


