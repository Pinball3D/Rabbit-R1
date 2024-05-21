package androidx.compose.material3;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.graphics.Color;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: ColorScheme.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b|\n\u0002\u0010\u000e\n\u0000\b\u0007\u0018\u00002\u00020\u0001Bð\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\f\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\u0003\u0012\u0006\u0010\u0011\u001a\u00020\u0003\u0012\u0006\u0010\u0012\u001a\u00020\u0003\u0012\u0006\u0010\u0013\u001a\u00020\u0003\u0012\u0006\u0010\u0014\u001a\u00020\u0003\u0012\u0006\u0010\u0015\u001a\u00020\u0003\u0012\u0006\u0010\u0016\u001a\u00020\u0003\u0012\u0006\u0010\u0017\u001a\u00020\u0003\u0012\u0006\u0010\u0018\u001a\u00020\u0003\u0012\u0006\u0010\u0019\u001a\u00020\u0003\u0012\u0006\u0010\u001a\u001a\u00020\u0003\u0012\u0006\u0010\u001b\u001a\u00020\u0003\u0012\u0006\u0010\u001c\u001a\u00020\u0003\u0012\u0006\u0010\u001d\u001a\u00020\u0003\u0012\u0006\u0010\u001e\u001a\u00020\u0003\u0012\u0006\u0010\u001f\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0002\u0010 Jµ\u0002\u0010|\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\u00032\b\b\u0002\u0010\r\u001a\u00020\u00032\b\b\u0002\u0010\u000e\u001a\u00020\u00032\b\b\u0002\u0010\u000f\u001a\u00020\u00032\b\b\u0002\u0010\u0010\u001a\u00020\u00032\b\b\u0002\u0010\u0011\u001a\u00020\u00032\b\b\u0002\u0010\u0012\u001a\u00020\u00032\b\b\u0002\u0010\u0013\u001a\u00020\u00032\b\b\u0002\u0010\u0014\u001a\u00020\u00032\b\b\u0002\u0010\u0015\u001a\u00020\u00032\b\b\u0002\u0010\u0016\u001a\u00020\u00032\b\b\u0002\u0010\u0017\u001a\u00020\u00032\b\b\u0002\u0010\u0018\u001a\u00020\u00032\b\b\u0002\u0010\u0019\u001a\u00020\u00032\b\b\u0002\u0010\u001a\u001a\u00020\u00032\b\b\u0002\u0010\u001b\u001a\u00020\u00032\b\b\u0002\u0010\u001c\u001a\u00020\u00032\b\b\u0002\u0010\u001d\u001a\u00020\u00032\b\b\u0002\u0010\u001e\u001a\u00020\u00032\b\b\u0002\u0010\u001f\u001a\u00020\u0003ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b}\u0010~J\t\u0010\u007f\u001a\u00030\u0080\u0001H\u0016R4\u0010\u0010\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u00038F@@X\u0086\u008e\u0002ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R4\u0010\u0019\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u00038F@@X\u0086\u008e\u0002ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0012\n\u0004\b*\u0010'\u001a\u0004\b(\u0010#\"\u0004\b)\u0010%R4\u0010\u001b\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u00038F@@X\u0086\u008e\u0002ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0012\n\u0004\b-\u0010'\u001a\u0004\b+\u0010#\"\u0004\b,\u0010%R4\u0010\u0018\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u00038F@@X\u0086\u008e\u0002ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0012\n\u0004\b0\u0010'\u001a\u0004\b.\u0010#\"\u0004\b/\u0010%R4\u0010\u0007\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u00038F@@X\u0086\u008e\u0002ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0012\n\u0004\b3\u0010'\u001a\u0004\b1\u0010#\"\u0004\b2\u0010%R4\u0010\u0017\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u00038F@@X\u0086\u008e\u0002ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0012\n\u0004\b6\u0010'\u001a\u0004\b4\u0010#\"\u0004\b5\u0010%R4\u0010\u0011\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u00038F@@X\u0086\u008e\u0002ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0012\n\u0004\b9\u0010'\u001a\u0004\b7\u0010#\"\u0004\b8\u0010%R4\u0010\u001a\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u00038F@@X\u0086\u008e\u0002ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0012\n\u0004\b<\u0010'\u001a\u0004\b:\u0010#\"\u0004\b;\u0010%R4\u0010\u001c\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u00038F@@X\u0086\u008e\u0002ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0012\n\u0004\b?\u0010'\u001a\u0004\b=\u0010#\"\u0004\b>\u0010%R4\u0010\u0004\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u00038F@@X\u0086\u008e\u0002ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0012\n\u0004\bB\u0010'\u001a\u0004\b@\u0010#\"\u0004\bA\u0010%R4\u0010\u0006\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u00038F@@X\u0086\u008e\u0002ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0012\n\u0004\bE\u0010'\u001a\u0004\bC\u0010#\"\u0004\bD\u0010%R4\u0010\t\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u00038F@@X\u0086\u008e\u0002ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0012\n\u0004\bH\u0010'\u001a\u0004\bF\u0010#\"\u0004\bG\u0010%R4\u0010\u000b\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u00038F@@X\u0086\u008e\u0002ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0012\n\u0004\bK\u0010'\u001a\u0004\bI\u0010#\"\u0004\bJ\u0010%R4\u0010\u0013\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u00038F@@X\u0086\u008e\u0002ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0012\n\u0004\bN\u0010'\u001a\u0004\bL\u0010#\"\u0004\bM\u0010%R4\u0010\u0015\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u00038F@@X\u0086\u008e\u0002ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0012\n\u0004\bQ\u0010'\u001a\u0004\bO\u0010#\"\u0004\bP\u0010%R4\u0010\r\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u00038F@@X\u0086\u008e\u0002ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0012\n\u0004\bT\u0010'\u001a\u0004\bR\u0010#\"\u0004\bS\u0010%R4\u0010\u000f\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u00038F@@X\u0086\u008e\u0002ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0012\n\u0004\bW\u0010'\u001a\u0004\bU\u0010#\"\u0004\bV\u0010%R4\u0010\u001d\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u00038F@@X\u0086\u008e\u0002ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0012\n\u0004\bZ\u0010'\u001a\u0004\bX\u0010#\"\u0004\bY\u0010%R4\u0010\u001e\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u00038F@@X\u0086\u008e\u0002ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0012\n\u0004\b]\u0010'\u001a\u0004\b[\u0010#\"\u0004\b\\\u0010%R4\u0010\u0002\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u00038F@@X\u0086\u008e\u0002ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0012\n\u0004\b`\u0010'\u001a\u0004\b^\u0010#\"\u0004\b_\u0010%R4\u0010\u0005\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u00038F@@X\u0086\u008e\u0002ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0012\n\u0004\bc\u0010'\u001a\u0004\ba\u0010#\"\u0004\bb\u0010%R4\u0010\u001f\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u00038F@@X\u0086\u008e\u0002ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0012\n\u0004\bf\u0010'\u001a\u0004\bd\u0010#\"\u0004\be\u0010%R4\u0010\b\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u00038F@@X\u0086\u008e\u0002ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0012\n\u0004\bi\u0010'\u001a\u0004\bg\u0010#\"\u0004\bh\u0010%R4\u0010\n\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u00038F@@X\u0086\u008e\u0002ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0012\n\u0004\bl\u0010'\u001a\u0004\bj\u0010#\"\u0004\bk\u0010%R4\u0010\u0012\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u00038F@@X\u0086\u008e\u0002ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0012\n\u0004\bo\u0010'\u001a\u0004\bm\u0010#\"\u0004\bn\u0010%R4\u0010\u0016\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u00038F@@X\u0086\u008e\u0002ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0012\n\u0004\br\u0010'\u001a\u0004\bp\u0010#\"\u0004\bq\u0010%R4\u0010\u0014\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u00038F@@X\u0086\u008e\u0002ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0012\n\u0004\bu\u0010'\u001a\u0004\bs\u0010#\"\u0004\bt\u0010%R4\u0010\f\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u00038F@@X\u0086\u008e\u0002ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0012\n\u0004\bx\u0010'\u001a\u0004\bv\u0010#\"\u0004\bw\u0010%R4\u0010\u000e\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u00038F@@X\u0086\u008e\u0002ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0012\n\u0004\b{\u0010'\u001a\u0004\by\u0010#\"\u0004\bz\u0010%\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u0081\u0001"}, d2 = {"Landroidx/compose/material3/ColorScheme;", "", "primary", "Landroidx/compose/ui/graphics/Color;", "onPrimary", "primaryContainer", "onPrimaryContainer", "inversePrimary", "secondary", "onSecondary", "secondaryContainer", "onSecondaryContainer", "tertiary", "onTertiary", "tertiaryContainer", "onTertiaryContainer", "background", "onBackground", "surface", "onSurface", "surfaceVariant", "onSurfaceVariant", "surfaceTint", "inverseSurface", "inverseOnSurface", "error", "onError", "errorContainer", "onErrorContainer", "outline", "outlineVariant", "scrim", "(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "<set-?>", "getBackground-0d7_KjU", "()J", "setBackground-8_81llA$material3_release", "(J)V", "background$delegate", "Landroidx/compose/runtime/MutableState;", "getError-0d7_KjU", "setError-8_81llA$material3_release", "error$delegate", "getErrorContainer-0d7_KjU", "setErrorContainer-8_81llA$material3_release", "errorContainer$delegate", "getInverseOnSurface-0d7_KjU", "setInverseOnSurface-8_81llA$material3_release", "inverseOnSurface$delegate", "getInversePrimary-0d7_KjU", "setInversePrimary-8_81llA$material3_release", "inversePrimary$delegate", "getInverseSurface-0d7_KjU", "setInverseSurface-8_81llA$material3_release", "inverseSurface$delegate", "getOnBackground-0d7_KjU", "setOnBackground-8_81llA$material3_release", "onBackground$delegate", "getOnError-0d7_KjU", "setOnError-8_81llA$material3_release", "onError$delegate", "getOnErrorContainer-0d7_KjU", "setOnErrorContainer-8_81llA$material3_release", "onErrorContainer$delegate", "getOnPrimary-0d7_KjU", "setOnPrimary-8_81llA$material3_release", "onPrimary$delegate", "getOnPrimaryContainer-0d7_KjU", "setOnPrimaryContainer-8_81llA$material3_release", "onPrimaryContainer$delegate", "getOnSecondary-0d7_KjU", "setOnSecondary-8_81llA$material3_release", "onSecondary$delegate", "getOnSecondaryContainer-0d7_KjU", "setOnSecondaryContainer-8_81llA$material3_release", "onSecondaryContainer$delegate", "getOnSurface-0d7_KjU", "setOnSurface-8_81llA$material3_release", "onSurface$delegate", "getOnSurfaceVariant-0d7_KjU", "setOnSurfaceVariant-8_81llA$material3_release", "onSurfaceVariant$delegate", "getOnTertiary-0d7_KjU", "setOnTertiary-8_81llA$material3_release", "onTertiary$delegate", "getOnTertiaryContainer-0d7_KjU", "setOnTertiaryContainer-8_81llA$material3_release", "onTertiaryContainer$delegate", "getOutline-0d7_KjU", "setOutline-8_81llA$material3_release", "outline$delegate", "getOutlineVariant-0d7_KjU", "setOutlineVariant-8_81llA$material3_release", "outlineVariant$delegate", "getPrimary-0d7_KjU", "setPrimary-8_81llA$material3_release", "primary$delegate", "getPrimaryContainer-0d7_KjU", "setPrimaryContainer-8_81llA$material3_release", "primaryContainer$delegate", "getScrim-0d7_KjU", "setScrim-8_81llA$material3_release", "scrim$delegate", "getSecondary-0d7_KjU", "setSecondary-8_81llA$material3_release", "secondary$delegate", "getSecondaryContainer-0d7_KjU", "setSecondaryContainer-8_81llA$material3_release", "secondaryContainer$delegate", "getSurface-0d7_KjU", "setSurface-8_81llA$material3_release", "surface$delegate", "getSurfaceTint-0d7_KjU", "setSurfaceTint-8_81llA$material3_release", "surfaceTint$delegate", "getSurfaceVariant-0d7_KjU", "setSurfaceVariant-8_81llA$material3_release", "surfaceVariant$delegate", "getTertiary-0d7_KjU", "setTertiary-8_81llA$material3_release", "tertiary$delegate", "getTertiaryContainer-0d7_KjU", "setTertiaryContainer-8_81llA$material3_release", "tertiaryContainer$delegate", "copy", "copy-G1PFc-w", "(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)Landroidx/compose/material3/ColorScheme;", "toString", "", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ColorScheme {
    public static final int $stable = 0;

    /* renamed from: background$delegate, reason: from kotlin metadata */
    private final MutableState background;

    /* renamed from: error$delegate, reason: from kotlin metadata */
    private final MutableState error;

    /* renamed from: errorContainer$delegate, reason: from kotlin metadata */
    private final MutableState errorContainer;

    /* renamed from: inverseOnSurface$delegate, reason: from kotlin metadata */
    private final MutableState inverseOnSurface;

    /* renamed from: inversePrimary$delegate, reason: from kotlin metadata */
    private final MutableState inversePrimary;

    /* renamed from: inverseSurface$delegate, reason: from kotlin metadata */
    private final MutableState inverseSurface;

    /* renamed from: onBackground$delegate, reason: from kotlin metadata */
    private final MutableState onBackground;

    /* renamed from: onError$delegate, reason: from kotlin metadata */
    private final MutableState onError;

    /* renamed from: onErrorContainer$delegate, reason: from kotlin metadata */
    private final MutableState onErrorContainer;

    /* renamed from: onPrimary$delegate, reason: from kotlin metadata */
    private final MutableState onPrimary;

    /* renamed from: onPrimaryContainer$delegate, reason: from kotlin metadata */
    private final MutableState onPrimaryContainer;

    /* renamed from: onSecondary$delegate, reason: from kotlin metadata */
    private final MutableState onSecondary;

    /* renamed from: onSecondaryContainer$delegate, reason: from kotlin metadata */
    private final MutableState onSecondaryContainer;

    /* renamed from: onSurface$delegate, reason: from kotlin metadata */
    private final MutableState onSurface;

    /* renamed from: onSurfaceVariant$delegate, reason: from kotlin metadata */
    private final MutableState onSurfaceVariant;

    /* renamed from: onTertiary$delegate, reason: from kotlin metadata */
    private final MutableState onTertiary;

    /* renamed from: onTertiaryContainer$delegate, reason: from kotlin metadata */
    private final MutableState onTertiaryContainer;

    /* renamed from: outline$delegate, reason: from kotlin metadata */
    private final MutableState outline;

    /* renamed from: outlineVariant$delegate, reason: from kotlin metadata */
    private final MutableState outlineVariant;

    /* renamed from: primary$delegate, reason: from kotlin metadata */
    private final MutableState primary;

    /* renamed from: primaryContainer$delegate, reason: from kotlin metadata */
    private final MutableState primaryContainer;

    /* renamed from: scrim$delegate, reason: from kotlin metadata */
    private final MutableState scrim;

    /* renamed from: secondary$delegate, reason: from kotlin metadata */
    private final MutableState secondary;

    /* renamed from: secondaryContainer$delegate, reason: from kotlin metadata */
    private final MutableState secondaryContainer;

    /* renamed from: surface$delegate, reason: from kotlin metadata */
    private final MutableState surface;

    /* renamed from: surfaceTint$delegate, reason: from kotlin metadata */
    private final MutableState surfaceTint;

    /* renamed from: surfaceVariant$delegate, reason: from kotlin metadata */
    private final MutableState surfaceVariant;

    /* renamed from: tertiary$delegate, reason: from kotlin metadata */
    private final MutableState tertiary;

    /* renamed from: tertiaryContainer$delegate, reason: from kotlin metadata */
    private final MutableState tertiaryContainer;

    public /* synthetic */ ColorScheme(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2, j3, j4, j5, j6, j7, j8, j9, j10, j11, j12, j13, j14, j15, j16, j17, j18, j19, j20, j21, j22, j23, j24, j25, j26, j27, j28, j29);
    }

    private ColorScheme(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29) {
        this.primary = SnapshotStateKt.mutableStateOf(Color.m2629boximpl(j), SnapshotStateKt.structuralEqualityPolicy());
        this.onPrimary = SnapshotStateKt.mutableStateOf(Color.m2629boximpl(j2), SnapshotStateKt.structuralEqualityPolicy());
        this.primaryContainer = SnapshotStateKt.mutableStateOf(Color.m2629boximpl(j3), SnapshotStateKt.structuralEqualityPolicy());
        this.onPrimaryContainer = SnapshotStateKt.mutableStateOf(Color.m2629boximpl(j4), SnapshotStateKt.structuralEqualityPolicy());
        this.inversePrimary = SnapshotStateKt.mutableStateOf(Color.m2629boximpl(j5), SnapshotStateKt.structuralEqualityPolicy());
        this.secondary = SnapshotStateKt.mutableStateOf(Color.m2629boximpl(j6), SnapshotStateKt.structuralEqualityPolicy());
        this.onSecondary = SnapshotStateKt.mutableStateOf(Color.m2629boximpl(j7), SnapshotStateKt.structuralEqualityPolicy());
        this.secondaryContainer = SnapshotStateKt.mutableStateOf(Color.m2629boximpl(j8), SnapshotStateKt.structuralEqualityPolicy());
        this.onSecondaryContainer = SnapshotStateKt.mutableStateOf(Color.m2629boximpl(j9), SnapshotStateKt.structuralEqualityPolicy());
        this.tertiary = SnapshotStateKt.mutableStateOf(Color.m2629boximpl(j10), SnapshotStateKt.structuralEqualityPolicy());
        this.onTertiary = SnapshotStateKt.mutableStateOf(Color.m2629boximpl(j11), SnapshotStateKt.structuralEqualityPolicy());
        this.tertiaryContainer = SnapshotStateKt.mutableStateOf(Color.m2629boximpl(j12), SnapshotStateKt.structuralEqualityPolicy());
        this.onTertiaryContainer = SnapshotStateKt.mutableStateOf(Color.m2629boximpl(j13), SnapshotStateKt.structuralEqualityPolicy());
        this.background = SnapshotStateKt.mutableStateOf(Color.m2629boximpl(j14), SnapshotStateKt.structuralEqualityPolicy());
        this.onBackground = SnapshotStateKt.mutableStateOf(Color.m2629boximpl(j15), SnapshotStateKt.structuralEqualityPolicy());
        this.surface = SnapshotStateKt.mutableStateOf(Color.m2629boximpl(j16), SnapshotStateKt.structuralEqualityPolicy());
        this.onSurface = SnapshotStateKt.mutableStateOf(Color.m2629boximpl(j17), SnapshotStateKt.structuralEqualityPolicy());
        this.surfaceVariant = SnapshotStateKt.mutableStateOf(Color.m2629boximpl(j18), SnapshotStateKt.structuralEqualityPolicy());
        this.onSurfaceVariant = SnapshotStateKt.mutableStateOf(Color.m2629boximpl(j19), SnapshotStateKt.structuralEqualityPolicy());
        this.surfaceTint = SnapshotStateKt.mutableStateOf(Color.m2629boximpl(j20), SnapshotStateKt.structuralEqualityPolicy());
        this.inverseSurface = SnapshotStateKt.mutableStateOf(Color.m2629boximpl(j21), SnapshotStateKt.structuralEqualityPolicy());
        this.inverseOnSurface = SnapshotStateKt.mutableStateOf(Color.m2629boximpl(j22), SnapshotStateKt.structuralEqualityPolicy());
        this.error = SnapshotStateKt.mutableStateOf(Color.m2629boximpl(j23), SnapshotStateKt.structuralEqualityPolicy());
        this.onError = SnapshotStateKt.mutableStateOf(Color.m2629boximpl(j24), SnapshotStateKt.structuralEqualityPolicy());
        this.errorContainer = SnapshotStateKt.mutableStateOf(Color.m2629boximpl(j25), SnapshotStateKt.structuralEqualityPolicy());
        this.onErrorContainer = SnapshotStateKt.mutableStateOf(Color.m2629boximpl(j26), SnapshotStateKt.structuralEqualityPolicy());
        this.outline = SnapshotStateKt.mutableStateOf(Color.m2629boximpl(j27), SnapshotStateKt.structuralEqualityPolicy());
        this.outlineVariant = SnapshotStateKt.mutableStateOf(Color.m2629boximpl(j28), SnapshotStateKt.structuralEqualityPolicy());
        this.scrim = SnapshotStateKt.mutableStateOf(Color.m2629boximpl(j29), SnapshotStateKt.structuralEqualityPolicy());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: getPrimary-0d7_KjU, reason: not valid java name */
    public final long m1063getPrimary0d7_KjU() {
        return ((Color) this.primary.getValue()).m2649unboximpl();
    }

    /* renamed from: setPrimary-8_81llA$material3_release, reason: not valid java name */
    public final void m1092setPrimary8_81llA$material3_release(long j) {
        this.primary.setValue(Color.m2629boximpl(j));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: getOnPrimary-0d7_KjU, reason: not valid java name */
    public final long m1053getOnPrimary0d7_KjU() {
        return ((Color) this.onPrimary.getValue()).m2649unboximpl();
    }

    /* renamed from: setOnPrimary-8_81llA$material3_release, reason: not valid java name */
    public final void m1082setOnPrimary8_81llA$material3_release(long j) {
        this.onPrimary.setValue(Color.m2629boximpl(j));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: getPrimaryContainer-0d7_KjU, reason: not valid java name */
    public final long m1064getPrimaryContainer0d7_KjU() {
        return ((Color) this.primaryContainer.getValue()).m2649unboximpl();
    }

    /* renamed from: setPrimaryContainer-8_81llA$material3_release, reason: not valid java name */
    public final void m1093setPrimaryContainer8_81llA$material3_release(long j) {
        this.primaryContainer.setValue(Color.m2629boximpl(j));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: getOnPrimaryContainer-0d7_KjU, reason: not valid java name */
    public final long m1054getOnPrimaryContainer0d7_KjU() {
        return ((Color) this.onPrimaryContainer.getValue()).m2649unboximpl();
    }

    /* renamed from: setOnPrimaryContainer-8_81llA$material3_release, reason: not valid java name */
    public final void m1083setOnPrimaryContainer8_81llA$material3_release(long j) {
        this.onPrimaryContainer.setValue(Color.m2629boximpl(j));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: getInversePrimary-0d7_KjU, reason: not valid java name */
    public final long m1048getInversePrimary0d7_KjU() {
        return ((Color) this.inversePrimary.getValue()).m2649unboximpl();
    }

    /* renamed from: setInversePrimary-8_81llA$material3_release, reason: not valid java name */
    public final void m1077setInversePrimary8_81llA$material3_release(long j) {
        this.inversePrimary.setValue(Color.m2629boximpl(j));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: getSecondary-0d7_KjU, reason: not valid java name */
    public final long m1066getSecondary0d7_KjU() {
        return ((Color) this.secondary.getValue()).m2649unboximpl();
    }

    /* renamed from: setSecondary-8_81llA$material3_release, reason: not valid java name */
    public final void m1095setSecondary8_81llA$material3_release(long j) {
        this.secondary.setValue(Color.m2629boximpl(j));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: getOnSecondary-0d7_KjU, reason: not valid java name */
    public final long m1055getOnSecondary0d7_KjU() {
        return ((Color) this.onSecondary.getValue()).m2649unboximpl();
    }

    /* renamed from: setOnSecondary-8_81llA$material3_release, reason: not valid java name */
    public final void m1084setOnSecondary8_81llA$material3_release(long j) {
        this.onSecondary.setValue(Color.m2629boximpl(j));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: getSecondaryContainer-0d7_KjU, reason: not valid java name */
    public final long m1067getSecondaryContainer0d7_KjU() {
        return ((Color) this.secondaryContainer.getValue()).m2649unboximpl();
    }

    /* renamed from: setSecondaryContainer-8_81llA$material3_release, reason: not valid java name */
    public final void m1096setSecondaryContainer8_81llA$material3_release(long j) {
        this.secondaryContainer.setValue(Color.m2629boximpl(j));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: getOnSecondaryContainer-0d7_KjU, reason: not valid java name */
    public final long m1056getOnSecondaryContainer0d7_KjU() {
        return ((Color) this.onSecondaryContainer.getValue()).m2649unboximpl();
    }

    /* renamed from: setOnSecondaryContainer-8_81llA$material3_release, reason: not valid java name */
    public final void m1085setOnSecondaryContainer8_81llA$material3_release(long j) {
        this.onSecondaryContainer.setValue(Color.m2629boximpl(j));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: getTertiary-0d7_KjU, reason: not valid java name */
    public final long m1071getTertiary0d7_KjU() {
        return ((Color) this.tertiary.getValue()).m2649unboximpl();
    }

    /* renamed from: setTertiary-8_81llA$material3_release, reason: not valid java name */
    public final void m1100setTertiary8_81llA$material3_release(long j) {
        this.tertiary.setValue(Color.m2629boximpl(j));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: getOnTertiary-0d7_KjU, reason: not valid java name */
    public final long m1059getOnTertiary0d7_KjU() {
        return ((Color) this.onTertiary.getValue()).m2649unboximpl();
    }

    /* renamed from: setOnTertiary-8_81llA$material3_release, reason: not valid java name */
    public final void m1088setOnTertiary8_81llA$material3_release(long j) {
        this.onTertiary.setValue(Color.m2629boximpl(j));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: getTertiaryContainer-0d7_KjU, reason: not valid java name */
    public final long m1072getTertiaryContainer0d7_KjU() {
        return ((Color) this.tertiaryContainer.getValue()).m2649unboximpl();
    }

    /* renamed from: setTertiaryContainer-8_81llA$material3_release, reason: not valid java name */
    public final void m1101setTertiaryContainer8_81llA$material3_release(long j) {
        this.tertiaryContainer.setValue(Color.m2629boximpl(j));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: getOnTertiaryContainer-0d7_KjU, reason: not valid java name */
    public final long m1060getOnTertiaryContainer0d7_KjU() {
        return ((Color) this.onTertiaryContainer.getValue()).m2649unboximpl();
    }

    /* renamed from: setOnTertiaryContainer-8_81llA$material3_release, reason: not valid java name */
    public final void m1089setOnTertiaryContainer8_81llA$material3_release(long j) {
        this.onTertiaryContainer.setValue(Color.m2629boximpl(j));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: getBackground-0d7_KjU, reason: not valid java name */
    public final long m1044getBackground0d7_KjU() {
        return ((Color) this.background.getValue()).m2649unboximpl();
    }

    /* renamed from: setBackground-8_81llA$material3_release, reason: not valid java name */
    public final void m1073setBackground8_81llA$material3_release(long j) {
        this.background.setValue(Color.m2629boximpl(j));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: getOnBackground-0d7_KjU, reason: not valid java name */
    public final long m1050getOnBackground0d7_KjU() {
        return ((Color) this.onBackground.getValue()).m2649unboximpl();
    }

    /* renamed from: setOnBackground-8_81llA$material3_release, reason: not valid java name */
    public final void m1079setOnBackground8_81llA$material3_release(long j) {
        this.onBackground.setValue(Color.m2629boximpl(j));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: getSurface-0d7_KjU, reason: not valid java name */
    public final long m1068getSurface0d7_KjU() {
        return ((Color) this.surface.getValue()).m2649unboximpl();
    }

    /* renamed from: setSurface-8_81llA$material3_release, reason: not valid java name */
    public final void m1097setSurface8_81llA$material3_release(long j) {
        this.surface.setValue(Color.m2629boximpl(j));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: getOnSurface-0d7_KjU, reason: not valid java name */
    public final long m1057getOnSurface0d7_KjU() {
        return ((Color) this.onSurface.getValue()).m2649unboximpl();
    }

    /* renamed from: setOnSurface-8_81llA$material3_release, reason: not valid java name */
    public final void m1086setOnSurface8_81llA$material3_release(long j) {
        this.onSurface.setValue(Color.m2629boximpl(j));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: getSurfaceVariant-0d7_KjU, reason: not valid java name */
    public final long m1070getSurfaceVariant0d7_KjU() {
        return ((Color) this.surfaceVariant.getValue()).m2649unboximpl();
    }

    /* renamed from: setSurfaceVariant-8_81llA$material3_release, reason: not valid java name */
    public final void m1099setSurfaceVariant8_81llA$material3_release(long j) {
        this.surfaceVariant.setValue(Color.m2629boximpl(j));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: getOnSurfaceVariant-0d7_KjU, reason: not valid java name */
    public final long m1058getOnSurfaceVariant0d7_KjU() {
        return ((Color) this.onSurfaceVariant.getValue()).m2649unboximpl();
    }

    /* renamed from: setOnSurfaceVariant-8_81llA$material3_release, reason: not valid java name */
    public final void m1087setOnSurfaceVariant8_81llA$material3_release(long j) {
        this.onSurfaceVariant.setValue(Color.m2629boximpl(j));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: getSurfaceTint-0d7_KjU, reason: not valid java name */
    public final long m1069getSurfaceTint0d7_KjU() {
        return ((Color) this.surfaceTint.getValue()).m2649unboximpl();
    }

    /* renamed from: setSurfaceTint-8_81llA$material3_release, reason: not valid java name */
    public final void m1098setSurfaceTint8_81llA$material3_release(long j) {
        this.surfaceTint.setValue(Color.m2629boximpl(j));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: getInverseSurface-0d7_KjU, reason: not valid java name */
    public final long m1049getInverseSurface0d7_KjU() {
        return ((Color) this.inverseSurface.getValue()).m2649unboximpl();
    }

    /* renamed from: setInverseSurface-8_81llA$material3_release, reason: not valid java name */
    public final void m1078setInverseSurface8_81llA$material3_release(long j) {
        this.inverseSurface.setValue(Color.m2629boximpl(j));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: getInverseOnSurface-0d7_KjU, reason: not valid java name */
    public final long m1047getInverseOnSurface0d7_KjU() {
        return ((Color) this.inverseOnSurface.getValue()).m2649unboximpl();
    }

    /* renamed from: setInverseOnSurface-8_81llA$material3_release, reason: not valid java name */
    public final void m1076setInverseOnSurface8_81llA$material3_release(long j) {
        this.inverseOnSurface.setValue(Color.m2629boximpl(j));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: getError-0d7_KjU, reason: not valid java name */
    public final long m1045getError0d7_KjU() {
        return ((Color) this.error.getValue()).m2649unboximpl();
    }

    /* renamed from: setError-8_81llA$material3_release, reason: not valid java name */
    public final void m1074setError8_81llA$material3_release(long j) {
        this.error.setValue(Color.m2629boximpl(j));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: getOnError-0d7_KjU, reason: not valid java name */
    public final long m1051getOnError0d7_KjU() {
        return ((Color) this.onError.getValue()).m2649unboximpl();
    }

    /* renamed from: setOnError-8_81llA$material3_release, reason: not valid java name */
    public final void m1080setOnError8_81llA$material3_release(long j) {
        this.onError.setValue(Color.m2629boximpl(j));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: getErrorContainer-0d7_KjU, reason: not valid java name */
    public final long m1046getErrorContainer0d7_KjU() {
        return ((Color) this.errorContainer.getValue()).m2649unboximpl();
    }

    /* renamed from: setErrorContainer-8_81llA$material3_release, reason: not valid java name */
    public final void m1075setErrorContainer8_81llA$material3_release(long j) {
        this.errorContainer.setValue(Color.m2629boximpl(j));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: getOnErrorContainer-0d7_KjU, reason: not valid java name */
    public final long m1052getOnErrorContainer0d7_KjU() {
        return ((Color) this.onErrorContainer.getValue()).m2649unboximpl();
    }

    /* renamed from: setOnErrorContainer-8_81llA$material3_release, reason: not valid java name */
    public final void m1081setOnErrorContainer8_81llA$material3_release(long j) {
        this.onErrorContainer.setValue(Color.m2629boximpl(j));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: getOutline-0d7_KjU, reason: not valid java name */
    public final long m1061getOutline0d7_KjU() {
        return ((Color) this.outline.getValue()).m2649unboximpl();
    }

    /* renamed from: setOutline-8_81llA$material3_release, reason: not valid java name */
    public final void m1090setOutline8_81llA$material3_release(long j) {
        this.outline.setValue(Color.m2629boximpl(j));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: getOutlineVariant-0d7_KjU, reason: not valid java name */
    public final long m1062getOutlineVariant0d7_KjU() {
        return ((Color) this.outlineVariant.getValue()).m2649unboximpl();
    }

    /* renamed from: setOutlineVariant-8_81llA$material3_release, reason: not valid java name */
    public final void m1091setOutlineVariant8_81llA$material3_release(long j) {
        this.outlineVariant.setValue(Color.m2629boximpl(j));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: getScrim-0d7_KjU, reason: not valid java name */
    public final long m1065getScrim0d7_KjU() {
        return ((Color) this.scrim.getValue()).m2649unboximpl();
    }

    /* renamed from: setScrim-8_81llA$material3_release, reason: not valid java name */
    public final void m1094setScrim8_81llA$material3_release(long j) {
        this.scrim.setValue(Color.m2629boximpl(j));
    }

    /* renamed from: copy-G1PFc-w, reason: not valid java name */
    public final ColorScheme m1043copyG1PFcw(long primary, long onPrimary, long primaryContainer, long onPrimaryContainer, long inversePrimary, long secondary, long onSecondary, long secondaryContainer, long onSecondaryContainer, long tertiary, long onTertiary, long tertiaryContainer, long onTertiaryContainer, long background, long onBackground, long surface, long onSurface, long surfaceVariant, long onSurfaceVariant, long surfaceTint, long inverseSurface, long inverseOnSurface, long error, long onError, long errorContainer, long onErrorContainer, long outline, long outlineVariant, long scrim) {
        return new ColorScheme(primary, onPrimary, primaryContainer, onPrimaryContainer, inversePrimary, secondary, onSecondary, secondaryContainer, onSecondaryContainer, tertiary, onTertiary, tertiaryContainer, onTertiaryContainer, background, onBackground, surface, onSurface, surfaceVariant, onSurfaceVariant, surfaceTint, inverseSurface, inverseOnSurface, error, onError, errorContainer, onErrorContainer, outline, outlineVariant, scrim, null);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ColorScheme(primary=");
        sb.append((Object) Color.m2647toStringimpl(m1063getPrimary0d7_KjU())).append("onPrimary=").append((Object) Color.m2647toStringimpl(m1053getOnPrimary0d7_KjU())).append("primaryContainer=").append((Object) Color.m2647toStringimpl(m1064getPrimaryContainer0d7_KjU())).append("onPrimaryContainer=").append((Object) Color.m2647toStringimpl(m1054getOnPrimaryContainer0d7_KjU())).append("inversePrimary=").append((Object) Color.m2647toStringimpl(m1048getInversePrimary0d7_KjU())).append("secondary=").append((Object) Color.m2647toStringimpl(m1066getSecondary0d7_KjU())).append("onSecondary=").append((Object) Color.m2647toStringimpl(m1055getOnSecondary0d7_KjU())).append("secondaryContainer=").append((Object) Color.m2647toStringimpl(m1067getSecondaryContainer0d7_KjU())).append("onSecondaryContainer=").append((Object) Color.m2647toStringimpl(m1056getOnSecondaryContainer0d7_KjU())).append("tertiary=").append((Object) Color.m2647toStringimpl(m1071getTertiary0d7_KjU())).append("onTertiary=").append((Object) Color.m2647toStringimpl(m1059getOnTertiary0d7_KjU())).append("tertiaryContainer=");
        sb.append((Object) Color.m2647toStringimpl(m1072getTertiaryContainer0d7_KjU())).append("onTertiaryContainer=").append((Object) Color.m2647toStringimpl(m1060getOnTertiaryContainer0d7_KjU())).append("background=").append((Object) Color.m2647toStringimpl(m1044getBackground0d7_KjU())).append("onBackground=").append((Object) Color.m2647toStringimpl(m1050getOnBackground0d7_KjU())).append("surface=").append((Object) Color.m2647toStringimpl(m1068getSurface0d7_KjU())).append("onSurface=").append((Object) Color.m2647toStringimpl(m1057getOnSurface0d7_KjU())).append("surfaceVariant=").append((Object) Color.m2647toStringimpl(m1070getSurfaceVariant0d7_KjU())).append("onSurfaceVariant=").append((Object) Color.m2647toStringimpl(m1058getOnSurfaceVariant0d7_KjU())).append("surfaceTint=").append((Object) Color.m2647toStringimpl(m1069getSurfaceTint0d7_KjU())).append("inverseSurface=").append((Object) Color.m2647toStringimpl(m1049getInverseSurface0d7_KjU())).append("inverseOnSurface=").append((Object) Color.m2647toStringimpl(m1047getInverseOnSurface0d7_KjU())).append("error=").append((Object) Color.m2647toStringimpl(m1045getError0d7_KjU()));
        sb.append("onError=").append((Object) Color.m2647toStringimpl(m1051getOnError0d7_KjU())).append("errorContainer=").append((Object) Color.m2647toStringimpl(m1046getErrorContainer0d7_KjU())).append("onErrorContainer=").append((Object) Color.m2647toStringimpl(m1052getOnErrorContainer0d7_KjU())).append("outline=").append((Object) Color.m2647toStringimpl(m1061getOutline0d7_KjU())).append("outlineVariant=").append((Object) Color.m2647toStringimpl(m1062getOutlineVariant0d7_KjU())).append("scrim=").append((Object) Color.m2647toStringimpl(m1065getScrim0d7_KjU())).append(')');
        return sb.toString();
    }
}
