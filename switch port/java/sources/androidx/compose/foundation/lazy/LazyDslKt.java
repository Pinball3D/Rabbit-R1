package androidx.compose.foundation.lazy;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.SentryThread;
import java.util.List;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LazyDsl.kt */
@Metadata(d1 = {"\u0000\u008c\u0001\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u001al\u0010\u0000\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\u0017\u0010\u0010\u001a\u0013\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00010\u0011¢\u0006\u0002\b\u0013H\u0007¢\u0006\u0002\u0010\u0014\u001av\u0010\u0000\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0015\u001a\u00020\t2\u0017\u0010\u0010\u001a\u0013\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00010\u0011¢\u0006\u0002\b\u0013H\u0007¢\u0006\u0002\u0010\u0016\u001al\u0010\u0017\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\u0017\u0010\u0010\u001a\u0013\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00010\u0011¢\u0006\u0002\b\u0013H\u0007¢\u0006\u0002\u0010\u001c\u001av\u0010\u0017\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0015\u001a\u00020\t2\u0017\u0010\u0010\u001a\u0013\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00010\u0011¢\u0006\u0002\b\u0013H\u0007¢\u0006\u0002\u0010\u001d\u001a¬\u0001\u0010\u001e\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u001f*\u00020\u00122\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u0002H\u001f0 2%\b\n\u0010!\u001a\u001f\u0012\u0013\u0012\u0011H\u001f¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b($\u0012\u0004\u0012\u00020%\u0018\u00010\u00112%\b\n\u0010&\u001a\u001f\u0012\u0013\u0012\u0011H\u001f¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b($\u0012\u0006\u0012\u0004\u0018\u00010%0\u001123\b\u0004\u0010'\u001a-\u0012\u0004\u0012\u00020)\u0012\u0013\u0012\u0011H\u001f¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b($\u0012\u0004\u0012\u00020\u00010(¢\u0006\u0002\b*¢\u0006\u0002\b\u0013H\u0086\bø\u0001\u0000¢\u0006\u0002\u0010+\u001a\u0085\u0001\u0010\u001e\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u001f*\u00020\u00122\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u0002H\u001f0 2%\b\n\u0010!\u001a\u001f\u0012\u0013\u0012\u0011H\u001f¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b($\u0012\u0004\u0012\u00020%\u0018\u00010\u001123\b\u0004\u0010'\u001a-\u0012\u0004\u0012\u00020)\u0012\u0013\u0012\u0011H\u001f¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b($\u0012\u0004\u0012\u00020\u00010(¢\u0006\u0002\b*¢\u0006\u0002\b\u0013H\u0087\bø\u0001\u0000¢\u0006\u0002\u0010,\u001a¬\u0001\u0010\u001e\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u001f*\u00020\u00122\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u0002H\u001f0-2%\b\n\u0010!\u001a\u001f\u0012\u0013\u0012\u0011H\u001f¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b($\u0012\u0004\u0012\u00020%\u0018\u00010\u00112%\b\n\u0010&\u001a\u001f\u0012\u0013\u0012\u0011H\u001f¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b($\u0012\u0006\u0012\u0004\u0018\u00010%0\u001123\b\u0004\u0010'\u001a-\u0012\u0004\u0012\u00020)\u0012\u0013\u0012\u0011H\u001f¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b($\u0012\u0004\u0012\u00020\u00010(¢\u0006\u0002\b*¢\u0006\u0002\b\u0013H\u0086\bø\u0001\u0000¢\u0006\u0002\u0010.\u001a\u0085\u0001\u0010\u001e\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u001f*\u00020\u00122\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u0002H\u001f0-2%\b\n\u0010!\u001a\u001f\u0012\u0013\u0012\u0011H\u001f¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b($\u0012\u0004\u0012\u00020%\u0018\u00010\u001123\b\u0004\u0010'\u001a-\u0012\u0004\u0012\u00020)\u0012\u0013\u0012\u0011H\u001f¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b($\u0012\u0004\u0012\u00020\u00010(¢\u0006\u0002\b*¢\u0006\u0002\b\u0013H\u0087\bø\u0001\u0000¢\u0006\u0002\u0010/\u001aë\u0001\u00100\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u001f*\u00020\u00122\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u0002H\u001f0 2:\b\n\u0010!\u001a4\u0012\u0013\u0012\u001101¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b(2\u0012\u0013\u0012\u0011H\u001f¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b($\u0012\u0004\u0012\u00020%\u0018\u00010(2:\b\u0006\u0010&\u001a4\u0012\u0013\u0012\u001101¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b(2\u0012\u0013\u0012\u0011H\u001f¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b($\u0012\u0006\u0012\u0004\u0018\u00010%0(2H\b\u0004\u0010'\u001aB\u0012\u0004\u0012\u00020)\u0012\u0013\u0012\u001101¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b(2\u0012\u0013\u0012\u0011H\u001f¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b($\u0012\u0004\u0012\u00020\u000103¢\u0006\u0002\b*¢\u0006\u0002\b\u0013H\u0086\bø\u0001\u0000¢\u0006\u0002\u00104\u001a¯\u0001\u00100\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u001f*\u00020\u00122\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u0002H\u001f0 2:\b\n\u0010!\u001a4\u0012\u0013\u0012\u001101¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b(2\u0012\u0013\u0012\u0011H\u001f¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b($\u0012\u0004\u0012\u00020%\u0018\u00010(2H\b\u0004\u0010'\u001aB\u0012\u0004\u0012\u00020)\u0012\u0013\u0012\u001101¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b(2\u0012\u0013\u0012\u0011H\u001f¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b($\u0012\u0004\u0012\u00020\u000103¢\u0006\u0002\b*¢\u0006\u0002\b\u0013H\u0087\bø\u0001\u0000¢\u0006\u0002\u00105\u001aë\u0001\u00100\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u001f*\u00020\u00122\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u0002H\u001f0-2:\b\n\u0010!\u001a4\u0012\u0013\u0012\u001101¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b(2\u0012\u0013\u0012\u0011H\u001f¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b($\u0012\u0004\u0012\u00020%\u0018\u00010(2:\b\u0006\u0010&\u001a4\u0012\u0013\u0012\u001101¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b(2\u0012\u0013\u0012\u0011H\u001f¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b($\u0012\u0006\u0012\u0004\u0018\u00010%0(2H\b\u0004\u0010'\u001aB\u0012\u0004\u0012\u00020)\u0012\u0013\u0012\u001101¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b(2\u0012\u0013\u0012\u0011H\u001f¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b($\u0012\u0004\u0012\u00020\u000103¢\u0006\u0002\b*¢\u0006\u0002\b\u0013H\u0086\bø\u0001\u0000¢\u0006\u0002\u00106\u001a¯\u0001\u00100\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u001f*\u00020\u00122\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u0002H\u001f0-2:\b\n\u0010!\u001a4\u0012\u0013\u0012\u001101¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b(2\u0012\u0013\u0012\u0011H\u001f¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b($\u0012\u0004\u0012\u00020%\u0018\u00010(2H\b\u0004\u0010'\u001aB\u0012\u0004\u0012\u00020)\u0012\u0013\u0012\u001101¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b(2\u0012\u0013\u0012\u0011H\u001f¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b($\u0012\u0004\u0012\u00020\u000103¢\u0006\u0002\b*¢\u0006\u0002\b\u0013H\u0087\bø\u0001\u0000¢\u0006\u0002\u00107\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u00068"}, d2 = {"LazyColumn", "", "modifier", "Landroidx/compose/ui/Modifier;", SentryThread.JsonKeys.STATE, "Landroidx/compose/foundation/lazy/LazyListState;", "contentPadding", "Landroidx/compose/foundation/layout/PaddingValues;", "reverseLayout", "", "verticalArrangement", "Landroidx/compose/foundation/layout/Arrangement$Vertical;", "horizontalAlignment", "Landroidx/compose/ui/Alignment$Horizontal;", "flingBehavior", "Landroidx/compose/foundation/gestures/FlingBehavior;", "content", "Lkotlin/Function1;", "Landroidx/compose/foundation/lazy/LazyListScope;", "Lkotlin/ExtensionFunctionType;", "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V", "userScrollEnabled", "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V", "LazyRow", "horizontalArrangement", "Landroidx/compose/foundation/layout/Arrangement$Horizontal;", "verticalAlignment", "Landroidx/compose/ui/Alignment$Vertical;", "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/FlingBehavior;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V", "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/FlingBehavior;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V", "items", ExifInterface.GPS_DIRECTION_TRUE, "", "key", "Lkotlin/ParameterName;", "name", "item", "", "contentType", "itemContent", "Lkotlin/Function2;", "Landroidx/compose/foundation/lazy/LazyItemScope;", "Landroidx/compose/runtime/Composable;", "(Landroidx/compose/foundation/lazy/LazyListScope;[Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V", "(Landroidx/compose/foundation/lazy/LazyListScope;[Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V", "", "(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V", "(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V", "itemsIndexed", "", "index", "Lkotlin/Function3;", "(Landroidx/compose/foundation/lazy/LazyListScope;[Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function5;)V", "(Landroidx/compose/foundation/lazy/LazyListScope;[Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function5;)V", "(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function5;)V", "(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function5;)V", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LazyDslKt {
    public static /* synthetic */ void items$default(LazyListScope lazyListScope, List items, Function1 function1, Function1 contentType, Function4 itemContent, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = null;
        }
        if ((i & 4) != 0) {
            contentType = LazyDslKt$items$1.INSTANCE;
        }
        Intrinsics.checkNotNullParameter(lazyListScope, "<this>");
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(contentType, "contentType");
        Intrinsics.checkNotNullParameter(itemContent, "itemContent");
        lazyListScope.items(items.size(), function1 != null ? new LazyDslKt$items$2(function1, items) : null, new LazyDslKt$items$3(contentType, items), ComposableLambdaKt.composableLambdaInstance(-632812321, true, new LazyDslKt$items$4(itemContent, items)));
    }

    public static final <T> void items(LazyListScope lazyListScope, List<? extends T> items, Function1<? super T, ? extends Object> function1, Function1<? super T, ? extends Object> contentType, Function4<? super LazyItemScope, ? super T, ? super Composer, ? super Integer, Unit> itemContent) {
        Intrinsics.checkNotNullParameter(lazyListScope, "<this>");
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(contentType, "contentType");
        Intrinsics.checkNotNullParameter(itemContent, "itemContent");
        lazyListScope.items(items.size(), function1 != null ? new LazyDslKt$items$2(function1, items) : null, new LazyDslKt$items$3(contentType, items), ComposableLambdaKt.composableLambdaInstance(-632812321, true, new LazyDslKt$items$4(itemContent, items)));
    }

    public static /* synthetic */ void items$default(LazyListScope lazyListScope, List items, Function1 function1, Function4 itemContent, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = null;
        }
        Intrinsics.checkNotNullParameter(lazyListScope, "<this>");
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(itemContent, "itemContent");
        lazyListScope.items(items.size(), function1 != null ? new LazyDslKt$items$2(function1, items) : null, new LazyDslKt$items$3(LazyDslKt$items$1.INSTANCE, items), ComposableLambdaKt.composableLambdaInstance(-632812321, true, new LazyDslKt$items$4(itemContent, items)));
    }

    public static /* synthetic */ void itemsIndexed$default(LazyListScope lazyListScope, List items, Function2 function2, Function2 contentType, Function5 itemContent, int i, Object obj) {
        if ((i & 2) != 0) {
            function2 = null;
        }
        if ((i & 4) != 0) {
            contentType = new Function2() { // from class: androidx.compose.foundation.lazy.LazyDslKt$itemsIndexed$1
                public final Void invoke(int i2, T t) {
                    return null;
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj2, Object obj3) {
                    return invoke(((Number) obj2).intValue(), (int) obj3);
                }
            };
        }
        Intrinsics.checkNotNullParameter(lazyListScope, "<this>");
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(contentType, "contentType");
        Intrinsics.checkNotNullParameter(itemContent, "itemContent");
        lazyListScope.items(items.size(), function2 != null ? new LazyDslKt$itemsIndexed$2(function2, items) : null, new LazyDslKt$itemsIndexed$3(contentType, items), ComposableLambdaKt.composableLambdaInstance(-1091073711, true, new LazyDslKt$itemsIndexed$4(itemContent, items)));
    }

    public static final <T> void itemsIndexed(LazyListScope lazyListScope, List<? extends T> items, Function2<? super Integer, ? super T, ? extends Object> function2, Function2<? super Integer, ? super T, ? extends Object> contentType, Function5<? super LazyItemScope, ? super Integer, ? super T, ? super Composer, ? super Integer, Unit> itemContent) {
        Intrinsics.checkNotNullParameter(lazyListScope, "<this>");
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(contentType, "contentType");
        Intrinsics.checkNotNullParameter(itemContent, "itemContent");
        lazyListScope.items(items.size(), function2 != null ? new LazyDslKt$itemsIndexed$2(function2, items) : null, new LazyDslKt$itemsIndexed$3(contentType, items), ComposableLambdaKt.composableLambdaInstance(-1091073711, true, new LazyDslKt$itemsIndexed$4(itemContent, items)));
    }

    public static /* synthetic */ void itemsIndexed$default(LazyListScope lazyListScope, List items, Function2 function2, Function5 itemContent, int i, Object obj) {
        if ((i & 2) != 0) {
            function2 = null;
        }
        Intrinsics.checkNotNullParameter(lazyListScope, "<this>");
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(itemContent, "itemContent");
        lazyListScope.items(items.size(), function2 != null ? new LazyDslKt$itemsIndexed$2(function2, items) : null, new LazyDslKt$itemsIndexed$$inlined$itemsIndexed$default$1(items), ComposableLambdaKt.composableLambdaInstance(-1091073711, true, new LazyDslKt$itemsIndexed$4(itemContent, items)));
    }

    public static /* synthetic */ void items$default(LazyListScope lazyListScope, Object[] items, Function1 function1, Function1 contentType, Function4 itemContent, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = null;
        }
        if ((i & 4) != 0) {
            contentType = LazyDslKt$items$5.INSTANCE;
        }
        Intrinsics.checkNotNullParameter(lazyListScope, "<this>");
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(contentType, "contentType");
        Intrinsics.checkNotNullParameter(itemContent, "itemContent");
        lazyListScope.items(items.length, function1 != null ? new LazyDslKt$items$6(function1, items) : null, new LazyDslKt$items$7(contentType, items), ComposableLambdaKt.composableLambdaInstance(-1043393750, true, new LazyDslKt$items$8(itemContent, items)));
    }

    public static final <T> void items(LazyListScope lazyListScope, T[] items, Function1<? super T, ? extends Object> function1, Function1<? super T, ? extends Object> contentType, Function4<? super LazyItemScope, ? super T, ? super Composer, ? super Integer, Unit> itemContent) {
        Intrinsics.checkNotNullParameter(lazyListScope, "<this>");
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(contentType, "contentType");
        Intrinsics.checkNotNullParameter(itemContent, "itemContent");
        lazyListScope.items(items.length, function1 != null ? new LazyDslKt$items$6(function1, items) : null, new LazyDslKt$items$7(contentType, items), ComposableLambdaKt.composableLambdaInstance(-1043393750, true, new LazyDslKt$items$8(itemContent, items)));
    }

    public static /* synthetic */ void items$default(LazyListScope lazyListScope, Object[] items, Function1 function1, Function4 itemContent, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = null;
        }
        Intrinsics.checkNotNullParameter(lazyListScope, "<this>");
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(itemContent, "itemContent");
        lazyListScope.items(items.length, function1 != null ? new LazyDslKt$items$6(function1, items) : null, new LazyDslKt$items$7(LazyDslKt$items$5.INSTANCE, items), ComposableLambdaKt.composableLambdaInstance(-1043393750, true, new LazyDslKt$items$8(itemContent, items)));
    }

    public static /* synthetic */ void itemsIndexed$default(LazyListScope lazyListScope, Object[] items, Function2 function2, Function2 contentType, Function5 itemContent, int i, Object obj) {
        if ((i & 2) != 0) {
            function2 = null;
        }
        if ((i & 4) != 0) {
            contentType = new Function2() { // from class: androidx.compose.foundation.lazy.LazyDslKt$itemsIndexed$5
                public final Void invoke(int i2, T t) {
                    return null;
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj2, Object obj3) {
                    return invoke(((Number) obj2).intValue(), (int) obj3);
                }
            };
        }
        Intrinsics.checkNotNullParameter(lazyListScope, "<this>");
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(contentType, "contentType");
        Intrinsics.checkNotNullParameter(itemContent, "itemContent");
        lazyListScope.items(items.length, function2 != null ? new LazyDslKt$itemsIndexed$6(function2, items) : null, new LazyDslKt$itemsIndexed$7(contentType, items), ComposableLambdaKt.composableLambdaInstance(1600639390, true, new LazyDslKt$itemsIndexed$8(itemContent, items)));
    }

    public static final <T> void itemsIndexed(LazyListScope lazyListScope, T[] items, Function2<? super Integer, ? super T, ? extends Object> function2, Function2<? super Integer, ? super T, ? extends Object> contentType, Function5<? super LazyItemScope, ? super Integer, ? super T, ? super Composer, ? super Integer, Unit> itemContent) {
        Intrinsics.checkNotNullParameter(lazyListScope, "<this>");
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(contentType, "contentType");
        Intrinsics.checkNotNullParameter(itemContent, "itemContent");
        lazyListScope.items(items.length, function2 != null ? new LazyDslKt$itemsIndexed$6(function2, items) : null, new LazyDslKt$itemsIndexed$7(contentType, items), ComposableLambdaKt.composableLambdaInstance(1600639390, true, new LazyDslKt$itemsIndexed$8(itemContent, items)));
    }

    public static /* synthetic */ void itemsIndexed$default(LazyListScope lazyListScope, Object[] items, Function2 function2, Function5 itemContent, int i, Object obj) {
        if ((i & 2) != 0) {
            function2 = null;
        }
        Intrinsics.checkNotNullParameter(lazyListScope, "<this>");
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(itemContent, "itemContent");
        lazyListScope.items(items.length, function2 != null ? new LazyDslKt$itemsIndexed$6(function2, items) : null, new LazyDslKt$itemsIndexed$$inlined$itemsIndexed$default$2(items), ComposableLambdaKt.composableLambdaInstance(1600639390, true, new LazyDslKt$itemsIndexed$8(itemContent, items)));
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x01d9  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x01c0  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0260  */
    /* JADX WARN: Removed duplicated region for block: B:56:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0246  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01c5  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01d5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void LazyRow(androidx.compose.ui.Modifier r26, androidx.compose.foundation.lazy.LazyListState r27, androidx.compose.foundation.layout.PaddingValues r28, boolean r29, androidx.compose.foundation.layout.Arrangement.Horizontal r30, androidx.compose.ui.Alignment.Vertical r31, androidx.compose.foundation.gestures.FlingBehavior r32, boolean r33, final kotlin.jvm.functions.Function1<? super androidx.compose.foundation.lazy.LazyListScope, kotlin.Unit> r34, androidx.compose.runtime.Composer r35, final int r36, final int r37) {
        /*
            Method dump skipped, instructions count: 626
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.LazyDslKt.LazyRow(androidx.compose.ui.Modifier, androidx.compose.foundation.lazy.LazyListState, androidx.compose.foundation.layout.PaddingValues, boolean, androidx.compose.foundation.layout.Arrangement$Horizontal, androidx.compose.ui.Alignment$Vertical, androidx.compose.foundation.gestures.FlingBehavior, boolean, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x01da  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x01d2  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0261  */
    /* JADX WARN: Removed duplicated region for block: B:56:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01f3  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0247  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01d6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void LazyColumn(androidx.compose.ui.Modifier r27, androidx.compose.foundation.lazy.LazyListState r28, androidx.compose.foundation.layout.PaddingValues r29, boolean r30, androidx.compose.foundation.layout.Arrangement.Vertical r31, androidx.compose.ui.Alignment.Horizontal r32, androidx.compose.foundation.gestures.FlingBehavior r33, boolean r34, final kotlin.jvm.functions.Function1<? super androidx.compose.foundation.lazy.LazyListScope, kotlin.Unit> r35, androidx.compose.runtime.Composer r36, final int r37, final int r38) {
        /*
            Method dump skipped, instructions count: 627
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.LazyDslKt.LazyColumn(androidx.compose.ui.Modifier, androidx.compose.foundation.lazy.LazyListState, androidx.compose.foundation.layout.PaddingValues, boolean, androidx.compose.foundation.layout.Arrangement$Vertical, androidx.compose.ui.Alignment$Horizontal, androidx.compose.foundation.gestures.FlingBehavior, boolean, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0219  */
    /* JADX WARN: Removed duplicated region for block: B:52:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01bd  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0201  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x015c  */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Use the non deprecated overload")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final /* synthetic */ void LazyColumn(androidx.compose.ui.Modifier r27, androidx.compose.foundation.lazy.LazyListState r28, androidx.compose.foundation.layout.PaddingValues r29, boolean r30, androidx.compose.foundation.layout.Arrangement.Vertical r31, androidx.compose.ui.Alignment.Horizontal r32, androidx.compose.foundation.gestures.FlingBehavior r33, final kotlin.jvm.functions.Function1 r34, androidx.compose.runtime.Composer r35, final int r36, final int r37) {
        /*
            Method dump skipped, instructions count: 555
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.LazyDslKt.LazyColumn(androidx.compose.ui.Modifier, androidx.compose.foundation.lazy.LazyListState, androidx.compose.foundation.layout.PaddingValues, boolean, androidx.compose.foundation.layout.Arrangement$Vertical, androidx.compose.ui.Alignment$Horizontal, androidx.compose.foundation.gestures.FlingBehavior, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0219  */
    /* JADX WARN: Removed duplicated region for block: B:52:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01bd  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0201  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x015c  */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Use the non deprecated overload")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final /* synthetic */ void LazyRow(androidx.compose.ui.Modifier r27, androidx.compose.foundation.lazy.LazyListState r28, androidx.compose.foundation.layout.PaddingValues r29, boolean r30, androidx.compose.foundation.layout.Arrangement.Horizontal r31, androidx.compose.ui.Alignment.Vertical r32, androidx.compose.foundation.gestures.FlingBehavior r33, final kotlin.jvm.functions.Function1 r34, androidx.compose.runtime.Composer r35, final int r36, final int r37) {
        /*
            Method dump skipped, instructions count: 555
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.LazyDslKt.LazyRow(androidx.compose.ui.Modifier, androidx.compose.foundation.lazy.LazyListState, androidx.compose.foundation.layout.PaddingValues, boolean, androidx.compose.foundation.layout.Arrangement$Horizontal, androidx.compose.ui.Alignment$Vertical, androidx.compose.foundation.gestures.FlingBehavior, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int, int):void");
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Use the non deprecated overload")
    public static final /* synthetic */ <T> void items(LazyListScope lazyListScope, List<? extends T> items, Function1<? super T, ? extends Object> function1, Function4<? super LazyItemScope, ? super T, ? super Composer, ? super Integer, Unit> itemContent) {
        Intrinsics.checkNotNullParameter(lazyListScope, "<this>");
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(itemContent, "itemContent");
        lazyListScope.items(items.size(), function1 != null ? new LazyDslKt$items$2(function1, items) : null, new LazyDslKt$items$3(LazyDslKt$items$1.INSTANCE, items), ComposableLambdaKt.composableLambdaInstance(-632812321, true, new LazyDslKt$items$4(itemContent, items)));
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Use the non deprecated overload")
    public static final /* synthetic */ <T> void itemsIndexed(LazyListScope lazyListScope, List<? extends T> items, Function2<? super Integer, ? super T, ? extends Object> function2, Function5<? super LazyItemScope, ? super Integer, ? super T, ? super Composer, ? super Integer, Unit> itemContent) {
        Intrinsics.checkNotNullParameter(lazyListScope, "<this>");
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(itemContent, "itemContent");
        lazyListScope.items(items.size(), function2 != null ? new LazyDslKt$itemsIndexed$2(function2, items) : null, new LazyDslKt$itemsIndexed$$inlined$itemsIndexed$default$1(items), ComposableLambdaKt.composableLambdaInstance(-1091073711, true, new LazyDslKt$itemsIndexed$4(itemContent, items)));
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Use the non deprecated overload")
    public static final /* synthetic */ <T> void items(LazyListScope lazyListScope, T[] items, Function1<? super T, ? extends Object> function1, Function4<? super LazyItemScope, ? super T, ? super Composer, ? super Integer, Unit> itemContent) {
        Intrinsics.checkNotNullParameter(lazyListScope, "<this>");
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(itemContent, "itemContent");
        lazyListScope.items(items.length, function1 != null ? new LazyDslKt$items$6(function1, items) : null, new LazyDslKt$items$7(LazyDslKt$items$5.INSTANCE, items), ComposableLambdaKt.composableLambdaInstance(-1043393750, true, new LazyDslKt$items$8(itemContent, items)));
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Use the non deprecated overload")
    public static final /* synthetic */ <T> void itemsIndexed(LazyListScope lazyListScope, T[] items, Function2<? super Integer, ? super T, ? extends Object> function2, Function5<? super LazyItemScope, ? super Integer, ? super T, ? super Composer, ? super Integer, Unit> itemContent) {
        Intrinsics.checkNotNullParameter(lazyListScope, "<this>");
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(itemContent, "itemContent");
        lazyListScope.items(items.length, function2 != null ? new LazyDslKt$itemsIndexed$6(function2, items) : null, new LazyDslKt$itemsIndexed$$inlined$itemsIndexed$default$2(items), ComposableLambdaKt.composableLambdaInstance(1600639390, true, new LazyDslKt$itemsIndexed$8(itemContent, items)));
    }
}
