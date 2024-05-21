package androidx.compose.ui.layout;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: BeyondBoundsLayout.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001:\u0002\f\rJ@\u0010\u0002\u001a\u0004\u0018\u0001H\u0003\"\u0004\b\u0000\u0010\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0019\u0010\u0006\u001a\u0015\u0012\u0004\u0012\u00020\b\u0012\u0006\u0012\u0004\u0018\u0001H\u00030\u0007¢\u0006\u0002\b\tH&ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\n\u0010\u000bø\u0001\u0002\u0082\u0002\u0011\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019\n\u0004\b!0\u0001¨\u0006\u000eÀ\u0006\u0001"}, d2 = {"Landroidx/compose/ui/layout/BeyondBoundsLayout;", "", "layout", ExifInterface.GPS_DIRECTION_TRUE, "direction", "Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;", "block", "Lkotlin/Function1;", "Landroidx/compose/ui/layout/BeyondBoundsLayout$BeyondBoundsScope;", "Lkotlin/ExtensionFunctionType;", "layout-o7g1Pn8", "(ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "BeyondBoundsScope", "LayoutDirection", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface BeyondBoundsLayout {

    /* compiled from: BeyondBoundsLayout.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/layout/BeyondBoundsLayout$BeyondBoundsScope;", "", "hasMoreContent", "", "getHasMoreContent", "()Z", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public interface BeyondBoundsScope {
        boolean getHasMoreContent();
    }

    /* renamed from: layout-o7g1Pn8 */
    <T> T mo644layouto7g1Pn8(int direction, Function1<? super BeyondBoundsScope, ? extends T> block);

    /* compiled from: BeyondBoundsLayout.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087@\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0014\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005J\u001a\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b\f\u0010\u0005J\u000f\u0010\r\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\u0088\u0001\u0002\u0092\u0001\u00020\u0003ø\u0001\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;", "", "value", "", "constructor-impl", "(I)I", "equals", "", "other", "equals-impl", "(ILjava/lang/Object;)Z", "hashCode", "hashCode-impl", "toString", "", "toString-impl", "(I)Ljava/lang/String;", "Companion", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @JvmInline
    /* loaded from: classes.dex */
    public static final class LayoutDirection {
        private final int value;

        /* renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final int Before = m3854constructorimpl(1);
        private static final int After = m3854constructorimpl(2);
        private static final int Left = m3854constructorimpl(3);
        private static final int Right = m3854constructorimpl(4);
        private static final int Above = m3854constructorimpl(5);
        private static final int Below = m3854constructorimpl(6);

        /* renamed from: box-impl, reason: not valid java name */
        public static final /* synthetic */ LayoutDirection m3853boximpl(int i) {
            return new LayoutDirection(i);
        }

        /* renamed from: constructor-impl, reason: not valid java name */
        public static int m3854constructorimpl(int i) {
            return i;
        }

        /* renamed from: equals-impl, reason: not valid java name */
        public static boolean m3855equalsimpl(int i, Object obj) {
            return (obj instanceof LayoutDirection) && i == ((LayoutDirection) obj).getValue();
        }

        /* renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m3856equalsimpl0(int i, int i2) {
            return i == i2;
        }

        /* renamed from: hashCode-impl, reason: not valid java name */
        public static int m3857hashCodeimpl(int i) {
            return Integer.hashCode(i);
        }

        public boolean equals(Object obj) {
            return m3855equalsimpl(this.value, obj);
        }

        public int hashCode() {
            return m3857hashCodeimpl(this.value);
        }

        /* renamed from: unbox-impl, reason: not valid java name and from getter */
        public final /* synthetic */ int getValue() {
            return this.value;
        }

        private /* synthetic */ LayoutDirection(int i) {
            this.value = i;
        }

        /* compiled from: BeyondBoundsLayout.kt */
        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0005\u0010\u0006R\u001c\u0010\b\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\t\u0010\u0006R\u001c\u0010\n\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u000b\u0010\u0006R\u001c\u0010\f\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\r\u0010\u0006R\u001c\u0010\u000e\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u000f\u0010\u0006R\u001c\u0010\u0010\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0011\u0010\u0006\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u0012"}, d2 = {"Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;", "", "()V", "Above", "Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;", "getAbove-hoxUOeE", "()I", "I", "After", "getAfter-hoxUOeE", "Before", "getBefore-hoxUOeE", "Below", "getBelow-hoxUOeE", "Left", "getLeft-hoxUOeE", "Right", "getRight-hoxUOeE", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            /* renamed from: getBefore-hoxUOeE, reason: not valid java name */
            public final int m3862getBeforehoxUOeE() {
                return LayoutDirection.Before;
            }

            /* renamed from: getAfter-hoxUOeE, reason: not valid java name */
            public final int m3861getAfterhoxUOeE() {
                return LayoutDirection.After;
            }

            /* renamed from: getLeft-hoxUOeE, reason: not valid java name */
            public final int m3864getLefthoxUOeE() {
                return LayoutDirection.Left;
            }

            /* renamed from: getRight-hoxUOeE, reason: not valid java name */
            public final int m3865getRighthoxUOeE() {
                return LayoutDirection.Right;
            }

            /* renamed from: getAbove-hoxUOeE, reason: not valid java name */
            public final int m3860getAbovehoxUOeE() {
                return LayoutDirection.Above;
            }

            /* renamed from: getBelow-hoxUOeE, reason: not valid java name */
            public final int m3863getBelowhoxUOeE() {
                return LayoutDirection.Below;
            }
        }

        public String toString() {
            return m3858toStringimpl(this.value);
        }

        /* renamed from: toString-impl, reason: not valid java name */
        public static String m3858toStringimpl(int i) {
            return m3856equalsimpl0(i, Before) ? "Before" : m3856equalsimpl0(i, After) ? "After" : m3856equalsimpl0(i, Left) ? "Left" : m3856equalsimpl0(i, Right) ? "Right" : m3856equalsimpl0(i, Above) ? "Above" : m3856equalsimpl0(i, Below) ? "Below" : "invalid LayoutDirection";
        }
    }
}
