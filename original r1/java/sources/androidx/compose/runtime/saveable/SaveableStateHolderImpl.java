package androidx.compose.runtime.saveable;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.saveable.SaveableStateHolderImpl;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SaveableStateHolder.kt */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u0000 \u001a2\u00020\u0001:\u0002\u001a\u001bB/\u0012(\b\u0002\u0010\u0002\u001a\"\u0012\u0004\u0012\u00020\u0004\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0006\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00070\u00050\u0003¢\u0006\u0002\u0010\bJ(\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00042\u0011\u0010\u0014\u001a\r\u0012\u0004\u0012\u00020\u00120\u0015¢\u0006\u0002\b\u0016H\u0017¢\u0006\u0002\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0004H\u0016J*\u0010\u0019\u001a$\u0012\u0004\u0012\u00020\u0004\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0006\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00070\u0005\u0018\u00010\u0003H\u0002R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001e\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\b\u0012\u00060\u0010R\u00020\u00000\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R.\u0010\u0002\u001a\"\u0012\u0004\u0012\u00020\u0004\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0006\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00070\u00050\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;", "Landroidx/compose/runtime/saveable/SaveableStateHolder;", "savedStates", "", "", "", "", "", "(Ljava/util/Map;)V", "parentSaveableStateRegistry", "Landroidx/compose/runtime/saveable/SaveableStateRegistry;", "getParentSaveableStateRegistry", "()Landroidx/compose/runtime/saveable/SaveableStateRegistry;", "setParentSaveableStateRegistry", "(Landroidx/compose/runtime/saveable/SaveableStateRegistry;)V", "registryHolders", "Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$RegistryHolder;", "SaveableStateProvider", "", "key", "content", "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "removeState", "saveAll", "Companion", "RegistryHolder", "runtime-saveable_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class SaveableStateHolderImpl implements SaveableStateHolder {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Saver<SaveableStateHolderImpl, ?> Saver = SaverKt.Saver(new Function2<SaverScope, SaveableStateHolderImpl, Map<Object, Map<String, ? extends List<? extends Object>>>>() { // from class: androidx.compose.runtime.saveable.SaveableStateHolderImpl$Companion$Saver$1
        @Override // kotlin.jvm.functions.Function2
        public final Map<Object, Map<String, List<Object>>> invoke(SaverScope Saver2, SaveableStateHolderImpl it) {
            Map<Object, Map<String, List<Object>>> saveAll;
            Intrinsics.checkNotNullParameter(Saver2, "$this$Saver");
            Intrinsics.checkNotNullParameter(it, "it");
            saveAll = it.saveAll();
            return saveAll;
        }
    }, new Function1<Map<Object, Map<String, ? extends List<? extends Object>>>, SaveableStateHolderImpl>() { // from class: androidx.compose.runtime.saveable.SaveableStateHolderImpl$Companion$Saver$2
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ SaveableStateHolderImpl invoke(Map<Object, Map<String, ? extends List<? extends Object>>> map) {
            return invoke2((Map<Object, Map<String, List<Object>>>) map);
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final SaveableStateHolderImpl invoke2(Map<Object, Map<String, List<Object>>> it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return new SaveableStateHolderImpl(it);
        }
    });
    private SaveableStateRegistry parentSaveableStateRegistry;
    private final Map<Object, RegistryHolder> registryHolders;
    private final Map<Object, Map<String, List<Object>>> savedStates;

    /* JADX WARN: Multi-variable type inference failed */
    public SaveableStateHolderImpl() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public final SaveableStateRegistry getParentSaveableStateRegistry() {
        return this.parentSaveableStateRegistry;
    }

    public final void setParentSaveableStateRegistry(SaveableStateRegistry saveableStateRegistry) {
        this.parentSaveableStateRegistry = saveableStateRegistry;
    }

    public SaveableStateHolderImpl(Map<Object, Map<String, List<Object>>> savedStates) {
        Intrinsics.checkNotNullParameter(savedStates, "savedStates");
        this.savedStates = savedStates;
        this.registryHolders = new LinkedHashMap();
    }

    public /* synthetic */ SaveableStateHolderImpl(LinkedHashMap linkedHashMap, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new LinkedHashMap() : linkedHashMap);
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateHolder
    public void SaveableStateProvider(final Object key, final Function2<? super Composer, ? super Integer, Unit> content, Composer composer, final int i) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(content, "content");
        Composer startRestartGroup = composer.startRestartGroup(-1198538093);
        ComposerKt.sourceInformation(startRestartGroup, "C(SaveableStateProvider)P(1)75@2967L923:SaveableStateHolder.kt#r2ddri");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1198538093, i, -1, "androidx.compose.runtime.saveable.SaveableStateHolderImpl.SaveableStateProvider (SaveableStateHolder.kt:74)");
        }
        startRestartGroup.startReplaceableGroup(444418301);
        ComposerKt.sourceInformation(startRestartGroup, "CC(ReusableContent)P(1)145@5313L9:Composables.kt#9igjgp");
        startRestartGroup.startReusableGroup(ComposerKt.reuseKey, key);
        ComposerKt.sourceInformationMarkerStart(startRestartGroup, 1516495192, "C76@3023L321,83@3357L150,87@3520L360:SaveableStateHolder.kt#r2ddri");
        startRestartGroup.startReplaceableGroup(-492369756);
        ComposerKt.sourceInformation(startRestartGroup, "CC(remember):Composables.kt#9igjgp");
        Object rememberedValue = startRestartGroup.rememberedValue();
        if (rememberedValue == Composer.INSTANCE.getEmpty()) {
            SaveableStateRegistry parentSaveableStateRegistry = getParentSaveableStateRegistry();
            if (parentSaveableStateRegistry != null && !parentSaveableStateRegistry.canBeSaved(key)) {
                throw new IllegalArgumentException(("Type of the key " + key + " is not supported. On Android you can only use types which can be stored inside the Bundle.").toString());
            }
            rememberedValue = new RegistryHolder(this, key);
            startRestartGroup.updateRememberedValue(rememberedValue);
        }
        startRestartGroup.endReplaceableGroup();
        final RegistryHolder registryHolder = (RegistryHolder) rememberedValue;
        CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) new ProvidedValue[]{SaveableStateRegistryKt.getLocalSaveableStateRegistry().provides(registryHolder.getRegistry())}, content, startRestartGroup, (i & 112) | 8);
        EffectsKt.DisposableEffect(Unit.INSTANCE, new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: androidx.compose.runtime.saveable.SaveableStateHolderImpl$SaveableStateProvider$1$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final DisposableEffectResult invoke(DisposableEffectScope DisposableEffect) {
                Map map;
                Map map2;
                Intrinsics.checkNotNullParameter(DisposableEffect, "$this$DisposableEffect");
                map = SaveableStateHolderImpl.this.registryHolders;
                boolean z = !map.containsKey(key);
                Object obj = key;
                if (z) {
                    SaveableStateHolderImpl.this.savedStates.remove(key);
                    map2 = SaveableStateHolderImpl.this.registryHolders;
                    map2.put(key, registryHolder);
                    final SaveableStateHolderImpl.RegistryHolder registryHolder2 = registryHolder;
                    final SaveableStateHolderImpl saveableStateHolderImpl = SaveableStateHolderImpl.this;
                    final Object obj2 = key;
                    return new DisposableEffectResult() { // from class: androidx.compose.runtime.saveable.SaveableStateHolderImpl$SaveableStateProvider$1$1$invoke$$inlined$onDispose$1
                        @Override // androidx.compose.runtime.DisposableEffectResult
                        public void dispose() {
                            Map map3;
                            SaveableStateHolderImpl.RegistryHolder.this.saveTo(saveableStateHolderImpl.savedStates);
                            map3 = saveableStateHolderImpl.registryHolders;
                            map3.remove(obj2);
                        }
                    };
                }
                throw new IllegalArgumentException(("Key " + obj + " was used multiple times ").toString());
            }
        }, startRestartGroup, 6);
        ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
        startRestartGroup.endReusableGroup();
        startRestartGroup.endReplaceableGroup();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.runtime.saveable.SaveableStateHolderImpl$SaveableStateProvider$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                invoke(composer2, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer composer2, int i2) {
                SaveableStateHolderImpl.this.SaveableStateProvider(key, content, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Map<Object, Map<String, List<Object>>> saveAll() {
        Map<Object, Map<String, List<Object>>> mutableMap = MapsKt.toMutableMap(this.savedStates);
        Iterator<T> it = this.registryHolders.values().iterator();
        while (it.hasNext()) {
            ((RegistryHolder) it.next()).saveTo(mutableMap);
        }
        if (mutableMap.isEmpty()) {
            return null;
        }
        return mutableMap;
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateHolder
    public void removeState(Object key) {
        Intrinsics.checkNotNullParameter(key, "key");
        RegistryHolder registryHolder = this.registryHolders.get(key);
        if (registryHolder != null) {
            registryHolder.setShouldSave(false);
        } else {
            this.savedStates.remove(key);
        }
    }

    /* compiled from: SaveableStateHolder.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0002\u0010\u0003J.\u0010\u0010\u001a\u00020\u00112&\u0010\u0012\u001a\"\u0012\u0004\u0012\u00020\u0001\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0015\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00160\u00140\u0013R\u0011\u0010\u0002\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0017"}, d2 = {"Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$RegistryHolder;", "", "key", "(Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;Ljava/lang/Object;)V", "getKey", "()Ljava/lang/Object;", "registry", "Landroidx/compose/runtime/saveable/SaveableStateRegistry;", "getRegistry", "()Landroidx/compose/runtime/saveable/SaveableStateRegistry;", "shouldSave", "", "getShouldSave", "()Z", "setShouldSave", "(Z)V", "saveTo", "", "map", "", "", "", "", "runtime-saveable_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public final class RegistryHolder {
        private final Object key;
        private final SaveableStateRegistry registry;
        private boolean shouldSave;
        final /* synthetic */ SaveableStateHolderImpl this$0;

        public final Object getKey() {
            return this.key;
        }

        public final SaveableStateRegistry getRegistry() {
            return this.registry;
        }

        public final boolean getShouldSave() {
            return this.shouldSave;
        }

        public final void setShouldSave(boolean z) {
            this.shouldSave = z;
        }

        public RegistryHolder(final SaveableStateHolderImpl saveableStateHolderImpl, Object key) {
            Intrinsics.checkNotNullParameter(key, "key");
            this.this$0 = saveableStateHolderImpl;
            this.key = key;
            this.shouldSave = true;
            this.registry = SaveableStateRegistryKt.SaveableStateRegistry((Map) saveableStateHolderImpl.savedStates.get(key), new Function1<Object, Boolean>() { // from class: androidx.compose.runtime.saveable.SaveableStateHolderImpl$RegistryHolder$registry$1
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(1);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(Object it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    SaveableStateRegistry parentSaveableStateRegistry = SaveableStateHolderImpl.this.getParentSaveableStateRegistry();
                    return Boolean.valueOf(parentSaveableStateRegistry != null ? parentSaveableStateRegistry.canBeSaved(it) : true);
                }
            });
        }

        public final void saveTo(Map<Object, Map<String, List<Object>>> map) {
            Intrinsics.checkNotNullParameter(map, "map");
            if (this.shouldSave) {
                Map<String, List<Object>> performSave = this.registry.performSave();
                if (performSave.isEmpty()) {
                    map.remove(this.key);
                } else {
                    map.put(this.key, performSave);
                }
            }
        }
    }

    /* compiled from: SaveableStateHolder.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001b\u0010\u0003\u001a\f\u0012\u0004\u0012\u00020\u0005\u0012\u0002\b\u00030\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$Companion;", "", "()V", "Saver", "Landroidx/compose/runtime/saveable/Saver;", "Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;", "getSaver", "()Landroidx/compose/runtime/saveable/Saver;", "runtime-saveable_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Saver<SaveableStateHolderImpl, ?> getSaver() {
            return SaveableStateHolderImpl.Saver;
        }
    }
}
