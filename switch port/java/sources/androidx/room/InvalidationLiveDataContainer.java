package androidx.room;

import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.LiveData;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Set;
import java.util.concurrent.Callable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: InvalidationLiveDataContainer.kt */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J=\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u000b0\u0007\"\u0004\b\u0000\u0010\u000b2\u000e\u0010\f\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000e0\r2\u0006\u0010\u000f\u001a\u00020\u00102\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u0002H\u000b0\u0012¢\u0006\u0002\u0010\u0013J\u0012\u0010\u0014\u001a\u00020\u00152\n\u0010\u0016\u001a\u0006\u0012\u0002\b\u00030\u0007J\u0012\u0010\u0017\u001a\u00020\u00152\n\u0010\u0016\u001a\u0006\u0012\u0002\b\u00030\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0005\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00070\u0006X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u0018"}, d2 = {"Landroidx/room/InvalidationLiveDataContainer;", "", "database", "Landroidx/room/RoomDatabase;", "(Landroidx/room/RoomDatabase;)V", "liveDataSet", "", "Landroidx/lifecycle/LiveData;", "getLiveDataSet$room_runtime_release", "()Ljava/util/Set;", "create", ExifInterface.GPS_DIRECTION_TRUE, "tableNames", "", "", "inTransaction", "", "computeFunction", "Ljava/util/concurrent/Callable;", "([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;", "onActive", "", "liveData", "onInactive", "room-runtime_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class InvalidationLiveDataContainer {
    private final RoomDatabase database;
    private final Set<LiveData<?>> liveDataSet;

    public final Set<LiveData<?>> getLiveDataSet$room_runtime_release() {
        return this.liveDataSet;
    }

    public InvalidationLiveDataContainer(RoomDatabase database) {
        Intrinsics.checkNotNullParameter(database, "database");
        this.database = database;
        Set<LiveData<?>> newSetFromMap = Collections.newSetFromMap(new IdentityHashMap());
        Intrinsics.checkNotNullExpressionValue(newSetFromMap, "newSetFromMap(IdentityHashMap())");
        this.liveDataSet = newSetFromMap;
    }

    public final <T> LiveData<T> create(String[] tableNames, boolean inTransaction, Callable<T> computeFunction) {
        Intrinsics.checkNotNullParameter(tableNames, "tableNames");
        Intrinsics.checkNotNullParameter(computeFunction, "computeFunction");
        return new RoomTrackingLiveData(this.database, this, inTransaction, computeFunction, tableNames);
    }

    public final void onActive(LiveData<?> liveData) {
        Intrinsics.checkNotNullParameter(liveData, "liveData");
        this.liveDataSet.add(liveData);
    }

    public final void onInactive(LiveData<?> liveData) {
        Intrinsics.checkNotNullParameter(liveData, "liveData");
        this.liveDataSet.remove(liveData);
    }
}
