package io.flutter.embedding.android;

import android.util.LongSparseArray;
import android.view.MotionEvent;
import java.util.PriorityQueue;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes3.dex */
public final class MotionEventTracker {
    private static MotionEventTracker INSTANCE = null;
    private static final String TAG = "MotionEventTracker";
    private final LongSparseArray<MotionEvent> eventById = new LongSparseArray<>();
    private final PriorityQueue<Long> unusedEvents = new PriorityQueue<>();

    /* loaded from: classes3.dex */
    public static class MotionEventId {
        private static final AtomicLong ID_COUNTER = new AtomicLong(0);
        private final long id;

        public long getId() {
            return this.id;
        }

        private MotionEventId(long j) {
            this.id = j;
        }

        public static MotionEventId from(long j) {
            return new MotionEventId(j);
        }

        public static MotionEventId createUnique() {
            return from(ID_COUNTER.incrementAndGet());
        }
    }

    public static MotionEventTracker getInstance() {
        if (INSTANCE == null) {
            INSTANCE = new MotionEventTracker();
        }
        return INSTANCE;
    }

    private MotionEventTracker() {
    }

    public MotionEventId track(MotionEvent motionEvent) {
        MotionEventId createUnique = MotionEventId.createUnique();
        this.eventById.put(createUnique.id, MotionEvent.obtain(motionEvent));
        this.unusedEvents.add(Long.valueOf(createUnique.id));
        return createUnique;
    }

    public MotionEvent pop(MotionEventId motionEventId) {
        while (!this.unusedEvents.isEmpty() && this.unusedEvents.peek().longValue() < motionEventId.id) {
            this.eventById.remove(this.unusedEvents.poll().longValue());
        }
        if (!this.unusedEvents.isEmpty() && this.unusedEvents.peek().longValue() == motionEventId.id) {
            this.unusedEvents.poll();
        }
        MotionEvent motionEvent = this.eventById.get(motionEventId.id);
        this.eventById.remove(motionEventId.id);
        return motionEvent;
    }
}
