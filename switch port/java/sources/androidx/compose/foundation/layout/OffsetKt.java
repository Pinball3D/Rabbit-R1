package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntOffset;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Offset.kt */
@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a&\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006ø\u0001\u0000\u001a-\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\bH\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000b\u001a&\u0010\u0002\u001a\u00020\u0001*\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006ø\u0001\u0000\u001a-\u0010\u0002\u001a\u00020\u0001*\u00020\u00012\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\bH\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\f\u0010\u000b\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006\r"}, d2 = {"absoluteOffset", "Landroidx/compose/ui/Modifier;", "offset", "Lkotlin/Function1;", "Landroidx/compose/ui/unit/Density;", "Landroidx/compose/ui/unit/IntOffset;", "Lkotlin/ExtensionFunctionType;", ViewHierarchyNode.JsonKeys.X, "Landroidx/compose/ui/unit/Dp;", ViewHierarchyNode.JsonKeys.Y, "absoluteOffset-VpY3zN4", "(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;", "offset-VpY3zN4", "foundation-layout_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class OffsetKt {
    /* renamed from: offset-VpY3zN4, reason: not valid java name */
    public static final Modifier m450offsetVpY3zN4(Modifier offset, final float f, final float f2) {
        Intrinsics.checkNotNullParameter(offset, "$this$offset");
        return offset.then(new OffsetElement(f, f2, true, new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.OffsetKt$offset$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(InspectorInfo inspectorInfo) {
                invoke2(inspectorInfo);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(InspectorInfo $receiver) {
                Intrinsics.checkNotNullParameter($receiver, "$this$$receiver");
                $receiver.setName("offset");
                $receiver.getProperties().set(ViewHierarchyNode.JsonKeys.X, Dp.m4881boximpl(f));
                $receiver.getProperties().set(ViewHierarchyNode.JsonKeys.Y, Dp.m4881boximpl(f2));
            }
        }, null));
    }

    /* renamed from: absoluteOffset-VpY3zN4, reason: not valid java name */
    public static final Modifier m448absoluteOffsetVpY3zN4(Modifier absoluteOffset, final float f, final float f2) {
        Intrinsics.checkNotNullParameter(absoluteOffset, "$this$absoluteOffset");
        return absoluteOffset.then(new OffsetElement(f, f2, false, new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.OffsetKt$absoluteOffset$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(InspectorInfo inspectorInfo) {
                invoke2(inspectorInfo);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(InspectorInfo $receiver) {
                Intrinsics.checkNotNullParameter($receiver, "$this$$receiver");
                $receiver.setName("absoluteOffset");
                $receiver.getProperties().set(ViewHierarchyNode.JsonKeys.X, Dp.m4881boximpl(f));
                $receiver.getProperties().set(ViewHierarchyNode.JsonKeys.Y, Dp.m4881boximpl(f2));
            }
        }, null));
    }

    public static final Modifier offset(Modifier modifier, final Function1<? super Density, IntOffset> offset) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(offset, "offset");
        return modifier.then(new OffsetPxElement(offset, true, new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.OffsetKt$offset$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(InspectorInfo inspectorInfo) {
                invoke2(inspectorInfo);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(InspectorInfo $receiver) {
                Intrinsics.checkNotNullParameter($receiver, "$this$$receiver");
                $receiver.setName("offset");
                $receiver.getProperties().set("offset", offset);
            }
        }));
    }

    public static final Modifier absoluteOffset(Modifier modifier, final Function1<? super Density, IntOffset> offset) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(offset, "offset");
        return modifier.then(new OffsetPxElement(offset, false, new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.OffsetKt$absoluteOffset$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(InspectorInfo inspectorInfo) {
                invoke2(inspectorInfo);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(InspectorInfo $receiver) {
                Intrinsics.checkNotNullParameter($receiver, "$this$$receiver");
                $receiver.setName("absoluteOffset");
                $receiver.getProperties().set("offset", offset);
            }
        }));
    }

    /* renamed from: offset-VpY3zN4$default, reason: not valid java name */
    public static /* synthetic */ Modifier m451offsetVpY3zN4$default(Modifier modifier, float f, float f2, int i, Object obj) {
        if ((i & 1) != 0) {
            f = Dp.m4883constructorimpl(0);
        }
        if ((i & 2) != 0) {
            f2 = Dp.m4883constructorimpl(0);
        }
        return m450offsetVpY3zN4(modifier, f, f2);
    }

    /* renamed from: absoluteOffset-VpY3zN4$default, reason: not valid java name */
    public static /* synthetic */ Modifier m449absoluteOffsetVpY3zN4$default(Modifier modifier, float f, float f2, int i, Object obj) {
        if ((i & 1) != 0) {
            f = Dp.m4883constructorimpl(0);
        }
        if ((i & 2) != 0) {
            f2 = Dp.m4883constructorimpl(0);
        }
        return m448absoluteOffsetVpY3zN4(modifier, f, f2);
    }
}
