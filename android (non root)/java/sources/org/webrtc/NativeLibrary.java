package org.webrtc;

/* loaded from: classes3.dex */
class NativeLibrary {
    private static String TAG = "NativeLibrary";
    private static boolean libraryLoaded;
    private static Object lock = new Object();

    NativeLibrary() {
    }

    /* loaded from: classes3.dex */
    static class DefaultLoader implements NativeLibraryLoader {
        @Override // org.webrtc.NativeLibraryLoader
        public boolean load(String str) {
            Logging.d(NativeLibrary.TAG, "Loading library: " + str);
            try {
                System.loadLibrary(str);
                return true;
            } catch (UnsatisfiedLinkError e) {
                Logging.e(NativeLibrary.TAG, "Failed to load native library: " + str, e);
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void initialize(NativeLibraryLoader nativeLibraryLoader, String str) {
        synchronized (lock) {
            if (libraryLoaded) {
                Logging.d(TAG, "Native library has already been loaded.");
            } else {
                Logging.d(TAG, "Loading native library: " + str);
                libraryLoaded = nativeLibraryLoader.load(str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isLoaded() {
        boolean z;
        synchronized (lock) {
            z = libraryLoaded;
        }
        return z;
    }
}
