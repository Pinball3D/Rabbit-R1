package io.flutter;

import io.flutter.embedding.engine.FlutterJNI;
import io.flutter.embedding.engine.deferredcomponents.DeferredComponentManager;
import io.flutter.embedding.engine.loader.FlutterLoader;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* loaded from: classes3.dex */
public final class FlutterInjector {
    private static boolean accessed;
    private static FlutterInjector instance;
    private DeferredComponentManager deferredComponentManager;
    private ExecutorService executorService;
    private FlutterJNI.Factory flutterJniFactory;
    private FlutterLoader flutterLoader;

    public static void reset() {
        accessed = false;
        instance = null;
    }

    public DeferredComponentManager deferredComponentManager() {
        return this.deferredComponentManager;
    }

    public ExecutorService executorService() {
        return this.executorService;
    }

    public FlutterLoader flutterLoader() {
        return this.flutterLoader;
    }

    public FlutterJNI.Factory getFlutterJNIFactory() {
        return this.flutterJniFactory;
    }

    public static void setInstance(FlutterInjector flutterInjector) {
        if (accessed) {
            throw new IllegalStateException("Cannot change the FlutterInjector instance once it's been read. If you're trying to dependency inject, be sure to do so at the beginning of the program");
        }
        instance = flutterInjector;
    }

    public static FlutterInjector instance() {
        accessed = true;
        if (instance == null) {
            instance = new Builder().build();
        }
        return instance;
    }

    private FlutterInjector(FlutterLoader flutterLoader, DeferredComponentManager deferredComponentManager, FlutterJNI.Factory factory, ExecutorService executorService) {
        this.flutterLoader = flutterLoader;
        this.deferredComponentManager = deferredComponentManager;
        this.flutterJniFactory = factory;
        this.executorService = executorService;
    }

    /* loaded from: classes3.dex */
    public static final class Builder {
        private DeferredComponentManager deferredComponentManager;
        private ExecutorService executorService;
        private FlutterJNI.Factory flutterJniFactory;
        private FlutterLoader flutterLoader;

        public Builder setDeferredComponentManager(DeferredComponentManager deferredComponentManager) {
            this.deferredComponentManager = deferredComponentManager;
            return this;
        }

        public Builder setExecutorService(ExecutorService executorService) {
            this.executorService = executorService;
            return this;
        }

        public Builder setFlutterJNIFactory(FlutterJNI.Factory factory) {
            this.flutterJniFactory = factory;
            return this;
        }

        public Builder setFlutterLoader(FlutterLoader flutterLoader) {
            this.flutterLoader = flutterLoader;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3.dex */
        public class NamedThreadFactory implements ThreadFactory {
            private int threadId;

            private NamedThreadFactory() {
                this.threadId = 0;
            }

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable);
                StringBuilder sb = new StringBuilder("flutter-worker-");
                int i = this.threadId;
                this.threadId = i + 1;
                thread.setName(sb.append(i).toString());
                return thread;
            }
        }

        private void fillDefaults() {
            if (this.flutterJniFactory == null) {
                this.flutterJniFactory = new FlutterJNI.Factory();
            }
            if (this.executorService == null) {
                this.executorService = Executors.newCachedThreadPool(new NamedThreadFactory());
            }
            if (this.flutterLoader == null) {
                this.flutterLoader = new FlutterLoader(this.flutterJniFactory.provideFlutterJNI(), this.executorService);
            }
        }

        public FlutterInjector build() {
            fillDefaults();
            return new FlutterInjector(this.flutterLoader, this.deferredComponentManager, this.flutterJniFactory, this.executorService);
        }
    }
}
