#!/usr/bin/env sh

# STUB: This is a stub for demonstration purposes.

# Attempt to set JAVA_HOME if it's not already set.
if [ -z "$JAVA_HOME" ] ; then
    JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:/bin/java::")
fi

# Run the gradle wrapper passing along any command line arguments.
exec "$JAVA_HOME/bin/java" org.gradle.wrapper.GradleWrapperMain "$@"
