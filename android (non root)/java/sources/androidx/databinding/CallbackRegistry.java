package androidx.databinding;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class CallbackRegistry<C, T, A> implements Cloneable {
    private static final String TAG = "CallbackRegistry";
    private List<C> mCallbacks = new ArrayList();
    private long mFirst64Removed = 0;
    private int mNotificationLevel;
    private final NotifierCallback<C, T, A> mNotifier;
    private long[] mRemainderRemoved;

    /* loaded from: classes.dex */
    public static abstract class NotifierCallback<C, T, A> {
        public abstract void onNotifyCallback(C callback, T sender, int arg, A arg2);
    }

    public CallbackRegistry(NotifierCallback<C, T, A> notifier) {
        this.mNotifier = notifier;
    }

    public synchronized void notifyCallbacks(T sender, int arg, A arg2) {
        this.mNotificationLevel++;
        notifyRecurse(sender, arg, arg2);
        int i = this.mNotificationLevel - 1;
        this.mNotificationLevel = i;
        if (i == 0) {
            long[] jArr = this.mRemainderRemoved;
            if (jArr != null) {
                for (int length = jArr.length - 1; length >= 0; length--) {
                    long j = this.mRemainderRemoved[length];
                    if (j != 0) {
                        removeRemovedCallbacks((length + 1) * 64, j);
                        this.mRemainderRemoved[length] = 0;
                    }
                }
            }
            long j2 = this.mFirst64Removed;
            if (j2 != 0) {
                removeRemovedCallbacks(0, j2);
                this.mFirst64Removed = 0L;
            }
        }
    }

    private void notifyFirst64(T sender, int arg, A arg2) {
        notifyCallbacks(sender, arg, arg2, 0, Math.min(64, this.mCallbacks.size()), this.mFirst64Removed);
    }

    private void notifyRecurse(T sender, int arg, A arg2) {
        int size = this.mCallbacks.size();
        int length = this.mRemainderRemoved == null ? -1 : r0.length - 1;
        notifyRemainder(sender, arg, arg2, length);
        notifyCallbacks(sender, arg, arg2, (length + 2) * 64, size, 0L);
    }

    private void notifyRemainder(T sender, int arg, A arg2, int remainderIndex) {
        if (remainderIndex < 0) {
            notifyFirst64(sender, arg, arg2);
            return;
        }
        long j = this.mRemainderRemoved[remainderIndex];
        int i = (remainderIndex + 1) * 64;
        int min = Math.min(this.mCallbacks.size(), i + 64);
        notifyRemainder(sender, arg, arg2, remainderIndex - 1);
        notifyCallbacks(sender, arg, arg2, i, min, j);
    }

    private void notifyCallbacks(T t, int i, A a, int i2, int i3, long j) {
        long j2 = 1;
        while (i2 < i3) {
            if ((j & j2) == 0) {
                this.mNotifier.onNotifyCallback(this.mCallbacks.get(i2), t, i, a);
            }
            j2 <<= 1;
            i2++;
        }
    }

    public synchronized void add(C callback) {
        if (callback == null) {
            throw new IllegalArgumentException("callback cannot be null");
        }
        int lastIndexOf = this.mCallbacks.lastIndexOf(callback);
        if (lastIndexOf < 0 || isRemoved(lastIndexOf)) {
            this.mCallbacks.add(callback);
        }
    }

    private boolean isRemoved(int index) {
        int i;
        if (index < 64) {
            return (this.mFirst64Removed & (1 << index)) != 0;
        }
        long[] jArr = this.mRemainderRemoved;
        if (jArr != null && (i = (index / 64) - 1) < jArr.length) {
            return ((1 << (index % 64)) & jArr[i]) != 0;
        }
        return false;
    }

    private void removeRemovedCallbacks(int startIndex, long removed) {
        long j = Long.MIN_VALUE;
        for (int i = startIndex + 63; i >= startIndex; i--) {
            if ((removed & j) != 0) {
                this.mCallbacks.remove(i);
            }
            j >>>= 1;
        }
    }

    public synchronized void remove(C callback) {
        if (this.mNotificationLevel == 0) {
            this.mCallbacks.remove(callback);
        } else {
            int lastIndexOf = this.mCallbacks.lastIndexOf(callback);
            if (lastIndexOf >= 0) {
                setRemovalBit(lastIndexOf);
            }
        }
    }

    private void setRemovalBit(int index) {
        if (index < 64) {
            this.mFirst64Removed = (1 << index) | this.mFirst64Removed;
            return;
        }
        int i = (index / 64) - 1;
        long[] jArr = this.mRemainderRemoved;
        if (jArr == null) {
            this.mRemainderRemoved = new long[this.mCallbacks.size() / 64];
        } else if (jArr.length <= i) {
            long[] jArr2 = new long[this.mCallbacks.size() / 64];
            long[] jArr3 = this.mRemainderRemoved;
            System.arraycopy(jArr3, 0, jArr2, 0, jArr3.length);
            this.mRemainderRemoved = jArr2;
        }
        long[] jArr4 = this.mRemainderRemoved;
        jArr4[i] = (1 << (index % 64)) | jArr4[i];
    }

    public synchronized ArrayList<C> copyCallbacks() {
        ArrayList<C> arrayList;
        arrayList = new ArrayList<>(this.mCallbacks.size());
        int size = this.mCallbacks.size();
        for (int i = 0; i < size; i++) {
            if (!isRemoved(i)) {
                arrayList.add(this.mCallbacks.get(i));
            }
        }
        return arrayList;
    }

    public synchronized void copyCallbacks(List<C> callbacks) {
        callbacks.clear();
        int size = this.mCallbacks.size();
        for (int i = 0; i < size; i++) {
            if (!isRemoved(i)) {
                callbacks.add(this.mCallbacks.get(i));
            }
        }
    }

    public synchronized boolean isEmpty() {
        if (this.mCallbacks.isEmpty()) {
            return true;
        }
        if (this.mNotificationLevel == 0) {
            return false;
        }
        int size = this.mCallbacks.size();
        for (int i = 0; i < size; i++) {
            if (!isRemoved(i)) {
                return false;
            }
        }
        return true;
    }

    public synchronized void clear() {
        if (this.mNotificationLevel == 0) {
            this.mCallbacks.clear();
        } else if (!this.mCallbacks.isEmpty()) {
            for (int size = this.mCallbacks.size() - 1; size >= 0; size--) {
                setRemovalBit(size);
            }
        }
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public synchronized CallbackRegistry<C, T, A> m5159clone() {
        CallbackRegistry<C, T, A> callbackRegistry;
        CloneNotSupportedException e;
        try {
            callbackRegistry = (CallbackRegistry) super.clone();
            try {
                callbackRegistry.mFirst64Removed = 0L;
                callbackRegistry.mRemainderRemoved = null;
                callbackRegistry.mNotificationLevel = 0;
                callbackRegistry.mCallbacks = new ArrayList();
                int size = this.mCallbacks.size();
                for (int i = 0; i < size; i++) {
                    if (!isRemoved(i)) {
                        callbackRegistry.mCallbacks.add(this.mCallbacks.get(i));
                    }
                }
            } catch (CloneNotSupportedException e2) {
                e = e2;
                e.printStackTrace();
                return callbackRegistry;
            }
        } catch (CloneNotSupportedException e3) {
            callbackRegistry = null;
            e = e3;
        }
        return callbackRegistry;
    }
}
