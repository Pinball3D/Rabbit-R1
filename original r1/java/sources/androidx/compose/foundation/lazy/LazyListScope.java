package androidx.compose.foundation.lazy;

import androidx.compose.runtime.Composer;
import io.sentry.protocol.MetricSummary;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LazyDsl.kt */
@LazyScopeMarker
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\bg\u0018\u00002\u00020\u0001J7\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00012\u001c\u0010\u0005\u001a\u0018\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00030\u0006¢\u0006\u0002\b\b¢\u0006\u0002\b\tH\u0017¢\u0006\u0002\u0010\nJC\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00012\u001c\u0010\u0005\u001a\u0018\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00030\u0006¢\u0006\u0002\b\b¢\u0006\u0002\b\tH\u0016¢\u0006\u0002\u0010\fJ\u0096\u0001\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000f2%\b\u0002\u0010\u0004\u001a\u001f\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00062%\b\u0002\u0010\u000b\u001a\u001f\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000621\u0010\u0013\u001a-\u0012\u0004\u0012\u00020\u0007\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u00020\u00030\u0014¢\u0006\u0002\b\b¢\u0006\u0002\b\tH\u0016¢\u0006\u0002\u0010\u0015Jo\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000f2%\b\u0002\u0010\u0004\u001a\u001f\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000621\u0010\u0013\u001a-\u0012\u0004\u0012\u00020\u0007\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u00020\u00030\u0014¢\u0006\u0002\b\b¢\u0006\u0002\b\tH\u0017¢\u0006\u0002\u0010\u0016JC\u0010\u0017\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00012\u001c\u0010\u0005\u001a\u0018\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00030\u0006¢\u0006\u0002\b\b¢\u0006\u0002\b\tH'¢\u0006\u0002\u0010\fø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0018À\u0006\u0003"}, d2 = {"Landroidx/compose/foundation/lazy/LazyListScope;", "", "item", "", "key", "content", "Lkotlin/Function1;", "Landroidx/compose/foundation/lazy/LazyItemScope;", "Landroidx/compose/runtime/Composable;", "Lkotlin/ExtensionFunctionType;", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V", "contentType", "(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V", "items", MetricSummary.JsonKeys.COUNT, "", "Lkotlin/ParameterName;", "name", "index", "itemContent", "Lkotlin/Function2;", "(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V", "(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V", "stickyHeader", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface LazyListScope {
    void stickyHeader(Object key, Object contentType, Function3<? super LazyItemScope, ? super Composer, ? super Integer, Unit> content);

    /* compiled from: LazyDsl.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @Deprecated
        public static void item(LazyListScope lazyListScope, Object obj, Object obj2, Function3<? super LazyItemScope, ? super Composer, ? super Integer, Unit> content) {
            Intrinsics.checkNotNullParameter(content, "content");
            LazyListScope.super.item(obj, obj2, content);
        }

        @Deprecated(level = DeprecationLevel.HIDDEN, message = "Use the non deprecated overload")
        @Deprecated
        public static /* synthetic */ void item(LazyListScope lazyListScope, Object obj, Function3 content) {
            Intrinsics.checkNotNullParameter(content, "content");
            LazyListScope.super.item(obj, content);
        }

        @Deprecated
        public static void items(LazyListScope lazyListScope, int i, Function1<? super Integer, ? extends Object> function1, Function1<? super Integer, ? extends Object> contentType, Function4<? super LazyItemScope, ? super Integer, ? super Composer, ? super Integer, Unit> itemContent) {
            Intrinsics.checkNotNullParameter(contentType, "contentType");
            Intrinsics.checkNotNullParameter(itemContent, "itemContent");
            LazyListScope.super.items(i, function1, contentType, itemContent);
        }

        @Deprecated(level = DeprecationLevel.HIDDEN, message = "Use the non deprecated overload")
        @Deprecated
        public static /* synthetic */ void items(LazyListScope lazyListScope, int i, Function1 function1, Function4 itemContent) {
            Intrinsics.checkNotNullParameter(itemContent, "itemContent");
            LazyListScope.super.items(i, function1, itemContent);
        }
    }

    static /* synthetic */ void item$default(LazyListScope lazyListScope, Object obj, Object obj2, Function3 function3, int i, Object obj3) {
        if (obj3 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: item");
        }
        if ((i & 1) != 0) {
            obj = null;
        }
        if ((i & 2) != 0) {
            obj2 = null;
        }
        lazyListScope.item(obj, obj2, function3);
    }

    default void item(Object key, Object contentType, Function3<? super LazyItemScope, ? super Composer, ? super Integer, Unit> content) {
        Intrinsics.checkNotNullParameter(content, "content");
        throw new IllegalStateException("The method is not implemented".toString());
    }

    static /* synthetic */ void item$default(LazyListScope lazyListScope, Object obj, Function3 function3, int i, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: item");
        }
        if ((i & 1) != 0) {
            obj = null;
        }
        lazyListScope.item(obj, function3);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Use the non deprecated overload")
    /* synthetic */ default void item(Object key, Function3 content) {
        Intrinsics.checkNotNullParameter(content, "content");
        item(key, null, content);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void items$default(LazyListScope lazyListScope, int i, Function1 function1, Function1 function12, Function4 function4, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: items");
        }
        if ((i2 & 2) != 0) {
            function1 = null;
        }
        if ((i2 & 4) != 0) {
            function12 = new Function1() { // from class: androidx.compose.foundation.lazy.LazyListScope$items$1
                public final Void invoke(int i3) {
                    return null;
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                    return invoke(((Number) obj2).intValue());
                }
            };
        }
        lazyListScope.items(i, function1, function12, function4);
    }

    default void items(int count, Function1<? super Integer, ? extends Object> key, Function1<? super Integer, ? extends Object> contentType, Function4<? super LazyItemScope, ? super Integer, ? super Composer, ? super Integer, Unit> itemContent) {
        Intrinsics.checkNotNullParameter(contentType, "contentType");
        Intrinsics.checkNotNullParameter(itemContent, "itemContent");
        throw new IllegalStateException("The method is not implemented".toString());
    }

    static /* synthetic */ void items$default(LazyListScope lazyListScope, int i, Function1 function1, Function4 function4, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: items");
        }
        if ((i2 & 2) != 0) {
            function1 = null;
        }
        lazyListScope.items(i, function1, function4);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Use the non deprecated overload")
    /* synthetic */ default void items(int count, Function1 key, Function4 itemContent) {
        Intrinsics.checkNotNullParameter(itemContent, "itemContent");
        items(count, key, new Function1<Integer, Object>() { // from class: androidx.compose.foundation.lazy.LazyListScope$items$2
            public final Object invoke(int i) {
                return null;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Integer num) {
                return invoke(num.intValue());
            }
        }, itemContent);
    }

    static /* synthetic */ void stickyHeader$default(LazyListScope lazyListScope, Object obj, Object obj2, Function3 function3, int i, Object obj3) {
        if (obj3 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: stickyHeader");
        }
        if ((i & 1) != 0) {
            obj = null;
        }
        if ((i & 2) != 0) {
            obj2 = null;
        }
        lazyListScope.stickyHeader(obj, obj2, function3);
    }
}
