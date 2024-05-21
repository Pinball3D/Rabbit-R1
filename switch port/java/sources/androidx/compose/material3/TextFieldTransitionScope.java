package androidx.compose.material3;

import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import kotlin.Metadata;

/* compiled from: TextFieldImpl.kt */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\b\t\bÂ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JÊ\u0001\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\b0\u000b¢\u0006\u0002\b\f2\u0006\u0010\r\u001a\u00020\u000e2z\u0010\u000f\u001av\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0014\u0012\u0013\u0012\u00110\b¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0015\u0012\u0013\u0012\u00110\b¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0016\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0017\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0018\u0012\u0004\u0012\u00020\u00040\u0010¢\u0006\u0002\b\fH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0019\u0010\u001a\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u001b"}, d2 = {"Landroidx/compose/material3/TextFieldTransitionScope;", "", "()V", "Transition", "", "inputState", "Landroidx/compose/material3/InputPhase;", "focusedTextStyleColor", "Landroidx/compose/ui/graphics/Color;", "unfocusedTextStyleColor", "contentColor", "Lkotlin/Function1;", "Landroidx/compose/runtime/Composable;", "showLabel", "", "content", "Lkotlin/Function5;", "", "Lkotlin/ParameterName;", "name", "labelProgress", "labelTextStyleColor", "labelContentColor", "placeholderOpacity", "prefixSuffixOpacity", "Transition-DTcfvLk", "(Landroidx/compose/material3/InputPhase;JJLkotlin/jvm/functions/Function3;ZLkotlin/jvm/functions/Function7;Landroidx/compose/runtime/Composer;I)V", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class TextFieldTransitionScope {
    public static final TextFieldTransitionScope INSTANCE = new TextFieldTransitionScope();

    /* compiled from: TextFieldImpl.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[InputPhase.values().length];
            try {
                iArr[InputPhase.Focused.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[InputPhase.UnfocusedEmpty.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[InputPhase.UnfocusedNotEmpty.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private TextFieldTransitionScope() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:189:0x0240, code lost:
    
        if (r32 != false) goto L115;
     */
    /* JADX WARN: Code restructure failed: missing block: B:193:0x01fa, code lost:
    
        if (r32 != false) goto L97;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0221  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x024b  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x02aa  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x02bb  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x02d4  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x02f0  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0301  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0318  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x036c  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x037b  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0386  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x03a5  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x03dd  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x03ec  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x03f7  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0413  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0422  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x042d  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x049c  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0559  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0425  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x03ef  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x037e  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01db  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0205  */
    /* renamed from: Transition-DTcfvLk, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1560TransitionDTcfvLk(final androidx.compose.material3.InputPhase r26, final long r27, final long r29, final kotlin.jvm.functions.Function3<? super androidx.compose.material3.InputPhase, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, androidx.compose.ui.graphics.Color> r31, final boolean r32, final kotlin.jvm.functions.Function7<? super java.lang.Float, ? super androidx.compose.ui.graphics.Color, ? super androidx.compose.ui.graphics.Color, ? super java.lang.Float, ? super java.lang.Float, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r33, androidx.compose.runtime.Composer r34, final int r35) {
        /*
            Method dump skipped, instructions count: 1407
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.TextFieldTransitionScope.m1560TransitionDTcfvLk(androidx.compose.material3.InputPhase, long, long, kotlin.jvm.functions.Function3, boolean, kotlin.jvm.functions.Function7, androidx.compose.runtime.Composer, int):void");
    }

    private static final float Transition_DTcfvLk$lambda$1(State<Float> state) {
        return state.getValue().floatValue();
    }

    private static final float Transition_DTcfvLk$lambda$3(State<Float> state) {
        return state.getValue().floatValue();
    }

    private static final float Transition_DTcfvLk$lambda$5(State<Float> state) {
        return state.getValue().floatValue();
    }

    private static final long Transition_DTcfvLk$lambda$7(State<Color> state) {
        return state.getValue().m2649unboximpl();
    }

    private static final long Transition_DTcfvLk$lambda$8(State<Color> state) {
        return state.getValue().m2649unboximpl();
    }
}
