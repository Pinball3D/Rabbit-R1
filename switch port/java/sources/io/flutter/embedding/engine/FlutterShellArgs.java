package io.flutter.embedding.engine;

import android.content.Intent;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* loaded from: classes3.dex */
public class FlutterShellArgs {
    public static final String ARG_CACHE_SKSL = "--cache-sksl";
    public static final String ARG_DART_FLAGS = "--dart-flags";
    public static final String ARG_DISABLE_SERVICE_AUTH_CODES = "--disable-service-auth-codes";
    public static final String ARG_DUMP_SHADER_SKP_ON_SHADER_COMPILATION = "--dump-skp-on-shader-compilation";
    public static final String ARG_ENABLE_DART_PROFILING = "--enable-dart-profiling";
    public static final String ARG_ENABLE_IMPELLER = "--enable-impeller";
    public static final String ARG_ENABLE_SOFTWARE_RENDERING = "--enable-software-rendering";
    public static final String ARG_ENABLE_VULKAN_VALIDATION = "--enable-vulkan-validation";
    public static final String ARG_ENDLESS_TRACE_BUFFER = "--endless-trace-buffer";
    public static final String ARG_KEY_CACHE_SKSL = "cache-sksl";
    public static final String ARG_KEY_DART_FLAGS = "dart-flags";
    public static final String ARG_KEY_DISABLE_SERVICE_AUTH_CODES = "disable-service-auth-codes";
    public static final String ARG_KEY_DUMP_SHADER_SKP_ON_SHADER_COMPILATION = "dump-skp-on-shader-compilation";
    public static final String ARG_KEY_ENABLE_DART_PROFILING = "enable-dart-profiling";
    public static final String ARG_KEY_ENABLE_IMPELLER = "enable-impeller";
    public static final String ARG_KEY_ENABLE_SOFTWARE_RENDERING = "enable-software-rendering";
    public static final String ARG_KEY_ENABLE_VULKAN_VALIDATION = "enable-vulkan-validation";
    public static final String ARG_KEY_ENDLESS_TRACE_BUFFER = "endless-trace-buffer";
    public static final String ARG_KEY_MSAA_SAMPLES = "msaa-samples";
    public static final String ARG_KEY_OBSERVATORY_PORT = "observatory-port";
    public static final String ARG_KEY_PURGE_PERSISTENT_CACHE = "purge-persistent-cache";
    public static final String ARG_KEY_SKIA_DETERMINISTIC_RENDERING = "skia-deterministic-rendering";
    public static final String ARG_KEY_START_PAUSED = "start-paused";
    public static final String ARG_KEY_TRACE_SKIA = "trace-skia";
    public static final String ARG_KEY_TRACE_SKIA_ALLOWLIST = "trace-skia-allowlist";
    public static final String ARG_KEY_TRACE_STARTUP = "trace-startup";
    public static final String ARG_KEY_TRACE_SYSTRACE = "trace-systrace";
    public static final String ARG_KEY_TRACE_TO_FILE = "trace-to-file";
    public static final String ARG_KEY_USE_TEST_FONTS = "use-test-fonts";
    public static final String ARG_KEY_VERBOSE_LOGGING = "verbose-logging";
    public static final String ARG_KEY_VM_SERVICE_PORT = "vm-service-port";
    public static final String ARG_MSAA_SAMPLES = "--msaa-samples";
    public static final String ARG_PURGE_PERSISTENT_CACHE = "--purge-persistent-cache";
    public static final String ARG_SKIA_DETERMINISTIC_RENDERING = "--skia-deterministic-rendering";
    public static final String ARG_START_PAUSED = "--start-paused";
    public static final String ARG_TRACE_SKIA = "--trace-skia";
    public static final String ARG_TRACE_SKIA_ALLOWLIST = "--trace-skia-allowlist=";
    public static final String ARG_TRACE_STARTUP = "--trace-startup";
    public static final String ARG_TRACE_SYSTRACE = "--trace-systrace";
    public static final String ARG_TRACE_TO_FILE = "--trace-to-file";
    public static final String ARG_USE_TEST_FONTS = "--use-test-fonts";
    public static final String ARG_VERBOSE_LOGGING = "--verbose-logging";
    public static final String ARG_VM_SERVICE_PORT = "--vm-service-port=";
    private Set<String> args;

