package io.flutter.embedding.engine;

import android.content.Context;
import io.flutter.FlutterInjector;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.embedding.engine.dart.DartExecutor;
import io.flutter.embedding.engine.loader.FlutterLoader;
import io.flutter.plugin.platform.PlatformViewsController;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class FlutterEngineGroup {
    final List<FlutterEngine> activeEngines;

    public FlutterEngineGroup(Context context) {
        this(context, null);
    }

    public FlutterEngineGroup(Context context, String[] strArr) {
        this.activeEngines = new ArrayList();
        FlutterLoader flutterLoader = FlutterInjector.instance().flutterLoader();
        if (flutterLoader.initialized()) {
            return;
        }
        flutterLoader.startInitialization(context.getApplicationContext());
        flutterLoader.ensureInitializationComplete(context.getApplicationContext(), strArr);
    }

    public FlutterEngine createAndRunDefaultEngine(Context context) {
        return createAndRunEngine(context, null);
    }

    public FlutterEngine createAndRunEngine(Context context, DartExecutor.DartEntrypoint dartEntrypoint) {
        return createAndRunEngine(context, dartEntrypoint, null);
    }

    public FlutterEngine createAndRunEngine(Context context, DartExecutor.DartEntrypoint dartEntrypoint, String str) {
        return createAndRunEngine(new Options(context).setDartEntrypoint(dartEntrypoint).setInitialRoute(str));
    }

    public FlutterEngine createAndRunEngine(Options options) {
        final FlutterEngine spawn;
        Context context = options.getContext();
        DartExecutor.DartEntrypoint dartEntrypoint = options.getDartEntrypoint();
        String initialRoute = options.getInitialRoute();
        List<String> dartEntrypointArgs = options.getDartEntrypointArgs();
        PlatformViewsController platformViewsController = options.getPlatformViewsController();
        if (platformViewsController == null) {
            platformViewsController = new PlatformViewsController();
        }
        PlatformViewsController platformViewsController2 = platformViewsController;
        boolean automaticallyRegisterPlugins = options.getAutomaticallyRegisterPlugins();
        boolean waitForRestorationData = options.getWaitForRestorationData();
        DartExecutor.DartEntrypoint createDefault = dartEntrypoint == null ? DartExecutor.DartEntrypoint.createDefault() : dartEntrypoint;
        if (this.activeEngines.size() == 0) {
            spawn = createEngine(context, platformViewsController2, automaticallyRegisterPlugins, waitForRestorationData);
            if (initialRoute != null) {
                spawn.getNavigationChannel().setInitialRoute(initialRoute);
            }
            spawn.getDartExecutor().executeDartEntrypoint(createDefault, dartEntrypointArgs);
        } else {
            spawn = this.activeEngines.get(0).spawn(context, createDefault, initialRoute, dartEntrypointArgs, platformViewsController2, automaticallyRegisterPlugins, waitForRestorationData);
        }
        this.activeEngines.add(spawn);
        spawn.addEngineLifecycleListener(new FlutterEngine.EngineLifecycleListener() { // from class: io.flutter.embedding.engine.FlutterEngineGroup.1
            @Override // io.flutter.embedding.engine.FlutterEngine.EngineLifecycleListener
            public void onPreEngineRestart() {
            }

            @Override // io.flutter.embedding.engine.FlutterEngine.EngineLifecycleListener
            public void onEngineWillDestroy() {
                FlutterEngineGroup.this.activeEngines.remove(spawn);
            }
        });
        return spawn;
    }

    FlutterEngine createEngine(Context context, PlatformViewsController platformViewsController, boolean z, boolean z2) {
        return new FlutterEngine(context, null, null, platformViewsController, null, z, z2, this);
    }

    /* loaded from: classes3.dex */
    public static class Options {
        private Context context;
        private DartExecutor.DartEntrypoint dartEntrypoint;
        private List<String> dartEntrypointArgs;
        private String initialRoute;
        private PlatformViewsController platformViewsController;
        private boolean automaticallyRegisterPlugins = true;
        private boolean waitForRestorationData = false;

        public boolean getAutomaticallyRegisterPlugins() {
            return this.automaticallyRegisterPlugins;
        }

        public Context getContext() {
            return this.context;
        }

        public DartExecutor.DartEntrypoint getDartEntrypoint() {
            return this.dartEntrypoint;
        }

        public List<String> getDartEntrypointArgs() {
            return this.dartEntrypointArgs;
        }

        public String getInitialRoute() {
            return this.initialRoute;
        }

        public PlatformViewsController getPlatformViewsController() {
            return this.platformViewsController;
        }

        public boolean getWaitForRestorationData() {
            return this.waitForRestorationData;
        }

        public Options setAutomaticallyRegisterPlugins(boolean z) {
            this.automaticallyRegisterPlugins = z;
            return this;
        }

        public Options setDartEntrypoint(DartExecutor.DartEntrypoint dartEntrypoint) {
            this.dartEntrypoint = dartEntrypoint;
            return this;
        }

        public Options setDartEntrypointArgs(List<String> list) {
            this.dartEntrypointArgs = list;
            return this;
        }

        public Options setInitialRoute(String str) {
            this.initialRoute = str;
            return this;
        }

        public Options setPlatformViewsController(PlatformViewsController platformViewsController) {
            this.platformViewsController = platformViewsController;
            return this;
        }

        public Options setWaitForRestorationData(boolean z) {
            this.waitForRestorationData = z;
            return this;
        }

        public Options(Context context) {
            this.context = context;
        }
    }
}
