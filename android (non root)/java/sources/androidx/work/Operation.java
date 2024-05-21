package androidx.work;

import androidx.lifecycle.LiveData;
import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes2.dex */
public interface Operation {
    public static final State.IN_PROGRESS IN_PROGRESS;
    public static final State.SUCCESS SUCCESS;

    ListenableFuture<State.SUCCESS> getResult();

    LiveData<State> getState();

    static {
        SUCCESS = new State.SUCCESS();
        IN_PROGRESS = new State.IN_PROGRESS();
    }

    /* loaded from: classes2.dex */
    public static abstract class State {
        State() {
        }

        /* loaded from: classes2.dex */
        public static final class SUCCESS extends State {
            public String toString() {
                return "SUCCESS";
            }

            private SUCCESS() {
            }
        }

        /* loaded from: classes2.dex */
        public static final class IN_PROGRESS extends State {
            public String toString() {
                return "IN_PROGRESS";
            }

            private IN_PROGRESS() {
            }
        }

        /* loaded from: classes2.dex */
        public static final class FAILURE extends State {
            private final Throwable mThrowable;

            public Throwable getThrowable() {
                return this.mThrowable;
            }

            public FAILURE(Throwable exception) {
                this.mThrowable = exception;
            }

            public String toString() {
                return "FAILURE (" + this.mThrowable.getMessage() + ")";
            }
        }
    }
}
