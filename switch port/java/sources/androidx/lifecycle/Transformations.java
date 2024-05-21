package androidx.lifecycle;

import androidx.arch.core.util.Function;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* compiled from: Transformations.kt */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u001e\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0001H\u0007\u001aB\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00040\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u001c\u0010\u0005\u001a\u0018\u0012\t\u0012\u0007H\u0002¢\u0006\u0002\b\u0007\u0012\t\u0012\u0007H\u0004¢\u0006\u0002\b\u00070\u0006H\u0007\u001a8\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00040\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00040\tH\u0007\u001aJ\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u00040\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00020\u00012$\u0010\u0005\u001a \u0012\t\u0012\u0007H\u0002¢\u0006\u0002\b\u0007\u0012\u0011\u0012\u000f\u0012\u0004\u0012\u0002H\u0004\u0018\u00010\u0001¢\u0006\u0002\b\u00070\u0006H\u0007\u001a>\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u00040\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0018\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00040\u00010\tH\u0007¨\u0006\f"}, d2 = {"distinctUntilChanged", "Landroidx/lifecycle/LiveData;", "X", "map", "Y", "transform", "Lkotlin/Function1;", "Lkotlin/jvm/JvmSuppressWildcards;", "mapFunction", "Landroidx/arch/core/util/Function;", "switchMap", "switchMapFunction", "lifecycle-livedata_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class Transformations {
    public static final <X, Y> LiveData<Y> map(LiveData<X> liveData, final Function1<X, Y> transform) {
        Intrinsics.checkNotNullParameter(liveData, "<this>");
        Intrinsics.checkNotNullParameter(transform, "transform");
        final MediatorLiveData mediatorLiveData = new MediatorLiveData();
        mediatorLiveData.addSource(liveData, new Transformations$sam$androidx_lifecycle_Observer$0(new Function1<X, Unit>() { // from class: androidx.lifecycle.Transformations$map$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Object obj) {
                invoke2((Transformations$map$1<X>) obj);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(X x) {
                mediatorLiveData.setValue(transform.invoke(x));
            }
        }));
        return mediatorLiveData;
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Use kotlin functions, instead of outdated arch core Functions")
    public static final /* synthetic */ LiveData map(LiveData liveData, final Function mapFunction) {
        Intrinsics.checkNotNullParameter(liveData, "<this>");
        Intrinsics.checkNotNullParameter(mapFunction, "mapFunction");
        final MediatorLiveData mediatorLiveData = new MediatorLiveData();
        mediatorLiveData.addSource(liveData, new Transformations$sam$androidx_lifecycle_Observer$0(new Function1<X, Unit>() { // from class: androidx.lifecycle.Transformations$map$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Object obj) {
                invoke2((Transformations$map$2<X>) obj);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(X x) {
                mediatorLiveData.setValue(mapFunction.apply(x));
            }
        }));
        return mediatorLiveData;
    }

    public static final <X, Y> LiveData<Y> switchMap(LiveData<X> liveData, final Function1<X, LiveData<Y>> transform) {
        Intrinsics.checkNotNullParameter(liveData, "<this>");
        Intrinsics.checkNotNullParameter(transform, "transform");
        final MediatorLiveData mediatorLiveData = new MediatorLiveData();
        mediatorLiveData.addSource(liveData, new Observer<X>() { // from class: androidx.lifecycle.Transformations$switchMap$1
            private LiveData<Y> liveData;

            public final LiveData<Y> getLiveData() {
                return this.liveData;
            }

            public final void setLiveData(LiveData<Y> liveData2) {
                this.liveData = liveData2;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // androidx.lifecycle.Observer
            public void onChanged(X value) {
                LiveData<Y> liveData2 = (LiveData) transform.invoke(value);
                Object obj = this.liveData;
                if (obj == liveData2) {
                    return;
                }
                if (obj != null) {
                    MediatorLiveData<Y> mediatorLiveData2 = mediatorLiveData;
                    Intrinsics.checkNotNull(obj);
                    mediatorLiveData2.removeSource(obj);
                }
                this.liveData = liveData2;
                if (liveData2 != 0) {
                    MediatorLiveData<Y> mediatorLiveData3 = mediatorLiveData;
                    Intrinsics.checkNotNull(liveData2);
                    final MediatorLiveData<Y> mediatorLiveData4 = mediatorLiveData;
                    mediatorLiveData3.addSource(liveData2, new Transformations$sam$androidx_lifecycle_Observer$0(new Function1<Y, Unit>() { // from class: androidx.lifecycle.Transformations$switchMap$1$onChanged$1
                        /* JADX INFO: Access modifiers changed from: package-private */
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(Object obj2) {
                            invoke2((Transformations$switchMap$1$onChanged$1<Y>) obj2);
                            return Unit.INSTANCE;
                        }

                        /* renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(Y y) {
                            mediatorLiveData4.setValue(y);
                        }
                    }));
                }
            }
        });
        return mediatorLiveData;
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Use kotlin functions, instead of outdated arch core Functions")
    public static final /* synthetic */ LiveData switchMap(LiveData liveData, final Function switchMapFunction) {
        Intrinsics.checkNotNullParameter(liveData, "<this>");
        Intrinsics.checkNotNullParameter(switchMapFunction, "switchMapFunction");
        final MediatorLiveData mediatorLiveData = new MediatorLiveData();
        mediatorLiveData.addSource(liveData, new Observer<X>() { // from class: androidx.lifecycle.Transformations$switchMap$2
            private LiveData<Y> liveData;

            public final LiveData<Y> getLiveData() {
                return this.liveData;
            }

            public final void setLiveData(LiveData<Y> liveData2) {
                this.liveData = liveData2;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // androidx.lifecycle.Observer
            public void onChanged(X value) {
                LiveData<Y> liveData2 = (LiveData) switchMapFunction.apply(value);
                Object obj = this.liveData;
                if (obj == liveData2) {
                    return;
                }
                if (obj != null) {
                    MediatorLiveData<Y> mediatorLiveData2 = mediatorLiveData;
                    Intrinsics.checkNotNull(obj);
                    mediatorLiveData2.removeSource(obj);
                }
                this.liveData = liveData2;
                if (liveData2 != 0) {
                    MediatorLiveData<Y> mediatorLiveData3 = mediatorLiveData;
                    Intrinsics.checkNotNull(liveData2);
                    final MediatorLiveData<Y> mediatorLiveData4 = mediatorLiveData;
                    mediatorLiveData3.addSource(liveData2, new Transformations$sam$androidx_lifecycle_Observer$0(new Function1<Y, Unit>() { // from class: androidx.lifecycle.Transformations$switchMap$2$onChanged$1
                        /* JADX INFO: Access modifiers changed from: package-private */
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(Object obj2) {
                            invoke2((Transformations$switchMap$2$onChanged$1<Y>) obj2);
                            return Unit.INSTANCE;
                        }

                        /* renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(Y y) {
                            mediatorLiveData4.setValue(y);
                        }
                    }));
                }
            }
        });
        return mediatorLiveData;
    }

    public static final <X> LiveData<X> distinctUntilChanged(LiveData<X> liveData) {
        Intrinsics.checkNotNullParameter(liveData, "<this>");
        final MediatorLiveData mediatorLiveData = new MediatorLiveData();
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        booleanRef.element = true;
        if (liveData.isInitialized()) {
            mediatorLiveData.setValue(liveData.getValue());
            booleanRef.element = false;
        }
        mediatorLiveData.addSource(liveData, new Transformations$sam$androidx_lifecycle_Observer$0(new Function1<X, Unit>() { // from class: androidx.lifecycle.Transformations$distinctUntilChanged$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Object obj) {
                invoke2((Transformations$distinctUntilChanged$1<X>) obj);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(X x) {
                X value = mediatorLiveData.getValue();
                if (booleanRef.element || ((value == null && x != null) || !(value == null || Intrinsics.areEqual(value, x)))) {
                    booleanRef.element = false;
                    mediatorLiveData.setValue(x);
                }
            }
        }));
        return mediatorLiveData;
    }
}
