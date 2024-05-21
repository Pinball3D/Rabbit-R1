package io.sentry;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes3.dex */
public final class FullyDisplayedReporter {
    private static final FullyDisplayedReporter instance = new FullyDisplayedReporter();
    private final List<FullyDisplayedReporterListener> listeners = new CopyOnWriteArrayList();

    /* loaded from: classes3.dex */
    public interface FullyDisplayedReporterListener {
        void onFullyDrawn();
    }

    public static FullyDisplayedReporter getInstance() {
        return instance;
    }

    private FullyDisplayedReporter() {
    }

    public void registerFullyDrawnListener(FullyDisplayedReporterListener fullyDisplayedReporterListener) {
        this.listeners.add(fullyDisplayedReporterListener);
    }

    public void reportFullyDrawn() {
        Iterator<FullyDisplayedReporterListener> it = this.listeners.iterator();
        this.listeners.clear();
        while (it.hasNext()) {
            it.next().onFullyDrawn();
        }
    }
}
