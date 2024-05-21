package tech.rabbit.r1systemupdater.model;

import android.util.SparseArray;

/* loaded from: classes3.dex */
public final class UpdateEngineStatuses {
    public static final int CLEANUP_PREVIOUS_UPDATE = 11;
    public static final int IDLE = 0;
    public static final int NEED_REBOOT = 6;
    private static final SparseArray<String> STATUS_MAP;

    static {
        SparseArray<String> sparseArray = new SparseArray<>();
        STATUS_MAP = sparseArray;
        sparseArray.put(0, "waiting for start update");
        sparseArray.put(1, "checking for update");
        sparseArray.put(2, "update available");
        sparseArray.put(3, "downloading");
        sparseArray.put(4, "verifying");
        sparseArray.put(5, "finalizing");
        sparseArray.put(6, "updated need reboot");
        sparseArray.put(7, "reporting error event");
        sparseArray.put(8, "attemping rollback");
        sparseArray.put(9, "disabled");
        sparseArray.put(10, "need permission to update");
        sparseArray.put(11, "cleanup previous update");
    }

    public static String getStatusText(int i) {
        SparseArray<String> sparseArray = STATUS_MAP;
        return sparseArray.contains(i) ? sparseArray.get(i) : String.valueOf(i);
    }

    private UpdateEngineStatuses() {
    }
}
