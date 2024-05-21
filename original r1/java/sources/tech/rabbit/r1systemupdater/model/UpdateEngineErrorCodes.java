package tech.rabbit.r1systemupdater.model;

import android.util.SparseArray;

/* loaded from: classes3.dex */
public final class UpdateEngineErrorCodes {
    public static final int BIND_ENGINE = -2;
    private static final SparseArray<String> CODE_TO_NAME_MAP;
    public static final int SUCCESS = 0;
    public static final int UNKNOWN = -1;
    public static final int UPDATED_BUT_NOT_ACTIVE = 52;
    public static final int USER_CANCELLED = 48;

    static {
        SparseArray<String> sparseArray = new SparseArray<>();
        CODE_TO_NAME_MAP = sparseArray;
        sparseArray.put(-2, "bind update engine error");
        sparseArray.put(-1, "verify error");
        sparseArray.put(0, "success");
        sparseArray.put(1, "error");
        sparseArray.put(4, "file system copier error");
        sparseArray.put(5, "post install runner error");
        sparseArray.put(6, "payload mismatched type error");
        sparseArray.put(7, "install device open error");
        sparseArray.put(8, "kernel device open error");
        sparseArray.put(9, "download transfer error");
        sparseArray.put(10, "payload hash mismatch error");
        sparseArray.put(11, "payload size mismatch error");
        sparseArray.put(12, "download payload verification error");
        sparseArray.put(15, "new roots verification error");
        sparseArray.put(20, "download state initialization error");
        sparseArray.put(26, "download metadata signature mismatch");
        sparseArray.put(48, "user cancelled");
        sparseArray.put(52, "updated but not active");
    }

    public static String getCodeName(int i) {
        SparseArray<String> sparseArray = CODE_TO_NAME_MAP;
        return sparseArray.contains(i) ? sparseArray.get(i) : String.valueOf(i);
    }

    private UpdateEngineErrorCodes() {
    }
}
