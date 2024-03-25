if [[ -n "$WSL_DISTRO_NAME" ]]; then

  # Maestro and Android setup for WSL only
  PATH+=:$HOME/.maestro/bin

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

  # Use JDK 17 in case there are multiple JDK installations
  export JAVA_HOME=$(/usr/libexec/java_home -v 17.0.10)

  # Homebrew
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

export PATH

if [ -f ~/.private_zprofile ]; then
  source ~/.private_zprofile
fi
