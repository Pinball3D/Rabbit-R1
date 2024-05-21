package com.google.common.base;

import java.lang.ref.WeakReference;
import java.util.Locale;
import java.util.ServiceConfigurationError;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Pattern;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public final class Platform {
    private static final Logger logger = Logger.getLogger(Platform.class.getName());
    private static final PatternCompiler patternCompiler = loadPatternCompiler();

    static void checkGwtRpcEnabled() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String nullToEmpty(@CheckForNull String str) {
        return str == null ? "" : str;
    }

    private Platform() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long systemNanoTime() {
        return System.nanoTime();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static CharMatcher precomputeCharMatcher(CharMatcher charMatcher) {
        return charMatcher.precomputedInternal();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T extends Enum<T>> Optional<T> getEnumIfPresent(Class<T> cls, String str) {
        WeakReference<? extends Enum<?>> weakReference = Enums.getEnumConstants(cls).get(str);
        return weakReference == null ? Optional.absent() : Optional.of(cls.cast(weakReference.get()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String formatCompact4Digits(double d) {
        return String.format(Locale.ROOT, "%.4g", Double.valueOf(d));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean stringIsNullOrEmpty(@CheckForNull String str) {
        return str == null || str.isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @CheckForNull
    public static String emptyToNull(@CheckForNull String str) {
        if (stringIsNullOrEmpty(str)) {
            return null;
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static CommonPattern compilePattern(String str) {
        Preconditions.checkNotNull(str);
        return patternCompiler.compile(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean patternCompilerIsPcreLike() {
        return patternCompiler.isPcreLike();
    }

    private static PatternCompiler loadPatternCompiler() {
        return new JdkPatternCompiler();
    }

    private static void logPatternCompilerError(ServiceConfigurationError serviceConfigurationError) {
        logger.log(Level.WARNING, "Error loading regex compiler, falling back to next option", (Throwable) serviceConfigurationError);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class JdkPatternCompiler implements PatternCompiler {
        @Override // com.google.common.base.PatternCompiler
        public boolean isPcreLike() {
            return true;
        }

        private JdkPatternCompiler() {
        }

        @Override // com.google.common.base.PatternCompiler
        public CommonPattern compile(String str) {
            return new JdkPattern(Pattern.compile(str));
        }
    }
}
