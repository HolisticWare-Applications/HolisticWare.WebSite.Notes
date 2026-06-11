# Startup

startup.md

*   do not use `[ModuleInitializer]`

    ```csharp
        internal static void ModuleInitializer()
        {
            // This forces the frozen dictionaries to be initialized at module load time (via the static type constructor).
            // Otherwise, if we would just rely on static initialization, the first access to an extension property or method would trigger the frozen dictionaries to get initialized.
            // Initializing a frozen dictionary is a very expensive operation, but comes with the benefit of accessing an initialized frozen dictionary being very fast!
            // That's why we want to move initialization time into module load time, so we don't risk the first access to, for example, ScriptExtensions.Code to be very slow.
            // With that, accessing ScriptExtensions.Code, ScriptExtensions.Name, or ScriptExtensions.TryFromCode, etc., will be fast at all times, even the first time,
            // thanks to the frozen dictionaries being already initialized and frozen dictionaries being very optimized for fast access.

            RuntimeHelpers.RunClassConstructor(typeof(ScriptExtensions).TypeHandle);
        }
    ```