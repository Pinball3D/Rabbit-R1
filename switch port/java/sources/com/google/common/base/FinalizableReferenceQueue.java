package com.google.common.base;

import java.io.Closeable;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.ref.PhantomReference;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.reflect.Method;
import java.net.URL;
import java.net.URLClassLoader;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public class FinalizableReferenceQueue implements Closeable {
    private static final String FINALIZER_CLASS_NAME = "com.google.common.base.internal.Finalizer";
    private static final Logger logger = Logger.getLogger(FinalizableReferenceQueue.class.getName());
    private static final Method startFinalizer = getStartFinalizer(loadFinalizer(new SystemLoader(), new DecoupledLoader(), new DirectLoader()));
    final PhantomReference<Object> frqRef;
    final ReferenceQueue<Object> queue;
    final boolean threadStarted;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface FinalizerLoader {
        @CheckForNull
        Class<?> loadFinalizer();
    }

    public FinalizableReferenceQueue() {
        ReferenceQueue<Object> referenceQueue = new ReferenceQueue<>();
        this.queue = referenceQueue;
        PhantomReference<Object> phantomReference = new PhantomReference<>(this, referenceQueue);
        this.frqRef = phantomReference;
        boolean z = false;
        try {
            startFinalizer.invoke(null, FinalizableReference.class, referenceQueue, phantomReference);
            z = true;
        } catch (IllegalAccessException e) {
            throw new AssertionError(e);
        } catch (Throwable th) {
            logger.log(Level.INFO, "Failed to start reference finalizer thread. Reference cleanup will only occur when new references are created.", th);
        }
        this.threadStarted = z;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.frqRef.enqueue();
        cleanUp();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public void cleanUp() {
        if (this.threadStarted) {
            return;
        }
        while (true) {
            Reference<? extends Object> poll = this.queue.poll();
            if (poll == 0) {
                return;
            }
            poll.clear();
            try {
                ((FinalizableReference) poll).finalizeReferent();
            } catch (Throwable th) {
                logger.log(Level.SEVERE, "Error cleaning up after reference.", th);
            }
        }
    }

    private static Class<?> loadFinalizer(FinalizerLoader... finalizerLoaderArr) {
        for (FinalizerLoader finalizerLoader : finalizerLoaderArr) {
            Class<?> loadFinalizer = finalizerLoader.loadFinalizer();
            if (loadFinalizer != null) {
                return loadFinalizer;
            }
        }
        throw new AssertionError();
    }

    /* loaded from: classes2.dex */
    static class SystemLoader implements FinalizerLoader {
        static boolean disabled;

        SystemLoader() {
        }

        @Override // com.google.common.base.FinalizableReferenceQueue.FinalizerLoader
        @CheckForNull
        public Class<?> loadFinalizer() {
            if (disabled) {
                return null;
            }
            try {
                ClassLoader systemClassLoader = ClassLoader.getSystemClassLoader();
                if (systemClassLoader != null) {
                    try {
                        return systemClassLoader.loadClass(FinalizableReferenceQueue.FINALIZER_CLASS_NAME);
                    } catch (ClassNotFoundException unused) {
                    }
                }
                return null;
            } catch (SecurityException unused2) {
                FinalizableReferenceQueue.logger.info("Not allowed to access system class loader.");
                return null;
            }
        }
    }

    /* loaded from: classes2.dex */
    static class DecoupledLoader implements FinalizerLoader {
        private static final String LOADING_ERROR = "Could not load Finalizer in its own class loader. Loading Finalizer in the current class loader instead. As a result, you will not be able to garbage collect this class loader. To support reclaiming this class loader, either resolve the underlying issue, or move Guava to your system class path.";

        DecoupledLoader() {
        }

        @Override // com.google.common.base.FinalizableReferenceQueue.FinalizerLoader
        @CheckForNull
        public Class<?> loadFinalizer() {
            try {
                return newLoader(getBaseUrl()).loadClass(FinalizableReferenceQueue.FINALIZER_CLASS_NAME);
            } catch (Exception e) {
                FinalizableReferenceQueue.logger.log(Level.WARNING, LOADING_ERROR, (Throwable) e);
                return null;
            }
        }

        URL getBaseUrl() throws IOException {
            String concat = String.valueOf(FinalizableReferenceQueue.FINALIZER_CLASS_NAME.replace('.', '/')).concat(".class");
            URL resource = getClass().getClassLoader().getResource(concat);
            if (resource == null) {
                throw new FileNotFoundException(concat);
            }
            String url = resource.toString();
            if (!url.endsWith(concat)) {
                String valueOf = String.valueOf(url);
                throw new IOException(valueOf.length() != 0 ? "Unsupported path style: ".concat(valueOf) : new String("Unsupported path style: "));
            }
            return new URL(resource, url.substring(0, url.length() - concat.length()));
        }

        URLClassLoader newLoader(URL url) {
            return new URLClassLoader(new URL[]{url}, null);
        }
    }

    /* loaded from: classes2.dex */
    static class DirectLoader implements FinalizerLoader {
        DirectLoader() {
        }

        @Override // com.google.common.base.FinalizableReferenceQueue.FinalizerLoader
        public Class<?> loadFinalizer() {
            try {
                return Class.forName(FinalizableReferenceQueue.FINALIZER_CLASS_NAME);
            } catch (ClassNotFoundException e) {
                throw new AssertionError(e);
            }
        }
    }

    static Method getStartFinalizer(Class<?> cls) {
        try {
            return cls.getMethod("startFinalizer", Class.class, ReferenceQueue.class, PhantomReference.class);
        } catch (NoSuchMethodException e) {
            throw new AssertionError(e);
        }
    }
}
