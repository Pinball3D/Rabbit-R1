package io.sentry.android.core;

import android.app.Activity;
import io.sentry.Attachment;
import io.sentry.EventProcessor;
import io.sentry.Hint;
import io.sentry.SentryEvent;
import io.sentry.SentryLevel;
import io.sentry.TypeCheckHint;
import io.sentry.android.core.SentryAndroidOptions;
import io.sentry.android.core.internal.util.AndroidCurrentDateProvider;
import io.sentry.android.core.internal.util.Debouncer;
import io.sentry.android.core.internal.util.ScreenshotUtils;
import io.sentry.protocol.SentryTransaction;
import io.sentry.util.HintUtils;
import io.sentry.util.IntegrationUtils;
import io.sentry.util.Objects;

/* loaded from: classes3.dex */
public final class ScreenshotEventProcessor implements EventProcessor {
    private static final int DEBOUNCE_MAX_EXECUTIONS = 3;
    private static final long DEBOUNCE_WAIT_TIME_MS = 2000;
    private final BuildInfoProvider buildInfoProvider;
    private final Debouncer debouncer = new Debouncer(AndroidCurrentDateProvider.getInstance(), 2000, 3);
    private final SentryAndroidOptions options;

    @Override // io.sentry.EventProcessor
    public SentryTransaction process(SentryTransaction sentryTransaction, Hint hint) {
        return sentryTransaction;
    }

    public ScreenshotEventProcessor(SentryAndroidOptions sentryAndroidOptions, BuildInfoProvider buildInfoProvider) {
        this.options = (SentryAndroidOptions) Objects.requireNonNull(sentryAndroidOptions, "SentryAndroidOptions is required");
        this.buildInfoProvider = (BuildInfoProvider) Objects.requireNonNull(buildInfoProvider, "BuildInfoProvider is required");
        if (sentryAndroidOptions.isAttachScreenshot()) {
            IntegrationUtils.addIntegrationToSdkVersion(getClass());
        }
    }

    @Override // io.sentry.EventProcessor
    public SentryEvent process(SentryEvent sentryEvent, Hint hint) {
        if (!sentryEvent.isErrored()) {
            return sentryEvent;
        }
        if (!this.options.isAttachScreenshot()) {
            this.options.getLogger().log(SentryLevel.DEBUG, "attachScreenshot is disabled.", new Object[0]);
            return sentryEvent;
        }
        Activity activity = CurrentActivityHolder.getInstance().getActivity();
        if (activity != null && !HintUtils.isFromHybridSdk(hint)) {
            boolean checkForDebounce = this.debouncer.checkForDebounce();
            SentryAndroidOptions.BeforeCaptureCallback beforeScreenshotCaptureCallback = this.options.getBeforeScreenshotCaptureCallback();
            if (beforeScreenshotCaptureCallback != null) {
                if (!beforeScreenshotCaptureCallback.execute(sentryEvent, hint, checkForDebounce)) {
                    return sentryEvent;
                }
            } else if (checkForDebounce) {
                return sentryEvent;
            }
            byte[] takeScreenshot = ScreenshotUtils.takeScreenshot(activity, this.options.getMainThreadChecker(), this.options.getLogger(), this.buildInfoProvider);
            if (takeScreenshot == null) {
                return sentryEvent;
            }
            hint.setScreenshot(Attachment.fromScreenshot(takeScreenshot));
            hint.set(TypeCheckHint.ANDROID_ACTIVITY, activity);
        }
        return sentryEvent;
    }
}
