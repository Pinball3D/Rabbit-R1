package androidx.room;

import android.database.sqlite.SQLiteConstraintException;
import androidx.exifinterface.media.ExifInterface;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: EntityUpsertionAdapter.kt */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u001c\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0016\n\u0000\n\u0002\u0010\u001e\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0002\b\u0007\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B!\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006¢\u0006\u0002\u0010\u0007J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0013\u0010\f\u001a\u00020\t2\u0006\u0010\r\u001a\u00028\u0000¢\u0006\u0002\u0010\u000eJ\u001b\u0010\f\u001a\u00020\t2\u000e\u0010\u000f\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0010¢\u0006\u0002\u0010\u0011J\u0014\u0010\f\u001a\u00020\t2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0012J\u0013\u0010\u0013\u001a\u00020\u00142\u0006\u0010\r\u001a\u00028\u0000¢\u0006\u0002\u0010\u0015J\u001b\u0010\u0016\u001a\u00020\u00172\u000e\u0010\u000f\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0010¢\u0006\u0002\u0010\u0018J\u0014\u0010\u0016\u001a\u00020\u00172\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0019J#\u0010\u001a\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00140\u00102\u000e\u0010\u000f\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0010¢\u0006\u0002\u0010\u001bJ!\u0010\u001a\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00140\u00102\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0019¢\u0006\u0002\u0010\u001cJ!\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00140\u001e2\u000e\u0010\u000f\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0010¢\u0006\u0002\u0010\u001fJ\u001a\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00140\u001e2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0019R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Landroidx/room/EntityUpsertionAdapter;", ExifInterface.GPS_DIRECTION_TRUE, "", "insertionAdapter", "Landroidx/room/EntityInsertionAdapter;", "updateAdapter", "Landroidx/room/EntityDeletionOrUpdateAdapter;", "(Landroidx/room/EntityInsertionAdapter;Landroidx/room/EntityDeletionOrUpdateAdapter;)V", "checkUniquenessException", "", "ex", "Landroid/database/sqlite/SQLiteConstraintException;", "upsert", "entity", "(Ljava/lang/Object;)V", "entities", "", "([Ljava/lang/Object;)V", "", "upsertAndReturnId", "", "(Ljava/lang/Object;)J", "upsertAndReturnIdsArray", "", "([Ljava/lang/Object;)[J", "", "upsertAndReturnIdsArrayBox", "([Ljava/lang/Object;)[Ljava/lang/Long;", "(Ljava/util/Collection;)[Ljava/lang/Long;", "upsertAndReturnIdsList", "", "([Ljava/lang/Object;)Ljava/util/List;", "room-runtime_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class EntityUpsertionAdapter<T> {
    private final EntityInsertionAdapter<T> insertionAdapter;
    private final EntityDeletionOrUpdateAdapter<T> updateAdapter;

    public EntityUpsertionAdapter(EntityInsertionAdapter<T> insertionAdapter, EntityDeletionOrUpdateAdapter<T> updateAdapter) {
        Intrinsics.checkNotNullParameter(insertionAdapter, "insertionAdapter");
        Intrinsics.checkNotNullParameter(updateAdapter, "updateAdapter");
        this.insertionAdapter = insertionAdapter;
        this.updateAdapter = updateAdapter;
    }

    public final void upsert(T entity) {
        try {
            this.insertionAdapter.insert((EntityInsertionAdapter<T>) entity);
        } catch (SQLiteConstraintException e) {
            checkUniquenessException(e);
            this.updateAdapter.handle(entity);
        }
    }

    public final long upsertAndReturnId(T entity) {
        try {
            return this.insertionAdapter.insertAndReturnId(entity);
        } catch (SQLiteConstraintException e) {
            this.checkUniquenessException(e);
            this.updateAdapter.handle(entity);
            return -1L;
        }
    }

    public final long[] upsertAndReturnIdsArray(T[] entities) {
        long j;
        Intrinsics.checkNotNullParameter(entities, "entities");
        int length = entities.length;
        long[] jArr = new long[length];
        for (int i = 0; i < length; i++) {
            try {
                j = this.insertionAdapter.insertAndReturnId(entities[i]);
            } catch (SQLiteConstraintException e) {
                checkUniquenessException(e);
                this.updateAdapter.handle(entities[i]);
                j = -1;
            }
            jArr[i] = j;
        }
        return jArr;
    }

    public final long[] upsertAndReturnIdsArray(Collection<? extends T> entities) {
        long j;
        Intrinsics.checkNotNullParameter(entities, "entities");
        Iterator<? extends T> it = entities.iterator();
        int size = entities.size();
        long[] jArr = new long[size];
        for (int i = 0; i < size; i++) {
            T next = it.next();
            try {
                j = this.insertionAdapter.insertAndReturnId(next);
            } catch (SQLiteConstraintException e) {
                checkUniquenessException(e);
                this.updateAdapter.handle(next);
                j = -1;
            }
            jArr[i] = j;
        }
        return jArr;
    }

    public final List<Long> upsertAndReturnIdsList(T[] entities) {
        Intrinsics.checkNotNullParameter(entities, "entities");
        List createListBuilder = CollectionsKt.createListBuilder();
        for (T t : entities) {
            try {
                createListBuilder.add(Long.valueOf(this.insertionAdapter.insertAndReturnId(t)));
            } catch (SQLiteConstraintException e) {
                checkUniquenessException(e);
                this.updateAdapter.handle(t);
                createListBuilder.add(-1L);
            }
        }
        return CollectionsKt.build(createListBuilder);
    }

    public final List<Long> upsertAndReturnIdsList(Collection<? extends T> entities) {
        Intrinsics.checkNotNullParameter(entities, "entities");
        List createListBuilder = CollectionsKt.createListBuilder();
        for (T t : entities) {
            try {
                createListBuilder.add(Long.valueOf(this.insertionAdapter.insertAndReturnId(t)));
            } catch (SQLiteConstraintException e) {
                checkUniquenessException(e);
                this.updateAdapter.handle(t);
                createListBuilder.add(-1L);
            }
        }
        return CollectionsKt.build(createListBuilder);
    }

    public final Long[] upsertAndReturnIdsArrayBox(T[] entities) {
        long j;
        Intrinsics.checkNotNullParameter(entities, "entities");
        int length = entities.length;
        Long[] lArr = new Long[length];
        for (int i = 0; i < length; i++) {
            try {
                j = this.insertionAdapter.insertAndReturnId(entities[i]);
            } catch (SQLiteConstraintException e) {
                checkUniquenessException(e);
                this.updateAdapter.handle(entities[i]);
                j = -1;
            }
            lArr[i] = Long.valueOf(j);
        }
        return lArr;
    }

    public final Long[] upsertAndReturnIdsArrayBox(Collection<? extends T> entities) {
        long j;
        Intrinsics.checkNotNullParameter(entities, "entities");
        Iterator<? extends T> it = entities.iterator();
        int size = entities.size();
        Long[] lArr = new Long[size];
        for (int i = 0; i < size; i++) {
            T next = it.next();
            try {
                j = this.insertionAdapter.insertAndReturnId(next);
            } catch (SQLiteConstraintException e) {
                checkUniquenessException(e);
                this.updateAdapter.handle(next);
                j = -1;
            }
            lArr[i] = Long.valueOf(j);
        }
        return lArr;
    }

    private final void checkUniquenessException(SQLiteConstraintException ex) {
        String message = ex.getMessage();
        if (message == null) {
            throw ex;
        }
        if (!StringsKt.contains((CharSequence) message, (CharSequence) "1555", true)) {
            throw ex;
        }
    }

    public final void upsert(T[] entities) {
        Intrinsics.checkNotNullParameter(entities, "entities");
        for (T t : entities) {
            try {
                this.insertionAdapter.insert((EntityInsertionAdapter<T>) t);
            } catch (SQLiteConstraintException e) {
                checkUniquenessException(e);
                this.updateAdapter.handle(t);
            }
        }
    }

    public final void upsert(Iterable<? extends T> entities) {
        Intrinsics.checkNotNullParameter(entities, "entities");
        for (T t : entities) {
            try {
                this.insertionAdapter.insert((EntityInsertionAdapter<T>) t);
            } catch (SQLiteConstraintException e) {
                checkUniquenessException(e);
                this.updateAdapter.handle(t);
            }
        }
    }
}
