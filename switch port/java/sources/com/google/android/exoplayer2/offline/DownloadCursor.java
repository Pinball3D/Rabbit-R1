package com.google.android.exoplayer2.offline;

import java.io.Closeable;

/* loaded from: classes2.dex */
public interface DownloadCursor extends Closeable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    int getCount();

    Download getDownload();

    int getPosition();

    boolean isClosed();

    boolean moveToPosition(int i);

    default boolean moveToFirst() {
        return moveToPosition(0);
    }

    default boolean moveToLast() {
        return moveToPosition(getCount() - 1);
    }

    default boolean moveToNext() {
        return moveToPosition(getPosition() + 1);
    }

    default boolean moveToPrevious() {
        return moveToPosition(getPosition() - 1);
    }

    default boolean isFirst() {
        return getPosition() == 0 && getCount() != 0;
    }

    default boolean isLast() {
        int count = getCount();
        return getPosition() == count + (-1) && count != 0;
    }

    default boolean isBeforeFirst() {
        return getCount() == 0 || getPosition() == -1;
    }

    default boolean isAfterLast() {
        return getCount() == 0 || getPosition() == getCount();
    }
}