    public static FlutterShellArgs fromIntent(Intent intent) {
        ArrayList arrayList = new ArrayList();
        if (intent.getBooleanExtra(ARG_KEY_TRACE_STARTUP, false)) {
            arrayList.add(ARG_TRACE_STARTUP);
        }
        if (intent.getBooleanExtra(ARG_KEY_START_PAUSED, false)) {
            arrayList.add(ARG_START_PAUSED);
        }
        int intExtra = intent.getIntExtra(ARG_KEY_VM_SERVICE_PORT, 0);
        if (intExtra > 0) {
            arrayList.add(ARG_VM_SERVICE_PORT + Integer.toString(intExtra));
        } else {
            int intExtra2 = intent.getIntExtra(ARG_KEY_OBSERVATORY_PORT, 0);
            if (intExtra2 > 0) {
                arrayList.add(ARG_VM_SERVICE_PORT + Integer.toString(intExtra2));
            }
        }
        if (intent.getBooleanExtra(ARG_KEY_DISABLE_SERVICE_AUTH_CODES, false)) {
            arrayList.add(ARG_DISABLE_SERVICE_AUTH_CODES);
        }
        if (intent.getBooleanExtra(ARG_KEY_ENDLESS_TRACE_BUFFER, false)) {
            arrayList.add(ARG_ENDLESS_TRACE_BUFFER);
        }
        if (intent.getBooleanExtra(ARG_KEY_USE_TEST_FONTS, false)) {
            arrayList.add(ARG_USE_TEST_FONTS);
        }
        if (intent.getBooleanExtra(ARG_KEY_ENABLE_DART_PROFILING, false)) {
            arrayList.add(ARG_ENABLE_DART_PROFILING);
        }
        if (intent.getBooleanExtra(ARG_KEY_ENABLE_SOFTWARE_RENDERING, false)) {
            arrayList.add(ARG_ENABLE_SOFTWARE_RENDERING);
        }
        if (intent.getBooleanExtra(ARG_KEY_SKIA_DETERMINISTIC_RENDERING, false)) {
            arrayList.add(ARG_SKIA_DETERMINISTIC_RENDERING);
        }
        if (intent.getBooleanExtra(ARG_KEY_TRACE_SKIA, false)) {
            arrayList.add(ARG_TRACE_SKIA);
        }
        String stringExtra = intent.getStringExtra(ARG_KEY_TRACE_SKIA_ALLOWLIST);
        if (stringExtra != null) {
            arrayList.add(ARG_TRACE_SKIA_ALLOWLIST + stringExtra);
        }
        if (intent.getBooleanExtra(ARG_KEY_TRACE_SYSTRACE, false)) {
            arrayList.add(ARG_TRACE_SYSTRACE);
        }
        if (intent.hasExtra(ARG_KEY_TRACE_TO_FILE)) {
            arrayList.add("--trace-to-file=" + intent.getStringExtra(ARG_KEY_TRACE_TO_FILE));
        }
        if (intent.getBooleanExtra(ARG_KEY_ENABLE_IMPELLER, false)) {
            arrayList.add(ARG_ENABLE_IMPELLER);
        }
        if (intent.getBooleanExtra(ARG_KEY_ENABLE_VULKAN_VALIDATION, false)) {
            arrayList.add(ARG_ENABLE_VULKAN_VALIDATION);
        }
        if (intent.getBooleanExtra(ARG_KEY_DUMP_SHADER_SKP_ON_SHADER_COMPILATION, false)) {
            arrayList.add(ARG_DUMP_SHADER_SKP_ON_SHADER_COMPILATION);
        }
        if (intent.getBooleanExtra(ARG_KEY_CACHE_SKSL, false)) {
            arrayList.add(ARG_CACHE_SKSL);
        }
        if (intent.getBooleanExtra(ARG_KEY_PURGE_PERSISTENT_CACHE, false)) {
            arrayList.add(ARG_PURGE_PERSISTENT_CACHE);
        }
        if (intent.getBooleanExtra(ARG_KEY_VERBOSE_LOGGING, false)) {
            arrayList.add(ARG_VERBOSE_LOGGING);
        }
        int intExtra3 = intent.getIntExtra(ARG_KEY_MSAA_SAMPLES, 0);
        if (intExtra3 > 1) {
            arrayList.add("--msaa-samples=" + Integer.toString(intExtra3));
        }
        if (intent.hasExtra(ARG_KEY_DART_FLAGS)) {
            arrayList.add("--dart-flags=" + intent.getStringExtra(ARG_KEY_DART_FLAGS));
        }
        return new FlutterShellArgs(arrayList);
    }

    public FlutterShellArgs(String[] strArr) {
        this.args = new HashSet(Arrays.asList(strArr));
    }

    public FlutterShellArgs(List<String> list) {
        this.args = new HashSet(list);
    }

    public FlutterShellArgs(Set<String> set) {
        this.args = new HashSet(set);
    }

    public void add(String str) {
        this.args.add(str);
    }

    public void remove(String str) {
        this.args.remove(str);
    }

    public String[] toArray() {
        return (String[]) this.args.toArray(new String[this.args.size()]);
    }
}
