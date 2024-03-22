if [[ -n "$WSL_DISTRO_NAME" ]]; then

  # Maestro and Android setup for WSL only
  PATH+=:$HOME/.maestro/bin

  export ANDROID_HOME=$HOME/Android
  PATH+=:$ANDROID_HOME/cmdline-tools/bin
  PATH+=:$ANDROID_HOME/platform-tools
  PATH+=:$ANDROID_HOME/emulator
  export PATH
fi

