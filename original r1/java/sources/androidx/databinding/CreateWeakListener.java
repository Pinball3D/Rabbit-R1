package androidx.databinding;

import java.lang.ref.ReferenceQueue;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public interface CreateWeakListener {
    WeakListener create(ViewDataBinding viewDataBinding, int i, ReferenceQueue<ViewDataBinding> referenceQueue);
}
