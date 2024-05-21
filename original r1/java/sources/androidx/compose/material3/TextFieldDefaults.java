package androidx.compose.material3;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.text.selection.TextSelectionColors;
import androidx.compose.foundation.text.selection.TextSelectionColorsKt;
import androidx.compose.material3.tokens.FilledTextFieldTokens;
import androidx.compose.material3.tokens.OutlinedTextFieldTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.State;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.Dp;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TextFieldDefaults.kt */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\bC\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J7\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\b\b\u0002\u0010\u001c\u001a\u00020\u0015H\u0007¢\u0006\u0002\u0010'J¦\u0002\u0010(\u001a\u00020\u001f2\u0006\u0010)\u001a\u00020*2\u0011\u0010+\u001a\r\u0012\u0004\u0012\u00020\u001f0,¢\u0006\u0002\b-2\u0006\u0010 \u001a\u00020!2\u0006\u0010.\u001a\u00020!2\u0006\u0010/\u001a\u0002002\u0006\u0010#\u001a\u00020$2\b\b\u0002\u0010\"\u001a\u00020!2\u0015\b\u0002\u00101\u001a\u000f\u0012\u0004\u0012\u00020\u001f\u0018\u00010,¢\u0006\u0002\b-2\u0015\b\u0002\u00102\u001a\u000f\u0012\u0004\u0012\u00020\u001f\u0018\u00010,¢\u0006\u0002\b-2\u0015\b\u0002\u00103\u001a\u000f\u0012\u0004\u0012\u00020\u001f\u0018\u00010,¢\u0006\u0002\b-2\u0015\b\u0002\u00104\u001a\u000f\u0012\u0004\u0012\u00020\u001f\u0018\u00010,¢\u0006\u0002\b-2\u0015\b\u0002\u00105\u001a\u000f\u0012\u0004\u0012\u00020\u001f\u0018\u00010,¢\u0006\u0002\b-2\u0015\b\u0002\u00106\u001a\u000f\u0012\u0004\u0012\u00020\u001f\u0018\u00010,¢\u0006\u0002\b-2\u0015\b\u0002\u00107\u001a\u000f\u0012\u0004\u0012\u00020\u001f\u0018\u00010,¢\u0006\u0002\b-2\b\b\u0002\u0010\u001c\u001a\u00020\u00152\b\b\u0002\u0010%\u001a\u00020&2\b\b\u0002\u00108\u001a\u0002092\u0013\b\u0002\u0010:\u001a\r\u0012\u0004\u0012\u00020\u001f0,¢\u0006\u0002\b-H\u0007¢\u0006\u0002\u0010;J7\u0010<\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\b\b\u0002\u0010\u001c\u001a\u00020\u0015H\u0007¢\u0006\u0002\u0010'JS\u0010=\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\b\b\u0002\u0010\u001c\u001a\u00020\u00152\b\b\u0002\u0010>\u001a\u00020\u00042\b\b\u0002\u0010?\u001a\u00020\u0004H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b@\u0010AJ\u009c\u0002\u0010B\u001a\u00020\u001f2\u0006\u0010)\u001a\u00020*2\u0011\u0010+\u001a\r\u0012\u0004\u0012\u00020\u001f0,¢\u0006\u0002\b-2\u0006\u0010 \u001a\u00020!2\u0006\u0010.\u001a\u00020!2\u0006\u0010/\u001a\u0002002\u0006\u0010#\u001a\u00020$2\b\b\u0002\u0010\"\u001a\u00020!2\u0015\b\u0002\u00101\u001a\u000f\u0012\u0004\u0012\u00020\u001f\u0018\u00010,¢\u0006\u0002\b-2\u0015\b\u0002\u00102\u001a\u000f\u0012\u0004\u0012\u00020\u001f\u0018\u00010,¢\u0006\u0002\b-2\u0015\b\u0002\u00103\u001a\u000f\u0012\u0004\u0012\u00020\u001f\u0018\u00010,¢\u0006\u0002\b-2\u0015\b\u0002\u00104\u001a\u000f\u0012\u0004\u0012\u00020\u001f\u0018\u00010,¢\u0006\u0002\b-2\u0015\b\u0002\u00105\u001a\u000f\u0012\u0004\u0012\u00020\u001f\u0018\u00010,¢\u0006\u0002\b-2\u0015\b\u0002\u00106\u001a\u000f\u0012\u0004\u0012\u00020\u001f\u0018\u00010,¢\u0006\u0002\b-2\u0015\b\u0002\u00107\u001a\u000f\u0012\u0004\u0012\u00020\u001f\u0018\u00010,¢\u0006\u0002\b-2\b\b\u0002\u0010%\u001a\u00020&2\b\b\u0002\u00108\u001a\u0002092\u0013\b\u0002\u0010:\u001a\r\u0012\u0004\u0012\u00020\u001f0,¢\u0006\u0002\b-H\u0007¢\u0006\u0002\u0010CJî\u0001\u0010B\u001a\u00020\u001f2\u0006\u0010)\u001a\u00020*2\u0011\u0010+\u001a\r\u0012\u0004\u0012\u00020\u001f0,¢\u0006\u0002\b-2\u0006\u0010 \u001a\u00020!2\u0006\u0010.\u001a\u00020!2\u0006\u0010/\u001a\u0002002\u0006\u0010#\u001a\u00020$2\b\b\u0002\u0010\"\u001a\u00020!2\u0015\b\u0002\u00101\u001a\u000f\u0012\u0004\u0012\u00020\u001f\u0018\u00010,¢\u0006\u0002\b-2\u0015\b\u0002\u00102\u001a\u000f\u0012\u0004\u0012\u00020\u001f\u0018\u00010,¢\u0006\u0002\b-2\u0015\b\u0002\u00103\u001a\u000f\u0012\u0004\u0012\u00020\u001f\u0018\u00010,¢\u0006\u0002\b-2\u0015\b\u0002\u00104\u001a\u000f\u0012\u0004\u0012\u00020\u001f\u0018\u00010,¢\u0006\u0002\b-2\u0015\b\u0002\u00107\u001a\u000f\u0012\u0004\u0012\u00020\u001f\u0018\u00010,¢\u0006\u0002\b-2\b\b\u0002\u0010%\u001a\u00020&2\b\b\u0002\u00108\u001a\u0002092\u0013\b\u0002\u0010:\u001a\r\u0012\u0004\u0012\u00020\u001f0,¢\u0006\u0002\b-H\u0007¢\u0006\u0002\u0010DJ¦\u0002\u0010E\u001a\u00020\u001f2\u0006\u0010)\u001a\u00020*2\u0011\u0010+\u001a\r\u0012\u0004\u0012\u00020\u001f0,¢\u0006\u0002\b-2\u0006\u0010 \u001a\u00020!2\u0006\u0010.\u001a\u00020!2\u0006\u0010/\u001a\u0002002\u0006\u0010#\u001a\u00020$2\b\b\u0002\u0010\"\u001a\u00020!2\u0015\b\u0002\u00101\u001a\u000f\u0012\u0004\u0012\u00020\u001f\u0018\u00010,¢\u0006\u0002\b-2\u0015\b\u0002\u00102\u001a\u000f\u0012\u0004\u0012\u00020\u001f\u0018\u00010,¢\u0006\u0002\b-2\u0015\b\u0002\u00103\u001a\u000f\u0012\u0004\u0012\u00020\u001f\u0018\u00010,¢\u0006\u0002\b-2\u0015\b\u0002\u00104\u001a\u000f\u0012\u0004\u0012\u00020\u001f\u0018\u00010,¢\u0006\u0002\b-2\u0015\b\u0002\u00105\u001a\u000f\u0012\u0004\u0012\u00020\u001f\u0018\u00010,¢\u0006\u0002\b-2\u0015\b\u0002\u00106\u001a\u000f\u0012\u0004\u0012\u00020\u001f\u0018\u00010,¢\u0006\u0002\b-2\u0015\b\u0002\u00107\u001a\u000f\u0012\u0004\u0012\u00020\u001f\u0018\u00010,¢\u0006\u0002\b-2\b\b\u0002\u0010\u001c\u001a\u00020\u00152\b\b\u0002\u0010%\u001a\u00020&2\b\b\u0002\u00108\u001a\u0002092\u0013\b\u0002\u0010:\u001a\r\u0012\u0004\u0012\u00020\u001f0,¢\u0006\u0002\b-H\u0007¢\u0006\u0002\u0010;Jø\u0001\u0010E\u001a\u00020\u001f2\u0006\u0010)\u001a\u00020*2\u0011\u0010+\u001a\r\u0012\u0004\u0012\u00020\u001f0,¢\u0006\u0002\b-2\u0006\u0010 \u001a\u00020!2\u0006\u0010.\u001a\u00020!2\u0006\u0010/\u001a\u0002002\u0006\u0010#\u001a\u00020$2\b\b\u0002\u0010\"\u001a\u00020!2\u0015\b\u0002\u00101\u001a\u000f\u0012\u0004\u0012\u00020\u001f\u0018\u00010,¢\u0006\u0002\b-2\u0015\b\u0002\u00102\u001a\u000f\u0012\u0004\u0012\u00020\u001f\u0018\u00010,¢\u0006\u0002\b-2\u0015\b\u0002\u00103\u001a\u000f\u0012\u0004\u0012\u00020\u001f\u0018\u00010,¢\u0006\u0002\b-2\u0015\b\u0002\u00104\u001a\u000f\u0012\u0004\u0012\u00020\u001f\u0018\u00010,¢\u0006\u0002\b-2\u0015\b\u0002\u00107\u001a\u000f\u0012\u0004\u0012\u00020\u001f\u0018\u00010,¢\u0006\u0002\b-2\b\b\u0002\u0010\u001c\u001a\u00020\u00152\b\b\u0002\u0010%\u001a\u00020&2\b\b\u0002\u00108\u001a\u0002092\u0013\b\u0002\u0010:\u001a\r\u0012\u0004\u0012\u00020\u001f0,¢\u0006\u0002\b-H\u0007¢\u0006\u0002\u0010FJÃ\u0003\u0010%\u001a\u00020&2\b\b\u0002\u0010G\u001a\u00020H2\b\b\u0002\u0010I\u001a\u00020H2\b\b\u0002\u0010J\u001a\u00020H2\b\b\u0002\u0010K\u001a\u00020H2\b\b\u0002\u0010L\u001a\u00020H2\b\b\u0002\u0010M\u001a\u00020H2\b\b\u0002\u0010N\u001a\u00020H2\b\b\u0002\u0010O\u001a\u00020H2\b\b\u0002\u0010P\u001a\u00020H2\b\b\u0002\u0010Q\u001a\u00020H2\b\b\u0002\u0010R\u001a\u00020S2\b\b\u0002\u0010T\u001a\u00020H2\b\b\u0002\u0010U\u001a\u00020H2\b\b\u0002\u0010V\u001a\u00020H2\b\b\u0002\u0010W\u001a\u00020H2\b\b\u0002\u0010X\u001a\u00020H2\b\b\u0002\u0010Y\u001a\u00020H2\b\b\u0002\u0010Z\u001a\u00020H2\b\b\u0002\u0010[\u001a\u00020H2\b\b\u0002\u0010\\\u001a\u00020H2\b\b\u0002\u0010]\u001a\u00020H2\b\b\u0002\u0010^\u001a\u00020H2\b\b\u0002\u0010_\u001a\u00020H2\b\b\u0002\u0010`\u001a\u00020H2\b\b\u0002\u0010a\u001a\u00020H2\b\b\u0002\u0010b\u001a\u00020H2\b\b\u0002\u0010c\u001a\u00020H2\b\b\u0002\u0010d\u001a\u00020H2\b\b\u0002\u0010e\u001a\u00020H2\b\b\u0002\u0010f\u001a\u00020H2\b\b\u0002\u0010g\u001a\u00020H2\b\b\u0002\u0010h\u001a\u00020H2\b\b\u0002\u0010i\u001a\u00020H2\b\b\u0002\u0010j\u001a\u00020H2\b\b\u0002\u0010k\u001a\u00020H2\b\b\u0002\u0010l\u001a\u00020H2\b\b\u0002\u0010m\u001a\u00020H2\b\b\u0002\u0010n\u001a\u00020H2\b\b\u0002\u0010o\u001a\u00020H2\b\b\u0002\u0010p\u001a\u00020H2\b\b\u0002\u0010q\u001a\u00020H2\b\b\u0002\u0010r\u001a\u00020H2\b\b\u0002\u0010s\u001a\u00020HH\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bt\u0010uJ;\u0010v\u001a\u0002092\b\b\u0002\u0010w\u001a\u00020\u00042\b\b\u0002\u0010x\u001a\u00020\u00042\b\b\u0002\u0010y\u001a\u00020\u00042\b\b\u0002\u0010z\u001a\u00020\u0004ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b{\u0010|J;\u0010}\u001a\u0002092\b\b\u0002\u0010w\u001a\u00020\u00042\b\b\u0002\u0010y\u001a\u00020\u00042\b\b\u0002\u0010x\u001a\u00020\u00042\b\b\u0002\u0010z\u001a\u00020\u0004ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b~\u0010|J\u0086\u0003\u0010\u007f\u001a\u00020&2\t\b\u0002\u0010\u0080\u0001\u001a\u00020H2\b\b\u0002\u0010J\u001a\u00020H2\t\b\u0002\u0010\u0081\u0001\u001a\u00020H2\b\b\u0002\u0010P\u001a\u00020H2\b\b\u0002\u0010Q\u001a\u00020H2\b\b\u0002\u0010R\u001a\u00020S2\t\b\u0002\u0010\u0082\u0001\u001a\u00020H2\t\b\u0002\u0010\u0083\u0001\u001a\u00020H2\t\b\u0002\u0010\u0084\u0001\u001a\u00020H2\t\b\u0002\u0010\u0085\u0001\u001a\u00020H2\b\b\u0002\u0010X\u001a\u00020H2\b\b\u0002\u0010Y\u001a\u00020H2\b\b\u0002\u0010Z\u001a\u00020H2\b\b\u0002\u0010[\u001a\u00020H2\b\b\u0002\u0010\\\u001a\u00020H2\b\b\u0002\u0010]\u001a\u00020H2\b\b\u0002\u0010^\u001a\u00020H2\b\b\u0002\u0010_\u001a\u00020H2\b\b\u0002\u0010`\u001a\u00020H2\b\b\u0002\u0010a\u001a\u00020H2\b\b\u0002\u0010b\u001a\u00020H2\b\b\u0002\u0010c\u001a\u00020H2\t\b\u0002\u0010\u0086\u0001\u001a\u00020H2\b\b\u0002\u0010f\u001a\u00020H2\b\b\u0002\u0010h\u001a\u00020H2\b\b\u0002\u0010i\u001a\u00020H2\b\b\u0002\u0010j\u001a\u00020H2\b\b\u0002\u0010k\u001a\u00020H2\b\b\u0002\u0010l\u001a\u00020H2\b\b\u0002\u0010m\u001a\u00020H2\b\b\u0002\u0010n\u001a\u00020H2\b\b\u0002\u0010o\u001a\u00020H2\b\b\u0002\u0010p\u001a\u00020H2\b\b\u0002\u0010q\u001a\u00020H2\b\b\u0002\u0010r\u001a\u00020H2\b\b\u0002\u0010s\u001a\u00020HH\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0006\b\u0087\u0001\u0010\u0088\u0001J¶\u0003\u0010\u007f\u001a\u00020&2\b\b\u0002\u0010G\u001a\u00020H2\b\b\u0002\u0010I\u001a\u00020H2\b\b\u0002\u0010J\u001a\u00020H2\b\b\u0002\u0010K\u001a\u00020H2\t\b\u0002\u0010\u0081\u0001\u001a\u00020H2\b\b\u0002\u0010O\u001a\u00020H2\b\b\u0002\u0010P\u001a\u00020H2\b\b\u0002\u0010Q\u001a\u00020H2\b\b\u0002\u0010R\u001a\u00020S2\t\b\u0002\u0010\u0082\u0001\u001a\u00020H2\t\b\u0002\u0010\u0083\u0001\u001a\u00020H2\t\b\u0002\u0010\u0084\u0001\u001a\u00020H2\t\b\u0002\u0010\u0085\u0001\u001a\u00020H2\b\b\u0002\u0010X\u001a\u00020H2\b\b\u0002\u0010Y\u001a\u00020H2\b\b\u0002\u0010Z\u001a\u00020H2\b\b\u0002\u0010[\u001a\u00020H2\b\b\u0002\u0010\\\u001a\u00020H2\b\b\u0002\u0010]\u001a\u00020H2\b\b\u0002\u0010^\u001a\u00020H2\b\b\u0002\u0010_\u001a\u00020H2\b\b\u0002\u0010`\u001a\u00020H2\b\b\u0002\u0010a\u001a\u00020H2\b\b\u0002\u0010b\u001a\u00020H2\b\b\u0002\u0010c\u001a\u00020H2\b\b\u0002\u0010d\u001a\u00020H2\b\b\u0002\u0010e\u001a\u00020H2\b\b\u0002\u0010f\u001a\u00020H2\b\b\u0002\u0010g\u001a\u00020H2\b\b\u0002\u0010h\u001a\u00020H2\b\b\u0002\u0010i\u001a\u00020H2\b\b\u0002\u0010j\u001a\u00020H2\b\b\u0002\u0010k\u001a\u00020H2\b\b\u0002\u0010l\u001a\u00020H2\b\b\u0002\u0010m\u001a\u00020H2\b\b\u0002\u0010n\u001a\u00020H2\b\b\u0002\u0010o\u001a\u00020H2\b\b\u0002\u0010p\u001a\u00020H2\b\b\u0002\u0010q\u001a\u00020H2\b\b\u0002\u0010r\u001a\u00020H2\b\b\u0002\u0010s\u001a\u00020HH\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0006\b\u0089\u0001\u0010\u008a\u0001J?\u0010\u008b\u0001\u001a\u0002092\b\b\u0002\u0010w\u001a\u00020\u00042\b\b\u0002\u0010y\u001a\u00020\u00042\b\b\u0002\u0010x\u001a\u00020\u00042\b\b\u0002\u0010z\u001a\u00020\u0004H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0005\b\u008c\u0001\u0010|J?\u0010\u008d\u0001\u001a\u0002092\b\b\u0002\u0010w\u001a\u00020\u00042\b\b\u0002\u0010y\u001a\u00020\u00042\b\b\u0002\u0010x\u001a\u00020\u00042\b\b\u0002\u0010z\u001a\u00020\u0004H\u0001ø\u0001\u0001ø\u0001\u0000¢\u0006\u0005\b\u008e\u0001\u0010|J\u0083\u0003\u0010\u008f\u0001\u001a\u00020&2\t\b\u0002\u0010\u0080\u0001\u001a\u00020H2\b\b\u0002\u0010J\u001a\u00020H2\t\b\u0002\u0010\u0081\u0001\u001a\u00020H2\b\b\u0002\u0010P\u001a\u00020H2\b\b\u0002\u0010Q\u001a\u00020H2\b\b\u0002\u0010R\u001a\u00020S2\b\b\u0002\u0010T\u001a\u00020H2\b\b\u0002\u0010U\u001a\u00020H2\b\b\u0002\u0010V\u001a\u00020H2\b\b\u0002\u0010W\u001a\u00020H2\b\b\u0002\u0010X\u001a\u00020H2\b\b\u0002\u0010Y\u001a\u00020H2\b\b\u0002\u0010Z\u001a\u00020H2\b\b\u0002\u0010[\u001a\u00020H2\b\b\u0002\u0010\\\u001a\u00020H2\b\b\u0002\u0010]\u001a\u00020H2\b\b\u0002\u0010^\u001a\u00020H2\b\b\u0002\u0010_\u001a\u00020H2\b\b\u0002\u0010`\u001a\u00020H2\b\b\u0002\u0010a\u001a\u00020H2\b\b\u0002\u0010b\u001a\u00020H2\b\b\u0002\u0010c\u001a\u00020H2\t\b\u0002\u0010\u0086\u0001\u001a\u00020H2\b\b\u0002\u0010f\u001a\u00020H2\b\b\u0002\u0010h\u001a\u00020H2\b\b\u0002\u0010i\u001a\u00020H2\b\b\u0002\u0010j\u001a\u00020H2\b\b\u0002\u0010k\u001a\u00020H2\b\b\u0002\u0010l\u001a\u00020H2\b\b\u0002\u0010m\u001a\u00020H2\b\b\u0002\u0010n\u001a\u00020H2\b\b\u0002\u0010o\u001a\u00020H2\b\b\u0002\u0010p\u001a\u00020H2\b\b\u0002\u0010q\u001a\u00020H2\b\b\u0002\u0010r\u001a\u00020H2\b\b\u0002\u0010s\u001a\u00020HH\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0006\b\u0090\u0001\u0010\u0088\u0001J³\u0003\u0010\u008f\u0001\u001a\u00020&2\b\b\u0002\u0010G\u001a\u00020H2\b\b\u0002\u0010I\u001a\u00020H2\b\b\u0002\u0010J\u001a\u00020H2\b\b\u0002\u0010K\u001a\u00020H2\t\b\u0002\u0010\u0081\u0001\u001a\u00020H2\b\b\u0002\u0010O\u001a\u00020H2\b\b\u0002\u0010P\u001a\u00020H2\b\b\u0002\u0010Q\u001a\u00020H2\b\b\u0002\u0010R\u001a\u00020S2\b\b\u0002\u0010T\u001a\u00020H2\b\b\u0002\u0010U\u001a\u00020H2\b\b\u0002\u0010V\u001a\u00020H2\b\b\u0002\u0010W\u001a\u00020H2\b\b\u0002\u0010X\u001a\u00020H2\b\b\u0002\u0010Y\u001a\u00020H2\b\b\u0002\u0010Z\u001a\u00020H2\b\b\u0002\u0010[\u001a\u00020H2\b\b\u0002\u0010\\\u001a\u00020H2\b\b\u0002\u0010]\u001a\u00020H2\b\b\u0002\u0010^\u001a\u00020H2\b\b\u0002\u0010_\u001a\u00020H2\b\b\u0002\u0010`\u001a\u00020H2\b\b\u0002\u0010a\u001a\u00020H2\b\b\u0002\u0010b\u001a\u00020H2\b\b\u0002\u0010c\u001a\u00020H2\b\b\u0002\u0010d\u001a\u00020H2\b\b\u0002\u0010e\u001a\u00020H2\b\b\u0002\u0010f\u001a\u00020H2\b\b\u0002\u0010g\u001a\u00020H2\b\b\u0002\u0010h\u001a\u00020H2\b\b\u0002\u0010i\u001a\u00020H2\b\b\u0002\u0010j\u001a\u00020H2\b\b\u0002\u0010k\u001a\u00020H2\b\b\u0002\u0010l\u001a\u00020H2\b\b\u0002\u0010m\u001a\u00020H2\b\b\u0002\u0010n\u001a\u00020H2\b\b\u0002\u0010o\u001a\u00020H2\b\b\u0002\u0010p\u001a\u00020H2\b\b\u0002\u0010q\u001a\u00020H2\b\b\u0002\u0010r\u001a\u00020H2\b\b\u0002\u0010s\u001a\u00020HH\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0006\b\u0091\u0001\u0010\u008a\u0001J?\u0010\u0092\u0001\u001a\u0002092\b\b\u0002\u0010w\u001a\u00020\u00042\b\b\u0002\u0010x\u001a\u00020\u00042\b\b\u0002\u0010y\u001a\u00020\u00042\b\b\u0002\u0010z\u001a\u00020\u0004H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0005\b\u0093\u0001\u0010|J?\u0010\u0094\u0001\u001a\u0002092\b\b\u0002\u0010w\u001a\u00020\u00042\b\b\u0002\u0010y\u001a\u00020\u00042\b\b\u0002\u0010x\u001a\u00020\u00042\b\b\u0002\u0010z\u001a\u00020\u0004H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0005\b\u0095\u0001\u0010|JT\u0010\u0096\u0001\u001a\u00030\u0097\u0001*\u00030\u0097\u00012\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\t\b\u0002\u0010\u0098\u0001\u001a\u00020\u00042\t\b\u0002\u0010\u0099\u0001\u001a\u00020\u0004H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0006\b\u009a\u0001\u0010\u009b\u0001R'\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\b\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007R\u001c\u0010\t\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\n\u0010\u0007R\u001c\u0010\u000b\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\f\u0010\u0007R\u001c\u0010\r\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u000e\u0010\u0007R'\u0010\u000f\u001a\u00020\u00048\u0006X\u0087\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\b\u0012\u0004\b\u0010\u0010\u0002\u001a\u0004\b\u0011\u0010\u0007R\u001c\u0010\u0012\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0013\u0010\u0007R\u001a\u0010\u0014\u001a\u00020\u00158GX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0016\u0010\u0002\u001a\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u00158GX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001a\u0010\u0002\u001a\u0004\b\u001b\u0010\u0018R\u0011\u0010\u001c\u001a\u00020\u00158G¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u0018\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u009c\u0001"}, d2 = {"Landroidx/compose/material3/TextFieldDefaults;", "", "()V", "FocusedBorderThickness", "Landroidx/compose/ui/unit/Dp;", "getFocusedBorderThickness-D9Ej5fM$annotations", "getFocusedBorderThickness-D9Ej5fM", "()F", "F", "FocusedIndicatorThickness", "getFocusedIndicatorThickness-D9Ej5fM", "MinHeight", "getMinHeight-D9Ej5fM", "MinWidth", "getMinWidth-D9Ej5fM", "UnfocusedBorderThickness", "getUnfocusedBorderThickness-D9Ej5fM$annotations", "getUnfocusedBorderThickness-D9Ej5fM", "UnfocusedIndicatorThickness", "getUnfocusedIndicatorThickness-D9Ej5fM", "filledShape", "Landroidx/compose/ui/graphics/Shape;", "getFilledShape$annotations", "getFilledShape", "(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;", "outlinedShape", "getOutlinedShape$annotations", "getOutlinedShape", "shape", "getShape", "ContainerBox", "", "enabled", "", "isError", "interactionSource", "Landroidx/compose/foundation/interaction/InteractionSource;", "colors", "Landroidx/compose/material3/TextFieldColors;", "(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/runtime/Composer;II)V", "DecorationBox", "value", "", "innerTextField", "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "singleLine", "visualTransformation", "Landroidx/compose/ui/text/input/VisualTransformation;", "label", "placeholder", "leadingIcon", "trailingIcon", "prefix", "suffix", "supportingText", "contentPadding", "Landroidx/compose/foundation/layout/PaddingValues;", "container", "(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/InteractionSource;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V", "FilledContainerBox", "OutlinedBorderContainerBox", "focusedBorderThickness", "unfocusedBorderThickness", "OutlinedBorderContainerBox-nbWgWpA", "(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/ui/graphics/Shape;FFLandroidx/compose/runtime/Composer;II)V", "OutlinedTextFieldDecorationBox", "(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/InteractionSource;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V", "(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/InteractionSource;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V", "TextFieldDecorationBox", "(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/InteractionSource;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V", "focusedTextColor", "Landroidx/compose/ui/graphics/Color;", "unfocusedTextColor", "disabledTextColor", "errorTextColor", "focusedContainerColor", "unfocusedContainerColor", "disabledContainerColor", "errorContainerColor", "cursorColor", "errorCursorColor", "selectionColors", "Landroidx/compose/foundation/text/selection/TextSelectionColors;", "focusedIndicatorColor", "unfocusedIndicatorColor", "disabledIndicatorColor", "errorIndicatorColor", "focusedLeadingIconColor", "unfocusedLeadingIconColor", "disabledLeadingIconColor", "errorLeadingIconColor", "focusedTrailingIconColor", "unfocusedTrailingIconColor", "disabledTrailingIconColor", "errorTrailingIconColor", "focusedLabelColor", "unfocusedLabelColor", "disabledLabelColor", "errorLabelColor", "focusedPlaceholderColor", "unfocusedPlaceholderColor", "disabledPlaceholderColor", "errorPlaceholderColor", "focusedSupportingTextColor", "unfocusedSupportingTextColor", "disabledSupportingTextColor", "errorSupportingTextColor", "focusedPrefixColor", "unfocusedPrefixColor", "disabledPrefixColor", "errorPrefixColor", "focusedSuffixColor", "unfocusedSuffixColor", "disabledSuffixColor", "errorSuffixColor", "colors-0hiis_0", "(JJJJJJJJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;IIIIIII)Landroidx/compose/material3/TextFieldColors;", "contentPaddingWithLabel", "start", "end", "top", "bottom", "contentPaddingWithLabel-a9UjIt4", "(FFFF)Landroidx/compose/foundation/layout/PaddingValues;", "contentPaddingWithoutLabel", "contentPaddingWithoutLabel-a9UjIt4", "outlinedTextFieldColors", "textColor", "containerColor", "focusedBorderColor", "unfocusedBorderColor", "disabledBorderColor", "errorBorderColor", "placeholderColor", "outlinedTextFieldColors-eS1Emto", "(JJJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;IIIIII)Landroidx/compose/material3/TextFieldColors;", "outlinedTextFieldColors-M37tBTI", "(JJJJJJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;IIIIIII)Landroidx/compose/material3/TextFieldColors;", "outlinedTextFieldPadding", "outlinedTextFieldPadding-a9UjIt4", "supportingTextPadding", "supportingTextPadding-a9UjIt4$material3_release", "textFieldColors", "textFieldColors-eS1Emto", "textFieldColors-M37tBTI", "textFieldWithLabelPadding", "textFieldWithLabelPadding-a9UjIt4", "textFieldWithoutLabelPadding", "textFieldWithoutLabelPadding-a9UjIt4", "indicatorLine", "Landroidx/compose/ui/Modifier;", "focusedIndicatorLineThickness", "unfocusedIndicatorLineThickness", "indicatorLine-gv0btCI", "(Landroidx/compose/ui/Modifier;ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material3/TextFieldColors;FF)Landroidx/compose/ui/Modifier;", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TextFieldDefaults {
    public static final int $stable = 0;
    private static final float FocusedBorderThickness;
    private static final float FocusedIndicatorThickness;
    public static final TextFieldDefaults INSTANCE = new TextFieldDefaults();
    private static final float MinHeight = Dp.m4883constructorimpl(56);
    private static final float MinWidth = Dp.m4883constructorimpl(280);
    private static final float UnfocusedBorderThickness;
    private static final float UnfocusedIndicatorThickness;

    @Deprecated(level = DeprecationLevel.WARNING, message = "Renamed to `TextFieldDefaults.shape`", replaceWith = @ReplaceWith(expression = "TextFieldDefaults.shape", imports = {}))
    public static /* synthetic */ void getFilledShape$annotations() {
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Split into `TextFieldDefaults.FocusedIndicatorThickness` and `OutlinedTextFieldDefaults.FocusedBorderThickness`. Please update as appropriate.", replaceWith = @ReplaceWith(expression = "TextFieldDefaults.FocusedIndicatorThickness", imports = {}))
    /* renamed from: getFocusedBorderThickness-D9Ej5fM$annotations */
    public static /* synthetic */ void m1524getFocusedBorderThicknessD9Ej5fM$annotations() {
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Renamed to `OutlinedTextFieldDefaults.shape`", replaceWith = @ReplaceWith(expression = "OutlinedTextFieldDefaults.shape", imports = {"androidx.compose.material.OutlinedTextFieldDefaults"}))
    public static /* synthetic */ void getOutlinedShape$annotations() {
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Split into `TextFieldDefaults.UnfocusedIndicatorThickness` and `OutlinedTextFieldDefaults.UnfocusedBorderThickness`. Please update as appropriate.", replaceWith = @ReplaceWith(expression = "TextFieldDefaults.UnfocusedIndicatorThickness", imports = {}))
    /* renamed from: getUnfocusedBorderThickness-D9Ej5fM$annotations */
    public static /* synthetic */ void m1525getUnfocusedBorderThicknessD9Ej5fM$annotations() {
    }

    /* renamed from: getFocusedBorderThickness-D9Ej5fM */
    public final float m1535getFocusedBorderThicknessD9Ej5fM() {
        return FocusedBorderThickness;
    }

    /* renamed from: getFocusedIndicatorThickness-D9Ej5fM */
    public final float m1536getFocusedIndicatorThicknessD9Ej5fM() {
        return FocusedIndicatorThickness;
    }

    /* renamed from: getMinHeight-D9Ej5fM */
    public final float m1537getMinHeightD9Ej5fM() {
        return MinHeight;
    }

    /* renamed from: getMinWidth-D9Ej5fM */
    public final float m1538getMinWidthD9Ej5fM() {
        return MinWidth;
    }

    /* renamed from: getUnfocusedBorderThickness-D9Ej5fM */
    public final float m1539getUnfocusedBorderThicknessD9Ej5fM() {
        return UnfocusedBorderThickness;
    }

    /* renamed from: getUnfocusedIndicatorThickness-D9Ej5fM */
    public final float m1540getUnfocusedIndicatorThicknessD9Ej5fM() {
        return UnfocusedIndicatorThickness;
    }

    private TextFieldDefaults() {
    }

    public final Shape getShape(Composer composer, int i) {
        composer.startReplaceableGroup(-1941327459);
        ComposerKt.sourceInformation(composer, "C57@2544L9:TextFieldDefaults.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1941327459, i, -1, "androidx.compose.material3.TextFieldDefaults.<get-shape> (TextFieldDefaults.kt:57)");
        }
        Shape shape = ShapesKt.toShape(FilledTextFieldTokens.INSTANCE.getContainerShape(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return shape;
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00e8, code lost:
    
        if ((r27 & 16) != 0) goto L176;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void ContainerBox(final boolean r20, final boolean r21, final androidx.compose.foundation.interaction.InteractionSource r22, final androidx.compose.material3.TextFieldColors r23, androidx.compose.ui.graphics.Shape r24, androidx.compose.runtime.Composer r25, final int r26, final int r27) {
        /*
            Method dump skipped, instructions count: 381
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.TextFieldDefaults.ContainerBox(boolean, boolean, androidx.compose.foundation.interaction.InteractionSource, androidx.compose.material3.TextFieldColors, androidx.compose.ui.graphics.Shape, androidx.compose.runtime.Composer, int, int):void");
    }

    /* renamed from: indicatorLine-gv0btCI$default */
    public static /* synthetic */ Modifier m1526indicatorLinegv0btCI$default(TextFieldDefaults textFieldDefaults, Modifier modifier, boolean z, boolean z2, InteractionSource interactionSource, TextFieldColors textFieldColors, float f, float f2, int i, Object obj) {
        return textFieldDefaults.m1541indicatorLinegv0btCI(modifier, z, z2, interactionSource, textFieldColors, (i & 16) != 0 ? FocusedIndicatorThickness : f, (i & 32) != 0 ? UnfocusedIndicatorThickness : f2);
    }

    /* renamed from: contentPaddingWithLabel-a9UjIt4$default */
    public static /* synthetic */ PaddingValues m1522contentPaddingWithLabela9UjIt4$default(TextFieldDefaults textFieldDefaults, float f, float f2, float f3, float f4, int i, Object obj) {
        if ((i & 1) != 0) {
            f = TextFieldImplKt.getTextFieldPadding();
        }
        if ((i & 2) != 0) {
            f2 = TextFieldImplKt.getTextFieldPadding();
        }
        if ((i & 4) != 0) {
            f3 = TextFieldKt.getTextFieldWithLabelVerticalPadding();
        }
        if ((i & 8) != 0) {
            f4 = TextFieldKt.getTextFieldWithLabelVerticalPadding();
        }
        return textFieldDefaults.m1533contentPaddingWithLabela9UjIt4(f, f2, f3, f4);
    }

    /* renamed from: contentPaddingWithLabel-a9UjIt4 */
    public final PaddingValues m1533contentPaddingWithLabela9UjIt4(float start, float end, float top, float bottom) {
        return PaddingKt.m486PaddingValuesa9UjIt4(start, top, end, bottom);
    }

    /* renamed from: contentPaddingWithoutLabel-a9UjIt4$default */
    public static /* synthetic */ PaddingValues m1523contentPaddingWithoutLabela9UjIt4$default(TextFieldDefaults textFieldDefaults, float f, float f2, float f3, float f4, int i, Object obj) {
        if ((i & 1) != 0) {
            f = TextFieldImplKt.getTextFieldPadding();
        }
        if ((i & 2) != 0) {
            f2 = TextFieldImplKt.getTextFieldPadding();
        }
        if ((i & 4) != 0) {
            f3 = TextFieldImplKt.getTextFieldPadding();
        }
        if ((i & 8) != 0) {
            f4 = TextFieldImplKt.getTextFieldPadding();
        }
        return textFieldDefaults.m1534contentPaddingWithoutLabela9UjIt4(f, f2, f3, f4);
    }

    /* renamed from: contentPaddingWithoutLabel-a9UjIt4 */
    public final PaddingValues m1534contentPaddingWithoutLabela9UjIt4(float start, float top, float end, float bottom) {
        return PaddingKt.m486PaddingValuesa9UjIt4(start, top, end, bottom);
    }

    /* renamed from: supportingTextPadding-a9UjIt4$material3_release$default */
    public static /* synthetic */ PaddingValues m1528supportingTextPaddinga9UjIt4$material3_release$default(TextFieldDefaults textFieldDefaults, float f, float f2, float f3, float f4, int i, Object obj) {
        if ((i & 1) != 0) {
            f = TextFieldImplKt.getTextFieldPadding();
        }
        if ((i & 2) != 0) {
            f2 = TextFieldImplKt.getSupportingTopPadding();
        }
        if ((i & 4) != 0) {
            f3 = TextFieldImplKt.getTextFieldPadding();
        }
        if ((i & 8) != 0) {
            f4 = Dp.m4883constructorimpl(0);
        }
        return textFieldDefaults.m1545supportingTextPaddinga9UjIt4$material3_release(f, f2, f3, f4);
    }

    /* renamed from: supportingTextPadding-a9UjIt4$material3_release */
    public final PaddingValues m1545supportingTextPaddinga9UjIt4$material3_release(float start, float top, float end, float bottom) {
        return PaddingKt.m486PaddingValuesa9UjIt4(start, top, end, bottom);
    }

    /* renamed from: colors-0hiis_0 */
    public final TextFieldColors m1532colors0hiis_0(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, TextSelectionColors textSelectionColors, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36, long j37, long j38, long j39, long j40, long j41, long j42, Composer composer, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        TextSelectionColors textSelectionColors2;
        composer.startReplaceableGroup(1513344955);
        ComposerKt.sourceInformation(composer, "C(colors)P(30:c#ui.graphics.Color,41:c#ui.graphics.Color,9:c#ui.graphics.Color,20:c#ui.graphics.Color,22:c#ui.graphics.Color,33:c#ui.graphics.Color,1:c#ui.graphics.Color,11:c#ui.graphics.Color,0:c#ui.graphics.Color,12:c#ui.graphics.Color,32,23:c#ui.graphics.Color,34:c#ui.graphics.Color,2:c#ui.graphics.Color,13:c#ui.graphics.Color,25:c#ui.graphics.Color,36:c#ui.graphics.Color,4:c#ui.graphics.Color,15:c#ui.graphics.Color,31:c#ui.graphics.Color,42:c#ui.graphics.Color,10:c#ui.graphics.Color,21:c#ui.graphics.Color,24:c#ui.graphics.Color,35:c#ui.graphics.Color,3:c#ui.graphics.Color,14:c#ui.graphics.Color,26:c#ui.graphics.Color,37:c#ui.graphics.Color,5:c#ui.graphics.Color,16:c#ui.graphics.Color,29:c#ui.graphics.Color,40:c#ui.graphics.Color,8:c#ui.graphics.Color,19:c#ui.graphics.Color,27:c#ui.graphics.Color,38:c#ui.graphics.Color,6:c#ui.graphics.Color,17:c#ui.graphics.Color,28:c#ui.graphics.Color,39:c#ui.graphics.Color,7:c#ui.graphics.Color,18:c#ui.graphics.Color)247@12192L9,248@12272L9,249@12359L9,251@12510L9,252@12597L9,253@12686L9,254@12774L9,255@12859L9,256@12932L9,257@13020L9,258@13103L7,259@13199L9,260@13294L9,261@13396L9,263@13572L9,264@13668L9,265@13761L9,266@13861L9,268@14031L9,269@14129L9,270@14224L9,271@14326L9,273@14499L9,274@14583L9,275@14664L9,276@14752L9,278@14904L9,279@15000L9,280@15098L9,281@15192L9,283@15356L9,284@15454L9,285@15549L9,286@15651L9,288@15822L9,289@15908L9,290@15996L9,291@16083L9,293@16237L9,294@16323L9,295@16411L9,296@16498L9,298@16652L9:TextFieldDefaults.kt#uh7d8r");
        long color = (i6 & 1) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getFocusInputColor(), composer, 6) : j;
        long color2 = (i6 & 2) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getInputColor(), composer, 6) : j2;
        long m2638copywmQWz5c$default = (i6 & 4) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getDisabledInputColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j3;
        long color3 = (i6 & 8) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getErrorInputColor(), composer, 6) : j4;
        long color4 = (i6 & 16) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getContainerColor(), composer, 6) : j5;
        long color5 = (i6 & 32) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getContainerColor(), composer, 6) : j6;
        long color6 = (i6 & 64) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getContainerColor(), composer, 6) : j7;
        long color7 = (i6 & 128) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getContainerColor(), composer, 6) : j8;
        long color8 = (i6 & 256) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getCaretColor(), composer, 6) : j9;
        long color9 = (i6 & 512) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getErrorFocusCaretColor(), composer, 6) : j10;
        if ((i6 & 1024) != 0) {
            ProvidableCompositionLocal<TextSelectionColors> localTextSelectionColors = TextSelectionColorsKt.getLocalTextSelectionColors();
            ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object consume = composer.consume(localTextSelectionColors);
            ComposerKt.sourceInformationMarkerEnd(composer);
            textSelectionColors2 = (TextSelectionColors) consume;
        } else {
            textSelectionColors2 = textSelectionColors;
        }
        long color10 = (i6 & 2048) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getFocusActiveIndicatorColor(), composer, 6) : j11;
        long color11 = (i6 & 4096) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getActiveIndicatorColor(), composer, 6) : j12;
        long m2638copywmQWz5c$default2 = (i6 & 8192) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getDisabledActiveIndicatorColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j13;
        long color12 = (i6 & 16384) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getErrorActiveIndicatorColor(), composer, 6) : j14;
        long color13 = (32768 & i6) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getFocusLeadingIconColor(), composer, 6) : j15;
        long color14 = (65536 & i6) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getLeadingIconColor(), composer, 6) : j16;
        long m2638copywmQWz5c$default3 = (131072 & i6) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getDisabledLeadingIconColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j17;
        long color15 = (262144 & i6) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getErrorLeadingIconColor(), composer, 6) : j18;
        long color16 = (524288 & i6) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getFocusTrailingIconColor(), composer, 6) : j19;
        long color17 = (1048576 & i6) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getTrailingIconColor(), composer, 6) : j20;
        long m2638copywmQWz5c$default4 = (2097152 & i6) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getDisabledTrailingIconColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j21;
        long color18 = (4194304 & i6) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getErrorTrailingIconColor(), composer, 6) : j22;
        long color19 = (8388608 & i6) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getFocusLabelColor(), composer, 6) : j23;
        long color20 = (16777216 & i6) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getLabelColor(), composer, 6) : j24;
        long m2638copywmQWz5c$default5 = (33554432 & i6) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getDisabledLabelColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j25;
        long color21 = (67108864 & i6) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getErrorLabelColor(), composer, 6) : j26;
        long color22 = (134217728 & i6) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getInputPlaceholderColor(), composer, 6) : j27;
        long color23 = (268435456 & i6) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getInputPlaceholderColor(), composer, 6) : j28;
        long m2638copywmQWz5c$default6 = (536870912 & i6) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getDisabledInputColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j29;
        long color24 = (i6 & 1073741824) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getInputPlaceholderColor(), composer, 6) : j30;
        long color25 = (i7 & 1) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getFocusSupportingColor(), composer, 6) : j31;
        long color26 = (i7 & 2) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getSupportingColor(), composer, 6) : j32;
        long m2638copywmQWz5c$default7 = (i7 & 4) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getDisabledSupportingColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j33;
        long color27 = (i7 & 8) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getErrorSupportingColor(), composer, 6) : j34;
        long color28 = (i7 & 16) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getInputPrefixColor(), composer, 6) : j35;
        long color29 = (i7 & 32) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getInputPrefixColor(), composer, 6) : j36;
        long m2638copywmQWz5c$default8 = (i7 & 64) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getInputPrefixColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j37;
        long color30 = (i7 & 128) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getInputPrefixColor(), composer, 6) : j38;
        long color31 = (i7 & 256) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getInputSuffixColor(), composer, 6) : j39;
        long color32 = (i7 & 512) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getInputSuffixColor(), composer, 6) : j40;
        long m2638copywmQWz5c$default9 = (i7 & 1024) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getInputSuffixColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j41;
        long color33 = (i7 & 2048) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getInputSuffixColor(), composer, 6) : j42;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1513344955, i, i2, "androidx.compose.material3.TextFieldDefaults.colors (TextFieldDefaults.kt:246)");
        }
        TextFieldColors textFieldColors = new TextFieldColors(color, color2, m2638copywmQWz5c$default, color3, color4, color5, color6, color7, color8, color9, textSelectionColors2, color10, color11, m2638copywmQWz5c$default2, color12, color13, color14, m2638copywmQWz5c$default3, color15, color16, color17, m2638copywmQWz5c$default4, color18, color19, color20, m2638copywmQWz5c$default5, color21, color22, color23, m2638copywmQWz5c$default6, color24, color25, color26, m2638copywmQWz5c$default7, color27, color28, color29, m2638copywmQWz5c$default8, color30, color31, color32, m2638copywmQWz5c$default9, color33, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return textFieldColors;
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x01d9, code lost:
    
        if (r8.changed(r133) == false) goto L435;
     */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0448  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x04cc  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x02de  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x02e6  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x02ed  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x02f4  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x02fb  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0302  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0309  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0310  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0319  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0331  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x03ae  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x03f7  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0423  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x03f3  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x03a8  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0327  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0313  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x030c  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0305  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x02fe  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x02f7  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x02f0  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x02e9  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x02e0  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0249  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0229  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x021a  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x01e3  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0206  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0222  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0242  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0268  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x04ee  */
    /* JADX WARN: Removed duplicated region for block: B:90:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x029e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void DecorationBox(final java.lang.String r119, final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r120, final boolean r121, final boolean r122, final androidx.compose.ui.text.input.VisualTransformation r123, final androidx.compose.foundation.interaction.InteractionSource r124, boolean r125, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r126, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r127, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r128, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r129, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r130, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r131, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r132, androidx.compose.ui.graphics.Shape r133, androidx.compose.material3.TextFieldColors r134, androidx.compose.foundation.layout.PaddingValues r135, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r136, androidx.compose.runtime.Composer r137, final int r138, final int r139, final int r140) {
        /*
            Method dump skipped, instructions count: 1301
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.TextFieldDefaults.DecorationBox(java.lang.String, kotlin.jvm.functions.Function2, boolean, boolean, androidx.compose.ui.text.input.VisualTransformation, androidx.compose.foundation.interaction.InteractionSource, boolean, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, androidx.compose.ui.graphics.Shape, androidx.compose.material3.TextFieldColors, androidx.compose.foundation.layout.PaddingValues, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int, int, int):void");
    }

    public final Shape getOutlinedShape(Composer composer, int i) {
        composer.startReplaceableGroup(-584749279);
        ComposerKt.sourceInformation(composer, "C465@26096L5:TextFieldDefaults.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-584749279, i, -1, "androidx.compose.material3.TextFieldDefaults.<get-outlinedShape> (TextFieldDefaults.kt:465)");
        }
        Shape shape = OutlinedTextFieldDefaults.INSTANCE.getShape(composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return shape;
    }

    public final Shape getFilledShape(Composer composer, int i) {
        composer.startReplaceableGroup(611926497);
        ComposerKt.sourceInformation(composer, "C472@26334L5:TextFieldDefaults.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(611926497, i, -1, "androidx.compose.material3.TextFieldDefaults.<get-filledShape> (TextFieldDefaults.kt:472)");
        }
        Shape shape = getShape(composer, i & 14);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return shape;
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00e9, code lost:
    
        if ((r25 & 16) != 0) goto L176;
     */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.WARNING, message = "Renamed to `TextFieldDefaults.ContainerBox`", replaceWith = @kotlin.ReplaceWith(expression = "TextFieldDefaults.ContainerBox(\n        enabled = enabled,\n        isError = isError,\n        interactionSource = interactionSource,\n        colors = colors,\n        shape = shape,\n    )", imports = {}))
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void FilledContainerBox(final boolean r18, final boolean r19, final androidx.compose.foundation.interaction.InteractionSource r20, final androidx.compose.material3.TextFieldColors r21, androidx.compose.ui.graphics.Shape r22, androidx.compose.runtime.Composer r23, final int r24, final int r25) {
        /*
            Method dump skipped, instructions count: 345
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.TextFieldDefaults.FilledContainerBox(boolean, boolean, androidx.compose.foundation.interaction.InteractionSource, androidx.compose.material3.TextFieldColors, androidx.compose.ui.graphics.Shape, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:39:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00c9  */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.WARNING, message = "Renamed to `OutlinedTextFieldDefaults.ContainerBox`", replaceWith = @kotlin.ReplaceWith(expression = "OutlinedTextFieldDefaults.ContainerBox(\n        enabled = enabled,\n        isError = isError,\n        interactionSource = interactionSource,\n        colors = colors,\n        shape = shape,\n        focusedBorderThickness = focusedBorderThickness,\n        unfocusedBorderThickness = unfocusedBorderThickness,\n    )", imports = {"androidx.compose.material.OutlinedTextFieldDefaults"}))
    /* renamed from: OutlinedBorderContainerBox-nbWgWpA */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1531OutlinedBorderContainerBoxnbWgWpA(final boolean r21, final boolean r22, final androidx.compose.foundation.interaction.InteractionSource r23, final androidx.compose.material3.TextFieldColors r24, androidx.compose.ui.graphics.Shape r25, float r26, float r27, androidx.compose.runtime.Composer r28, final int r29, final int r30) {
        /*
            Method dump skipped, instructions count: 434
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.TextFieldDefaults.m1531OutlinedBorderContainerBoxnbWgWpA(boolean, boolean, androidx.compose.foundation.interaction.InteractionSource, androidx.compose.material3.TextFieldColors, androidx.compose.ui.graphics.Shape, float, float, androidx.compose.runtime.Composer, int, int):void");
    }

    /* renamed from: textFieldWithLabelPadding-a9UjIt4$default */
    public static /* synthetic */ PaddingValues m1529textFieldWithLabelPaddinga9UjIt4$default(TextFieldDefaults textFieldDefaults, float f, float f2, float f3, float f4, int i, Object obj) {
        if ((i & 1) != 0) {
            f = TextFieldImplKt.getTextFieldPadding();
        }
        if ((i & 2) != 0) {
            f2 = TextFieldImplKt.getTextFieldPadding();
        }
        if ((i & 4) != 0) {
            f3 = TextFieldKt.getTextFieldWithLabelVerticalPadding();
        }
        if ((i & 8) != 0) {
            f4 = TextFieldKt.getTextFieldWithLabelVerticalPadding();
        }
        return textFieldDefaults.m1548textFieldWithLabelPaddinga9UjIt4(f, f2, f3, f4);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Renamed to `TextFieldDefaults.contentPaddingWithLabel`", replaceWith = @ReplaceWith(expression = "TextFieldDefaults.contentPaddingWithLabel(\n        start = start,\n        top = top,\n        end = end,\n        bottom = bottom,\n    )", imports = {}))
    /* renamed from: textFieldWithLabelPadding-a9UjIt4 */
    public final PaddingValues m1548textFieldWithLabelPaddinga9UjIt4(float start, float end, float top, float bottom) {
        return m1533contentPaddingWithLabela9UjIt4(start, end, top, bottom);
    }

    /* renamed from: textFieldWithoutLabelPadding-a9UjIt4$default */
    public static /* synthetic */ PaddingValues m1530textFieldWithoutLabelPaddinga9UjIt4$default(TextFieldDefaults textFieldDefaults, float f, float f2, float f3, float f4, int i, Object obj) {
        if ((i & 1) != 0) {
            f = TextFieldImplKt.getTextFieldPadding();
        }
        if ((i & 2) != 0) {
            f2 = TextFieldImplKt.getTextFieldPadding();
        }
        if ((i & 4) != 0) {
            f3 = TextFieldImplKt.getTextFieldPadding();
        }
        if ((i & 8) != 0) {
            f4 = TextFieldImplKt.getTextFieldPadding();
        }
        return textFieldDefaults.m1549textFieldWithoutLabelPaddinga9UjIt4(f, f2, f3, f4);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Renamed to `TextFieldDefaults.contentPaddingWithoutLabel`", replaceWith = @ReplaceWith(expression = "TextFieldDefaults.contentPaddingWithoutLabel(\n        start = start,\n        top = top,\n        end = end,\n        bottom = bottom,\n    )", imports = {}))
    /* renamed from: textFieldWithoutLabelPadding-a9UjIt4 */
    public final PaddingValues m1549textFieldWithoutLabelPaddinga9UjIt4(float start, float top, float end, float bottom) {
        return m1534contentPaddingWithoutLabela9UjIt4(start, top, end, bottom);
    }

    /* renamed from: outlinedTextFieldPadding-a9UjIt4$default */
    public static /* synthetic */ PaddingValues m1527outlinedTextFieldPaddinga9UjIt4$default(TextFieldDefaults textFieldDefaults, float f, float f2, float f3, float f4, int i, Object obj) {
        if ((i & 1) != 0) {
            f = TextFieldImplKt.getTextFieldPadding();
        }
        if ((i & 2) != 0) {
            f2 = TextFieldImplKt.getTextFieldPadding();
        }
        if ((i & 4) != 0) {
            f3 = TextFieldImplKt.getTextFieldPadding();
        }
        if ((i & 8) != 0) {
            f4 = TextFieldImplKt.getTextFieldPadding();
        }
        return textFieldDefaults.m1544outlinedTextFieldPaddinga9UjIt4(f, f2, f3, f4);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Renamed to `OutlinedTextFieldDefaults.contentPadding`", replaceWith = @ReplaceWith(expression = "OutlinedTextFieldDefaults.contentPadding(\n        start = start,\n        top = top,\n        end = end,\n        bottom = bottom,\n    )", imports = {"androidx.compose.material.OutlinedTextFieldDefaults"}))
    /* renamed from: outlinedTextFieldPadding-a9UjIt4 */
    public final PaddingValues m1544outlinedTextFieldPaddinga9UjIt4(float start, float top, float end, float bottom) {
        return OutlinedTextFieldDefaults.INSTANCE.m1328contentPaddinga9UjIt4(start, top, end, bottom);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Renamed to `TextFieldDefaults.colors` with additional parameters to controlcontainer color based on state.", replaceWith = @ReplaceWith(expression = "TextFieldDefaults.colors(\n        focusedTextColor = focusedTextColor,\n        unfocusedTextColor = unfocusedTextColor,\n        disabledTextColor = disabledTextColor,\n        errorTextColor = errorTextColor,\n        focusedContainerColor = containerColor,\n        unfocusedContainerColor = containerColor,\n        disabledContainerColor = containerColor,\n        errorContainerColor = errorContainerColor,\n        cursorColor = cursorColor,\n        errorCursorColor = errorCursorColor,\n        selectionColors = selectionColors,\n        focusedIndicatorColor = focusedIndicatorColor,\n        unfocusedIndicatorColor = unfocusedIndicatorColor,\n        disabledIndicatorColor = disabledIndicatorColor,\n        errorIndicatorColor = errorIndicatorColor,\n        focusedLeadingIconColor = focusedLeadingIconColor,\n        unfocusedLeadingIconColor = unfocusedLeadingIconColor,\n        disabledLeadingIconColor = disabledLeadingIconColor,\n        errorLeadingIconColor = errorLeadingIconColor,\n        focusedTrailingIconColor = focusedTrailingIconColor,\n        unfocusedTrailingIconColor = unfocusedTrailingIconColor,\n        disabledTrailingIconColor = disabledTrailingIconColor,\n        errorTrailingIconColor = errorTrailingIconColor,\n        focusedLabelColor = focusedLabelColor,\n        unfocusedLabelColor = unfocusedLabelColor,\n        disabledLabelColor = disabledLabelColor,\n        errorLabelColor = errorLabelColor,\n        focusedPlaceholderColor = focusedPlaceholderColor,\n        unfocusedPlaceholderColor = unfocusedPlaceholderColor,\n        disabledPlaceholderColor = disabledPlaceholderColor,\n        errorPlaceholderColor = errorPlaceholderColor,\n        focusedSupportingTextColor = focusedSupportingTextColor,\n        unfocusedSupportingTextColor = unfocusedSupportingTextColor,\n        disabledSupportingTextColor = disabledSupportingTextColor,\n        errorSupportingTextColor = errorSupportingTextColor,\n        focusedPrefixColor = focusedPrefixColor,\n        unfocusedPrefixColor = unfocusedPrefixColor,\n        disabledPrefixColor = disabledPrefixColor,\n        errorPrefixColor = errorPrefixColor,\n        focusedSuffixColor = focusedSuffixColor,\n        unfocusedSuffixColor = unfocusedSuffixColor,\n        disabledSuffixColor = disabledSuffixColor,\n        errorSuffixColor = errorSuffixColor,\n    )", imports = {}))
    /* renamed from: textFieldColors-M37tBTI */
    public final TextFieldColors m1546textFieldColorsM37tBTI(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, TextSelectionColors textSelectionColors, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36, long j37, long j38, long j39, long j40, Composer composer, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        TextSelectionColors textSelectionColors2;
        int i8;
        long j41;
        int i9;
        long j42;
        int i10;
        long j43;
        int i11;
        long j44;
        int i12;
        long j45;
        int i13;
        long j46;
        int i14;
        long j47;
        int i15;
        long j48;
        composer.startReplaceableGroup(568209592);
        ComposerKt.sourceInformation(composer, "C(textFieldColors)P(29:c#ui.graphics.Color,39:c#ui.graphics.Color,9:c#ui.graphics.Color,20:c#ui.graphics.Color,0:c#ui.graphics.Color,11:c#ui.graphics.Color,1:c#ui.graphics.Color,12:c#ui.graphics.Color,31,22:c#ui.graphics.Color,32:c#ui.graphics.Color,2:c#ui.graphics.Color,13:c#ui.graphics.Color,24:c#ui.graphics.Color,34:c#ui.graphics.Color,4:c#ui.graphics.Color,15:c#ui.graphics.Color,30:c#ui.graphics.Color,40:c#ui.graphics.Color,10:c#ui.graphics.Color,21:c#ui.graphics.Color,23:c#ui.graphics.Color,33:c#ui.graphics.Color,3:c#ui.graphics.Color,14:c#ui.graphics.Color,25:c#ui.graphics.Color,35:c#ui.graphics.Color,5:c#ui.graphics.Color,16:c#ui.graphics.Color,28:c#ui.graphics.Color,38:c#ui.graphics.Color,8:c#ui.graphics.Color,19:c#ui.graphics.Color,26:c#ui.graphics.Color,36:c#ui.graphics.Color,6:c#ui.graphics.Color,17:c#ui.graphics.Color,27:c#ui.graphics.Color,37:c#ui.graphics.Color,7:c#ui.graphics.Color,18:c#ui.graphics.Color)671@35322L9,672@35402L9,673@35489L9,675@35640L9,676@35720L9,677@35805L9,678@35878L9,679@35966L9,680@36049L7,681@36145L9,682@36240L9,683@36342L9,685@36518L9,686@36614L9,687@36707L9,688@36807L9,690@36977L9,691@37075L9,692@37170L9,693@37272L9,695@37445L9,696@37529L9,697@37610L9,698@37698L9,700@37850L9,701@37946L9,702@38044L9,703@38138L9,705@38302L9,706@38400L9,707@38495L9,708@38597L9,710@38768L9,711@38854L9,712@38942L9,713@39029L9,715@39183L9,716@39269L9,717@39357L9,718@39444L9,720@39598L9,721@39634L2308:TextFieldDefaults.kt#uh7d8r");
        long color = (i6 & 1) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getFocusInputColor(), composer, 6) : j;
        long color2 = (i6 & 2) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getInputColor(), composer, 6) : j2;
        long m2638copywmQWz5c$default = (i6 & 4) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getDisabledInputColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j3;
        long color3 = (i6 & 8) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getErrorInputColor(), composer, 6) : j4;
        long color4 = (i6 & 16) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getContainerColor(), composer, 6) : j5;
        long color5 = (i6 & 32) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getContainerColor(), composer, 6) : j6;
        long color6 = (i6 & 64) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getCaretColor(), composer, 6) : j7;
        long color7 = (i6 & 128) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getErrorFocusCaretColor(), composer, 6) : j8;
        if ((i6 & 256) != 0) {
            ProvidableCompositionLocal<TextSelectionColors> localTextSelectionColors = TextSelectionColorsKt.getLocalTextSelectionColors();
            ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object consume = composer.consume(localTextSelectionColors);
            ComposerKt.sourceInformationMarkerEnd(composer);
            textSelectionColors2 = (TextSelectionColors) consume;
        } else {
            textSelectionColors2 = textSelectionColors;
        }
        if ((i6 & 512) != 0) {
            i8 = 6;
            j41 = ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getFocusActiveIndicatorColor(), composer, 6);
        } else {
            i8 = 6;
            j41 = j9;
        }
        long color8 = (i6 & 1024) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getActiveIndicatorColor(), composer, i8) : j10;
        long m2638copywmQWz5c$default2 = (i6 & 2048) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getDisabledActiveIndicatorColor(), composer, i8), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j11;
        if ((i6 & 4096) != 0) {
            i9 = 6;
            j42 = ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getErrorActiveIndicatorColor(), composer, 6);
        } else {
            i9 = 6;
            j42 = j12;
        }
        long color9 = (i6 & 8192) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getFocusLeadingIconColor(), composer, i9) : j13;
        long color10 = (i6 & 16384) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getLeadingIconColor(), composer, i9) : j14;
        long m2638copywmQWz5c$default3 = (32768 & i6) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getDisabledLeadingIconColor(), composer, i9), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j15;
        if ((65536 & i6) != 0) {
            i10 = 6;
            j43 = ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getErrorLeadingIconColor(), composer, 6);
        } else {
            i10 = 6;
            j43 = j16;
        }
        long color11 = (131072 & i6) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getFocusTrailingIconColor(), composer, i10) : j17;
        long color12 = (262144 & i6) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getTrailingIconColor(), composer, i10) : j18;
        long m2638copywmQWz5c$default4 = (524288 & i6) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getDisabledTrailingIconColor(), composer, i10), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j19;
        if ((1048576 & i6) != 0) {
            i11 = 6;
            j44 = ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getErrorTrailingIconColor(), composer, 6);
        } else {
            i11 = 6;
            j44 = j20;
        }
        long color13 = (2097152 & i6) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getFocusLabelColor(), composer, i11) : j21;
        long color14 = (4194304 & i6) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getLabelColor(), composer, i11) : j22;
        long m2638copywmQWz5c$default5 = (8388608 & i6) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getDisabledLabelColor(), composer, i11), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j23;
        if ((16777216 & i6) != 0) {
            i12 = 6;
            j45 = ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getErrorLabelColor(), composer, 6);
        } else {
            i12 = 6;
            j45 = j24;
        }
        long color15 = (33554432 & i6) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getInputPlaceholderColor(), composer, i12) : j25;
        long color16 = (67108864 & i6) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getInputPlaceholderColor(), composer, i12) : j26;
        long m2638copywmQWz5c$default6 = (134217728 & i6) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getDisabledInputColor(), composer, i12), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j27;
        if ((268435456 & i6) != 0) {
            i13 = 6;
            j46 = ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getInputPlaceholderColor(), composer, 6);
        } else {
            i13 = 6;
            j46 = j28;
        }
        long color17 = (536870912 & i6) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getFocusSupportingColor(), composer, i13) : j29;
        long color18 = (i6 & 1073741824) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getSupportingColor(), composer, i13) : j30;
        long m2638copywmQWz5c$default7 = (i7 & 1) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getDisabledSupportingColor(), composer, i13), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j31;
        if ((i7 & 2) != 0) {
            i14 = 6;
            j47 = ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getErrorSupportingColor(), composer, 6);
        } else {
            i14 = 6;
            j47 = j32;
        }
        long color19 = (i7 & 4) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getInputPrefixColor(), composer, i14) : j33;
        long color20 = (i7 & 8) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getInputPrefixColor(), composer, i14) : j34;
        long m2638copywmQWz5c$default8 = (i7 & 16) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getInputPrefixColor(), composer, i14), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j35;
        if ((i7 & 32) != 0) {
            i15 = 6;
            j48 = ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getInputPrefixColor(), composer, 6);
        } else {
            i15 = 6;
            j48 = j36;
        }
        long color21 = (i7 & 64) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getInputSuffixColor(), composer, i15) : j37;
        long color22 = (i7 & 128) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getInputSuffixColor(), composer, i15) : j38;
        long m2638copywmQWz5c$default9 = (i7 & 256) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getInputSuffixColor(), composer, i15), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j39;
        long color23 = (i7 & 512) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getInputSuffixColor(), composer, 6) : j40;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(568209592, i, i2, "androidx.compose.material3.TextFieldDefaults.textFieldColors (TextFieldDefaults.kt:670)");
        }
        int i16 = i << 6;
        int i17 = i >> 24;
        int i18 = i2 << 6;
        int i19 = (i17 & 112) | (i17 & 14) | (i18 & 896) | (i18 & 7168) | (i18 & 57344) | (i18 & 458752) | (i18 & 3670016) | (i18 & 29360128) | (i18 & 234881024) | (i18 & 1879048192);
        int i20 = i2 >> 24;
        int i21 = i3 << 6;
        int i22 = (i20 & 112) | (i20 & 14) | (i21 & 896) | (i21 & 7168) | (i21 & 57344) | (i21 & 458752) | (i21 & 3670016) | (i21 & 29360128) | (i21 & 234881024) | (i21 & 1879048192);
        int i23 = i3 >> 24;
        int i24 = i4 << 6;
        int i25 = (i23 & 112) | (i23 & 14) | (i24 & 896) | (i24 & 7168) | (i24 & 57344) | (i24 & 458752) | (i24 & 3670016) | (i24 & 29360128) | (i24 & 234881024) | (i24 & 1879048192);
        int i26 = i4 >> 24;
        int i27 = i5 << 6;
        TextFieldColors m1532colors0hiis_0 = m1532colors0hiis_0(color, color2, m2638copywmQWz5c$default, color3, color4, color4, color4, color5, color6, color7, textSelectionColors2, j41, color8, m2638copywmQWz5c$default2, j42, color9, color10, m2638copywmQWz5c$default3, j43, color11, color12, m2638copywmQWz5c$default4, j44, color13, color14, m2638copywmQWz5c$default5, j45, color15, color16, m2638copywmQWz5c$default6, j46, color17, color18, m2638copywmQWz5c$default7, j47, color19, color20, m2638copywmQWz5c$default8, j48, color21, color22, m2638copywmQWz5c$default9, color23, composer, (i & 14) | (i & 112) | (i & 896) | (i & 7168) | (i & 57344) | ((i << 3) & 458752) | (i16 & 3670016) | (i16 & 29360128) | (i16 & 234881024) | (i16 & 1879048192), i19, i22, i25, (i26 & 112) | (i26 & 14) | (i27 & 896) | (i27 & 7168), 0, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return m1532colors0hiis_0;
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Renamed to `OutlinedTextFieldDefaults.colors` with additional parameters tocontrol container color based on state.", replaceWith = @ReplaceWith(expression = "OutlinedTextFieldDefaults.colors(\n        focusedTextColor = focusedTextColor,\n        unfocusedTextColor = unfocusedTextColor,\n        disabledTextColor = disabledTextColor,\n        errorTextColor = errorTextColor,\n        focusedContainerColor = containerColor,\n        unfocusedContainerColor = containerColor,\n        disabledContainerColor = containerColor,\n        errorContainerColor = errorContainerColor,\n        cursorColor = cursorColor,\n        errorCursorColor = errorCursorColor,\n        selectionColors = selectionColors,\n        focusedBorderColor = focusedBorderColor,\n        unfocusedBorderColor = unfocusedBorderColor,\n        disabledBorderColor = disabledBorderColor,\n        errorBorderColor = errorBorderColor,\n        focusedLeadingIconColor = focusedLeadingIconColor,\n        unfocusedLeadingIconColor = unfocusedLeadingIconColor,\n        disabledLeadingIconColor = disabledLeadingIconColor,\n        errorLeadingIconColor = errorLeadingIconColor,\n        focusedTrailingIconColor = focusedTrailingIconColor,\n        unfocusedTrailingIconColor = unfocusedTrailingIconColor,\n        disabledTrailingIconColor = disabledTrailingIconColor,\n        errorTrailingIconColor = errorTrailingIconColor,\n        focusedLabelColor = focusedLabelColor,\n        unfocusedLabelColor = unfocusedLabelColor,\n        disabledLabelColor = disabledLabelColor,\n        errorLabelColor = errorLabelColor,\n        focusedPlaceholderColor = focusedPlaceholderColor,\n        unfocusedPlaceholderColor = unfocusedPlaceholderColor,\n        disabledPlaceholderColor = disabledPlaceholderColor,\n        errorPlaceholderColor = errorPlaceholderColor,\n        focusedSupportingTextColor = focusedSupportingTextColor,\n        unfocusedSupportingTextColor = unfocusedSupportingTextColor,\n        disabledSupportingTextColor = disabledSupportingTextColor,\n        errorSupportingTextColor = errorSupportingTextColor,\n        focusedPrefixColor = focusedPrefixColor,\n        unfocusedPrefixColor = unfocusedPrefixColor,\n        disabledPrefixColor = disabledPrefixColor,\n        errorPrefixColor = errorPrefixColor,\n        focusedSuffixColor = focusedSuffixColor,\n        unfocusedSuffixColor = unfocusedSuffixColor,\n        disabledSuffixColor = disabledSuffixColor,\n        errorSuffixColor = errorSuffixColor,\n    )", imports = {"androidx.compose.material.OutlinedTextFieldDefaults"}))
    /* renamed from: outlinedTextFieldColors-M37tBTI */
    public final TextFieldColors m1542outlinedTextFieldColorsM37tBTI(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, TextSelectionColors textSelectionColors, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36, long j37, long j38, long j39, long j40, Composer composer, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        TextSelectionColors textSelectionColors2;
        int i8;
        long j41;
        int i9;
        long j42;
        int i10;
        long j43;
        int i11;
        long j44;
        int i12;
        long j45;
        int i13;
        long j46;
        int i14;
        long j47;
        int i15;
        long j48;
        composer.startReplaceableGroup(618732090);
        ComposerKt.sourceInformation(composer, "C(outlinedTextFieldColors)P(29:c#ui.graphics.Color,39:c#ui.graphics.Color,9:c#ui.graphics.Color,20:c#ui.graphics.Color,0:c#ui.graphics.Color,12:c#ui.graphics.Color,1:c#ui.graphics.Color,13:c#ui.graphics.Color,31,22:c#ui.graphics.Color,32:c#ui.graphics.Color,2:c#ui.graphics.Color,11:c#ui.graphics.Color,24:c#ui.graphics.Color,34:c#ui.graphics.Color,4:c#ui.graphics.Color,15:c#ui.graphics.Color,30:c#ui.graphics.Color,40:c#ui.graphics.Color,10:c#ui.graphics.Color,21:c#ui.graphics.Color,23:c#ui.graphics.Color,33:c#ui.graphics.Color,3:c#ui.graphics.Color,14:c#ui.graphics.Color,25:c#ui.graphics.Color,35:c#ui.graphics.Color,5:c#ui.graphics.Color,16:c#ui.graphics.Color,28:c#ui.graphics.Color,38:c#ui.graphics.Color,8:c#ui.graphics.Color,19:c#ui.graphics.Color,26:c#ui.graphics.Color,36:c#ui.graphics.Color,6:c#ui.graphics.Color,17:c#ui.graphics.Color,27:c#ui.graphics.Color,37:c#ui.graphics.Color,7:c#ui.graphics.Color,18:c#ui.graphics.Color)821@45523L9,822@45605L9,823@45694L9,825@45849L9,828@46031L9,829@46121L9,830@46204L7,831@46291L9,832@46377L9,833@46470L9,835@46631L9,836@46729L9,837@46824L9,838@46926L9,840@47100L9,841@47200L9,842@47297L9,844@47414L9,845@47578L9,846@47664L9,847@47747L9,848@47837L9,850@47993L9,851@48091L9,852@48191L9,853@48287L9,855@48455L9,856@48555L9,857@48652L9,859@48769L9,860@48931L9,861@49019L9,862@49109L9,863@49198L9,865@49356L9,866@49444L9,867@49534L9,868@49623L9,870@49781L9,871@49843L2284:TextFieldDefaults.kt#uh7d8r");
        long color = (i6 & 1) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getFocusInputColor(), composer, 6) : j;
        long color2 = (i6 & 2) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getInputColor(), composer, 6) : j2;
        long m2638copywmQWz5c$default = (i6 & 4) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getDisabledInputColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j3;
        long color3 = (i6 & 8) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getErrorInputColor(), composer, 6) : j4;
        long m2674getTransparent0d7_KjU = (i6 & 16) != 0 ? Color.INSTANCE.m2674getTransparent0d7_KjU() : j5;
        long m2674getTransparent0d7_KjU2 = (i6 & 32) != 0 ? Color.INSTANCE.m2674getTransparent0d7_KjU() : j6;
        long color4 = (i6 & 64) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getCaretColor(), composer, 6) : j7;
        long color5 = (i6 & 128) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getErrorFocusCaretColor(), composer, 6) : j8;
        if ((i6 & 256) != 0) {
            ProvidableCompositionLocal<TextSelectionColors> localTextSelectionColors = TextSelectionColorsKt.getLocalTextSelectionColors();
            ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object consume = composer.consume(localTextSelectionColors);
            ComposerKt.sourceInformationMarkerEnd(composer);
            textSelectionColors2 = (TextSelectionColors) consume;
        } else {
            textSelectionColors2 = textSelectionColors;
        }
        if ((i6 & 512) != 0) {
            i8 = 6;
            j41 = ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getFocusOutlineColor(), composer, 6);
        } else {
            i8 = 6;
            j41 = j9;
        }
        long color6 = (i6 & 1024) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getOutlineColor(), composer, i8) : j10;
        long m2638copywmQWz5c$default2 = (i6 & 2048) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getDisabledOutlineColor(), composer, i8), 0.12f, 0.0f, 0.0f, 0.0f, 14, null) : j11;
        if ((i6 & 4096) != 0) {
            i9 = 6;
            j42 = ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getErrorOutlineColor(), composer, 6);
        } else {
            i9 = 6;
            j42 = j12;
        }
        long color7 = (i6 & 8192) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getFocusLeadingIconColor(), composer, i9) : j13;
        long color8 = (i6 & 16384) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getLeadingIconColor(), composer, i9) : j14;
        long m2638copywmQWz5c$default3 = (32768 & i6) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getDisabledLeadingIconColor(), composer, i9), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j15;
        if ((65536 & i6) != 0) {
            i10 = 6;
            j43 = ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getErrorLeadingIconColor(), composer, 6);
        } else {
            i10 = 6;
            j43 = j16;
        }
        long color9 = (131072 & i6) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getFocusTrailingIconColor(), composer, i10) : j17;
        long color10 = (262144 & i6) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getTrailingIconColor(), composer, i10) : j18;
        long m2638copywmQWz5c$default4 = (524288 & i6) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getDisabledTrailingIconColor(), composer, i10), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j19;
        if ((1048576 & i6) != 0) {
            i11 = 6;
            j44 = ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getErrorTrailingIconColor(), composer, 6);
        } else {
            i11 = 6;
            j44 = j20;
        }
        long color11 = (2097152 & i6) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getFocusLabelColor(), composer, i11) : j21;
        long color12 = (4194304 & i6) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getLabelColor(), composer, i11) : j22;
        long m2638copywmQWz5c$default5 = (8388608 & i6) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getDisabledLabelColor(), composer, i11), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j23;
        if ((16777216 & i6) != 0) {
            i12 = 6;
            j45 = ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getErrorLabelColor(), composer, 6);
        } else {
            i12 = 6;
            j45 = j24;
        }
        long color13 = (33554432 & i6) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getInputPlaceholderColor(), composer, i12) : j25;
        long color14 = (67108864 & i6) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getInputPlaceholderColor(), composer, i12) : j26;
        long m2638copywmQWz5c$default6 = (134217728 & i6) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getDisabledInputColor(), composer, i12), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j27;
        if ((268435456 & i6) != 0) {
            i13 = 6;
            j46 = ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getInputPlaceholderColor(), composer, 6);
        } else {
            i13 = 6;
            j46 = j28;
        }
        long color15 = (536870912 & i6) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getFocusSupportingColor(), composer, i13) : j29;
        long color16 = (i6 & 1073741824) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getSupportingColor(), composer, i13) : j30;
        long m2638copywmQWz5c$default7 = (i7 & 1) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getDisabledSupportingColor(), composer, i13), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j31;
        if ((i7 & 2) != 0) {
            i14 = 6;
            j47 = ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getErrorSupportingColor(), composer, 6);
        } else {
            i14 = 6;
            j47 = j32;
        }
        long color17 = (i7 & 4) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getInputPrefixColor(), composer, i14) : j33;
        long color18 = (i7 & 8) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getInputPrefixColor(), composer, i14) : j34;
        long m2638copywmQWz5c$default8 = (i7 & 16) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getInputPrefixColor(), composer, i14), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j35;
        if ((i7 & 32) != 0) {
            i15 = 6;
            j48 = ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getInputPrefixColor(), composer, 6);
        } else {
            i15 = 6;
            j48 = j36;
        }
        long color19 = (i7 & 64) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getInputSuffixColor(), composer, i15) : j37;
        long color20 = (i7 & 128) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getInputSuffixColor(), composer, i15) : j38;
        long m2638copywmQWz5c$default9 = (i7 & 256) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getInputSuffixColor(), composer, i15), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j39;
        long color21 = (i7 & 512) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getInputSuffixColor(), composer, 6) : j40;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(618732090, i, i2, "androidx.compose.material3.TextFieldDefaults.outlinedTextFieldColors (TextFieldDefaults.kt:820)");
        }
        int i16 = i << 6;
        int i17 = i >> 24;
        int i18 = i2 << 6;
        int i19 = (i17 & 112) | (i17 & 14) | (i18 & 896) | (i18 & 7168) | (i18 & 57344) | (i18 & 458752) | (i18 & 3670016) | (i18 & 29360128) | (i18 & 234881024) | (i18 & 1879048192);
        int i20 = i2 >> 24;
        int i21 = i3 << 6;
        int i22 = (i20 & 112) | (i20 & 14) | (i21 & 896) | (i21 & 7168) | (i21 & 57344) | (i21 & 458752) | (i21 & 3670016) | (i21 & 29360128) | (i21 & 234881024) | (i21 & 1879048192);
        int i23 = i3 >> 24;
        int i24 = i4 << 6;
        int i25 = (i23 & 112) | (i23 & 14) | (i24 & 896) | (i24 & 7168) | (i24 & 57344) | (i24 & 458752) | (i24 & 3670016) | (i24 & 29360128) | (i24 & 234881024) | (i24 & 1879048192);
        int i26 = i4 >> 24;
        TextFieldColors m1327colors0hiis_0 = OutlinedTextFieldDefaults.INSTANCE.m1327colors0hiis_0(color, color2, m2638copywmQWz5c$default, color3, m2674getTransparent0d7_KjU, m2674getTransparent0d7_KjU, m2674getTransparent0d7_KjU, m2674getTransparent0d7_KjU2, color4, color5, textSelectionColors2, j41, color6, m2638copywmQWz5c$default2, j42, color7, color8, m2638copywmQWz5c$default3, j43, color9, color10, m2638copywmQWz5c$default4, j44, color11, color12, m2638copywmQWz5c$default5, j45, color13, color14, m2638copywmQWz5c$default6, j46, color15, color16, m2638copywmQWz5c$default7, j47, color17, color18, m2638copywmQWz5c$default8, j48, color19, color20, m2638copywmQWz5c$default9, color21, composer, (i & 14) | (i & 112) | (i & 896) | (i & 7168) | (i & 57344) | ((i << 3) & 458752) | (i16 & 3670016) | (i16 & 29360128) | (i16 & 234881024) | (i16 & 1879048192), i19, i22, i25, (i26 & 112) | (i26 & 14) | 3072 | ((i5 << 6) & 896), 0, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return m1327colors0hiis_0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x01d9, code lost:
    
        if (r8.changed(r133) == false) goto L435;
     */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0441  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x04b8  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x02dc  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x02e3  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x02e9  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x02ef  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x02f5  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x02fb  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0301  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0308  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x030e  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0326  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x03a3  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x03ec  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x041a  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x03e8  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x039d  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x031c  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0303  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x02fd  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x02f7  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x02f1  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x02eb  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x02e5  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x02de  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0249  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0229  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x021a  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x01e3  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0206  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0222  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0242  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0266  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x04da  */
    /* JADX WARN: Removed duplicated region for block: B:90:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x029c  */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.WARNING, message = "Renamed to `TextFieldDefaults.DecorationBox`", replaceWith = @kotlin.ReplaceWith(expression = "TextFieldDefaults.DecorationBox(\n        value = value,\n        innerTextField = innerTextField,\n        enabled = enabled,\n        singleLine = singleLine,\n        visualTransformation = visualTransformation,\n        interactionSource = interactionSource,\n        isError = isError,\n        label = label,\n        placeholder = placeholder,\n        leadingIcon = leadingIcon,\n        trailingIcon = trailingIcon,\n        prefix = prefix,\n        suffix = suffix,\n        supportingText = supportingText,\n        shape = shape,\n        colors = colors,\n        contentPadding = contentPadding,\n        container = container,\n    )", imports = {}))
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void TextFieldDecorationBox(final java.lang.String r119, final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r120, final boolean r121, final boolean r122, final androidx.compose.ui.text.input.VisualTransformation r123, final androidx.compose.foundation.interaction.InteractionSource r124, boolean r125, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r126, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r127, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r128, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r129, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r130, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r131, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r132, androidx.compose.ui.graphics.Shape r133, androidx.compose.material3.TextFieldColors r134, androidx.compose.foundation.layout.PaddingValues r135, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r136, androidx.compose.runtime.Composer r137, final int r138, final int r139, final int r140) {
        /*
            Method dump skipped, instructions count: 1281
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.TextFieldDefaults.TextFieldDecorationBox(java.lang.String, kotlin.jvm.functions.Function2, boolean, boolean, androidx.compose.ui.text.input.VisualTransformation, androidx.compose.foundation.interaction.InteractionSource, boolean, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, androidx.compose.ui.graphics.Shape, androidx.compose.material3.TextFieldColors, androidx.compose.foundation.layout.PaddingValues, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x029d  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x02a3  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x02a9  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x02af  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x02b5  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x02bb  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x02c2  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x02c8  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0341  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x036d  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0397  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0367  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x033b  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x02bd  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x02b7  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x02b1  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x02ab  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x02a5  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x029f  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0298  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0204  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01b8  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01d3  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x020a  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x022e  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x044e  */
    /* JADX WARN: Removed duplicated region for block: B:79:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0262  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x03ba  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x042e  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0296  */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.WARNING, message = "Renamed to `OutlinedTextFieldDefaults.DecorationBox`", replaceWith = @kotlin.ReplaceWith(expression = "OutlinedTextFieldDefaults.DecorationBox(\n        value = value,\n        innerTextField = innerTextField,\n        enabled = enabled,\n        singleLine = singleLine,\n        visualTransformation = visualTransformation,\n        interactionSource = interactionSource,\n        isError = isError,\n        label = label,\n        placeholder = placeholder,\n        leadingIcon = leadingIcon,\n        trailingIcon = trailingIcon,\n        prefix = prefix,\n        suffix = suffix,\n        supportingText = supportingText,\n        colors = colors,\n        contentPadding = contentPadding,\n        container = container,\n    )", imports = {"androidx.compose.material.OutlinedTextFieldDefaults"}))
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void OutlinedTextFieldDecorationBox(final java.lang.String r117, final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r118, final boolean r119, final boolean r120, final androidx.compose.ui.text.input.VisualTransformation r121, final androidx.compose.foundation.interaction.InteractionSource r122, boolean r123, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r124, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r125, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r126, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r127, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r128, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r129, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r130, androidx.compose.material3.TextFieldColors r131, androidx.compose.foundation.layout.PaddingValues r132, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r133, androidx.compose.runtime.Composer r134, final int r135, final int r136, final int r137) {
        /*
            Method dump skipped, instructions count: 1141
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.TextFieldDefaults.OutlinedTextFieldDecorationBox(java.lang.String, kotlin.jvm.functions.Function2, boolean, boolean, androidx.compose.ui.text.input.VisualTransformation, androidx.compose.foundation.interaction.InteractionSource, boolean, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, androidx.compose.material3.TextFieldColors, androidx.compose.foundation.layout.PaddingValues, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int, int, int):void");
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Maintained for binary compatibility")
    /* renamed from: textFieldColors-eS1Emto */
    public final /* synthetic */ TextFieldColors m1547textFieldColorseS1Emto(long j, long j2, long j3, long j4, long j5, TextSelectionColors textSelectionColors, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, Composer composer, int i, int i2, int i3, int i4, int i5, int i6) {
        TextSelectionColors textSelectionColors2;
        composer.startReplaceableGroup(-595874869);
        ComposerKt.sourceInformation(composer, "C(textFieldColors)P(28:c#ui.graphics.Color,9:c#ui.graphics.Color,0:c#ui.graphics.Color,1:c#ui.graphics.Color,11:c#ui.graphics.Color,27,19:c#ui.graphics.Color,29:c#ui.graphics.Color,2:c#ui.graphics.Color,12:c#ui.graphics.Color,21:c#ui.graphics.Color,31:c#ui.graphics.Color,4:c#ui.graphics.Color,14:c#ui.graphics.Color,25:c#ui.graphics.Color,35:c#ui.graphics.Color,10:c#ui.graphics.Color,18:c#ui.graphics.Color,20:c#ui.graphics.Color,30:c#ui.graphics.Color,3:c#ui.graphics.Color,13:c#ui.graphics.Color,26:c#ui.graphics.Color,5:c#ui.graphics.Color,24:c#ui.graphics.Color,34:c#ui.graphics.Color,8:c#ui.graphics.Color,17:c#ui.graphics.Color,22:c#ui.graphics.Color,32:c#ui.graphics.Color,6:c#ui.graphics.Color,15:c#ui.graphics.Color,23:c#ui.graphics.Color,33:c#ui.graphics.Color,7:c#ui.graphics.Color,16:c#ui.graphics.Color)1060@58072L9,1061@58159L9,1063@58309L9,1064@58382L9,1065@58470L9,1066@58553L7,1067@58649L9,1068@58744L9,1069@58846L9,1071@59022L9,1072@59118L9,1073@59211L9,1074@59311L9,1076@59481L9,1077@59579L9,1078@59674L9,1079@59776L9,1081@59949L9,1082@60033L9,1083@60114L9,1084@60202L9,1086@60354L9,1087@60443L9,1088@60537L9,1090@60705L9,1091@60800L9,1092@60902L9,1094@61073L9,1095@61159L9,1096@61247L9,1097@61334L9,1099@61488L9,1100@61574L9,1101@61662L9,1102@61749L9,1104@61903L9,1105@61939L2261:TextFieldDefaults.kt#uh7d8r");
        long color = (i5 & 1) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getInputColor(), composer, 6) : j;
        long m2638copywmQWz5c$default = (i5 & 2) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getDisabledInputColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j2;
        long color2 = (i5 & 4) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getContainerColor(), composer, 6) : j3;
        long color3 = (i5 & 8) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getCaretColor(), composer, 6) : j4;
        long color4 = (i5 & 16) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getErrorFocusCaretColor(), composer, 6) : j5;
        if ((i5 & 32) != 0) {
            ProvidableCompositionLocal<TextSelectionColors> localTextSelectionColors = TextSelectionColorsKt.getLocalTextSelectionColors();
            ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object consume = composer.consume(localTextSelectionColors);
            ComposerKt.sourceInformationMarkerEnd(composer);
            textSelectionColors2 = (TextSelectionColors) consume;
        } else {
            textSelectionColors2 = textSelectionColors;
        }
        long color5 = (i5 & 64) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getFocusActiveIndicatorColor(), composer, 6) : j6;
        long color6 = (i5 & 128) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getActiveIndicatorColor(), composer, 6) : j7;
        long m2638copywmQWz5c$default2 = (i5 & 256) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getDisabledActiveIndicatorColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j8;
        long color7 = (i5 & 512) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getErrorActiveIndicatorColor(), composer, 6) : j9;
        long color8 = (i5 & 1024) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getFocusLeadingIconColor(), composer, 6) : j10;
        long color9 = (i5 & 2048) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getLeadingIconColor(), composer, 6) : j11;
        long m2638copywmQWz5c$default3 = (i5 & 4096) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getDisabledLeadingIconColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j12;
        long color10 = (i5 & 8192) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getErrorLeadingIconColor(), composer, 6) : j13;
        long color11 = (i5 & 16384) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getFocusTrailingIconColor(), composer, 6) : j14;
        long color12 = (32768 & i5) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getTrailingIconColor(), composer, 6) : j15;
        long m2638copywmQWz5c$default4 = (65536 & i5) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getDisabledTrailingIconColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j16;
        long color13 = (131072 & i5) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getErrorTrailingIconColor(), composer, 6) : j17;
        long color14 = (262144 & i5) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getFocusLabelColor(), composer, 6) : j18;
        long color15 = (524288 & i5) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getLabelColor(), composer, 6) : j19;
        long m2638copywmQWz5c$default5 = (1048576 & i5) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getDisabledLabelColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j20;
        long color16 = (2097152 & i5) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getErrorLabelColor(), composer, 6) : j21;
        long color17 = (4194304 & i5) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getInputPlaceholderColor(), composer, 6) : j22;
        long m2638copywmQWz5c$default6 = (8388608 & i5) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getDisabledInputColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j23;
        long color18 = (16777216 & i5) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getFocusSupportingColor(), composer, 6) : j24;
        long color19 = (33554432 & i5) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getSupportingColor(), composer, 6) : j25;
        long m2638copywmQWz5c$default7 = (67108864 & i5) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getDisabledSupportingColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j26;
        long color20 = (134217728 & i5) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getErrorSupportingColor(), composer, 6) : j27;
        long color21 = (268435456 & i5) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getInputPrefixColor(), composer, 6) : j28;
        long color22 = (536870912 & i5) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getInputPrefixColor(), composer, 6) : j29;
        long m2638copywmQWz5c$default8 = (i5 & 1073741824) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getInputPrefixColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j30;
        long color23 = (i6 & 1) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getInputPrefixColor(), composer, 6) : j31;
        long color24 = (i6 & 2) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getInputSuffixColor(), composer, 6) : j32;
        long color25 = (i6 & 4) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getInputSuffixColor(), composer, 6) : j33;
        long m2638copywmQWz5c$default9 = (i6 & 8) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getInputSuffixColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j34;
        long color26 = (i6 & 16) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getInputSuffixColor(), composer, 6) : j35;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-595874869, i, i2, "androidx.compose.material3.TextFieldDefaults.textFieldColors (TextFieldDefaults.kt:1059)");
        }
        int i7 = i << 3;
        int i8 = (i & 14) | (i7 & 112) | (i7 & 896);
        int i9 = i << 9;
        int i10 = i8 | (i9 & 7168) | ((i << 6) & 57344) | (i9 & 458752) | ((i << 12) & 3670016);
        int i11 = i << 15;
        int i12 = i10 | (i11 & 29360128) | (i11 & 234881024) | (i11 & 1879048192);
        int i13 = i >> 15;
        int i14 = i2 << 15;
        int i15 = (i13 & 57344) | (i13 & 14) | (i13 & 112) | (i13 & 896) | (i13 & 7168) | (i14 & 458752) | (i14 & 3670016) | (i14 & 29360128) | (i14 & 234881024) | (i14 & 1879048192);
        int i16 = i2 >> 15;
        int i17 = i3 << 15;
        int i18 = (i16 & 57344) | (i16 & 14) | (i16 & 112) | (i16 & 896) | (i16 & 7168) | (i17 & 458752) | (i17 & 3670016) | (i17 & 29360128);
        int i19 = i3 << 18;
        int i20 = i18 | (i19 & 234881024) | (i19 & 1879048192);
        int i21 = i3 >> 9;
        int i22 = ((i3 >> 6) & 14) | (i21 & 112) | (i21 & 896) | (i21 & 7168) | (i21 & 57344) | (i21 & 458752) | (i21 & 3670016);
        int i23 = i4 << 21;
        int i24 = i22 | (i23 & 29360128) | (i23 & 234881024) | (i23 & 1879048192);
        int i25 = i4 >> 9;
        TextFieldColors m1532colors0hiis_0 = m1532colors0hiis_0(color, color, m2638copywmQWz5c$default, color, color2, color2, color2, color2, color3, color4, textSelectionColors2, color5, color6, m2638copywmQWz5c$default2, color7, color8, color9, m2638copywmQWz5c$default3, color10, color11, color12, m2638copywmQWz5c$default4, color13, color14, color15, m2638copywmQWz5c$default5, color16, color17, color17, m2638copywmQWz5c$default6, color17, color18, color19, m2638copywmQWz5c$default7, color20, color21, color22, m2638copywmQWz5c$default8, color23, color24, color25, m2638copywmQWz5c$default9, color26, composer, i12, i15, i20, i24, (i25 & 14) | (i25 & 112) | (i25 & 896) | (i25 & 7168), 0, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return m1532colors0hiis_0;
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Maintained for binary compatibility")
    /* renamed from: outlinedTextFieldColors-eS1Emto */
    public final /* synthetic */ TextFieldColors m1543outlinedTextFieldColorseS1Emto(long j, long j2, long j3, long j4, long j5, TextSelectionColors textSelectionColors, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, Composer composer, int i, int i2, int i3, int i4, int i5, int i6) {
        TextSelectionColors textSelectionColors2;
        composer.startReplaceableGroup(1767818445);
        ComposerKt.sourceInformation(composer, "C(outlinedTextFieldColors)P(28:c#ui.graphics.Color,9:c#ui.graphics.Color,0:c#ui.graphics.Color,1:c#ui.graphics.Color,12:c#ui.graphics.Color,27,19:c#ui.graphics.Color,29:c#ui.graphics.Color,2:c#ui.graphics.Color,11:c#ui.graphics.Color,21:c#ui.graphics.Color,31:c#ui.graphics.Color,4:c#ui.graphics.Color,14:c#ui.graphics.Color,25:c#ui.graphics.Color,35:c#ui.graphics.Color,10:c#ui.graphics.Color,18:c#ui.graphics.Color,20:c#ui.graphics.Color,30:c#ui.graphics.Color,3:c#ui.graphics.Color,13:c#ui.graphics.Color,26:c#ui.graphics.Color,5:c#ui.graphics.Color,24:c#ui.graphics.Color,34:c#ui.graphics.Color,8:c#ui.graphics.Color,17:c#ui.graphics.Color,22:c#ui.graphics.Color,32:c#ui.graphics.Color,6:c#ui.graphics.Color,15:c#ui.graphics.Color,23:c#ui.graphics.Color,33:c#ui.graphics.Color,7:c#ui.graphics.Color,16:c#ui.graphics.Color)1155@64431L9,1156@64520L9,1159@64718L9,1160@64808L9,1161@64891L7,1162@64978L9,1163@65064L9,1164@65157L9,1166@65318L9,1167@65416L9,1168@65511L9,1169@65613L9,1171@65787L9,1172@65887L9,1173@65984L9,1175@66101L9,1176@66265L9,1177@66351L9,1178@66434L9,1179@66524L9,1181@66680L9,1182@66771L9,1183@66867L9,1185@67039L9,1186@67136L9,1188@67253L9,1189@67415L9,1190@67503L9,1191@67593L9,1192@67682L9,1194@67840L9,1195@67928L9,1196@68018L9,1197@68107L9,1199@68265L9,1200@68327L2237:TextFieldDefaults.kt#uh7d8r");
        long color = (i5 & 1) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getInputColor(), composer, 6) : j;
        long m2638copywmQWz5c$default = (i5 & 2) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getDisabledInputColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j2;
        long m2674getTransparent0d7_KjU = (i5 & 4) != 0 ? Color.INSTANCE.m2674getTransparent0d7_KjU() : j3;
        long color2 = (i5 & 8) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getCaretColor(), composer, 6) : j4;
        long color3 = (i5 & 16) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getErrorFocusCaretColor(), composer, 6) : j5;
        if ((i5 & 32) != 0) {
            ProvidableCompositionLocal<TextSelectionColors> localTextSelectionColors = TextSelectionColorsKt.getLocalTextSelectionColors();
            ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object consume = composer.consume(localTextSelectionColors);
            ComposerKt.sourceInformationMarkerEnd(composer);
            textSelectionColors2 = (TextSelectionColors) consume;
        } else {
            textSelectionColors2 = textSelectionColors;
        }
        long color4 = (i5 & 64) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getFocusOutlineColor(), composer, 6) : j6;
        long color5 = (i5 & 128) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getOutlineColor(), composer, 6) : j7;
        long m2638copywmQWz5c$default2 = (i5 & 256) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getDisabledOutlineColor(), composer, 6), 0.12f, 0.0f, 0.0f, 0.0f, 14, null) : j8;
        long color6 = (i5 & 512) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getErrorOutlineColor(), composer, 6) : j9;
        long color7 = (i5 & 1024) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getFocusLeadingIconColor(), composer, 6) : j10;
        long color8 = (i5 & 2048) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getLeadingIconColor(), composer, 6) : j11;
        long m2638copywmQWz5c$default3 = (i5 & 4096) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getDisabledLeadingIconColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j12;
        long color9 = (i5 & 8192) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getErrorLeadingIconColor(), composer, 6) : j13;
        long color10 = (i5 & 16384) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getFocusTrailingIconColor(), composer, 6) : j14;
        long color11 = (32768 & i5) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getTrailingIconColor(), composer, 6) : j15;
        long m2638copywmQWz5c$default4 = (65536 & i5) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getDisabledTrailingIconColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j16;
        long color12 = (131072 & i5) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getErrorTrailingIconColor(), composer, 6) : j17;
        long color13 = (262144 & i5) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getFocusLabelColor(), composer, 6) : j18;
        long color14 = (524288 & i5) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getLabelColor(), composer, 6) : j19;
        long m2638copywmQWz5c$default5 = (1048576 & i5) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getDisabledLabelColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j20;
        long color15 = (2097152 & i5) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getErrorLabelColor(), composer, 6) : j21;
        long color16 = (4194304 & i5) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getInputPlaceholderColor(), composer, 6) : j22;
        long m2638copywmQWz5c$default6 = (8388608 & i5) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getDisabledInputColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j23;
        long color17 = (16777216 & i5) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getFocusSupportingColor(), composer, 6) : j24;
        long color18 = (33554432 & i5) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getSupportingColor(), composer, 6) : j25;
        long m2638copywmQWz5c$default7 = (67108864 & i5) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getDisabledSupportingColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j26;
        long color19 = (134217728 & i5) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getErrorSupportingColor(), composer, 6) : j27;
        long color20 = (268435456 & i5) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getInputPrefixColor(), composer, 6) : j28;
        long color21 = (536870912 & i5) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getInputPrefixColor(), composer, 6) : j29;
        long m2638copywmQWz5c$default8 = (i5 & 1073741824) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getInputPrefixColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j30;
        long color22 = (i6 & 1) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getInputPrefixColor(), composer, 6) : j31;
        long color23 = (i6 & 2) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getInputSuffixColor(), composer, 6) : j32;
        long color24 = (i6 & 4) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getInputSuffixColor(), composer, 6) : j33;
        long m2638copywmQWz5c$default9 = (i6 & 8) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getInputSuffixColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j34;
        long color25 = (i6 & 16) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getInputSuffixColor(), composer, 6) : j35;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1767818445, i, i2, "androidx.compose.material3.TextFieldDefaults.outlinedTextFieldColors (TextFieldDefaults.kt:1154)");
        }
        int i7 = i << 3;
        int i8 = (i & 14) | (i7 & 112) | (i7 & 896);
        int i9 = i << 9;
        int i10 = i8 | (i9 & 7168) | ((i << 6) & 57344) | (i9 & 458752) | ((i << 12) & 3670016);
        int i11 = i << 15;
        int i12 = i10 | (i11 & 29360128) | (i11 & 234881024) | (i11 & 1879048192);
        int i13 = i >> 15;
        int i14 = i2 << 15;
        int i15 = (i13 & 57344) | (i13 & 14) | (i13 & 112) | (i13 & 896) | (i13 & 7168) | (i14 & 458752) | (i14 & 3670016) | (i14 & 29360128) | (i14 & 234881024) | (i14 & 1879048192);
        int i16 = i2 >> 15;
        int i17 = i3 << 15;
        int i18 = (i16 & 57344) | (i16 & 14) | (i16 & 112) | (i16 & 896) | (i16 & 7168) | (i17 & 458752) | (i17 & 3670016) | (i17 & 29360128);
        int i19 = i3 << 18;
        int i20 = i18 | (i19 & 234881024) | (i19 & 1879048192);
        int i21 = i3 >> 9;
        int i22 = ((i3 >> 6) & 14) | (i21 & 112) | (i21 & 896) | (i21 & 7168) | (i21 & 57344) | (i21 & 458752) | (i21 & 3670016);
        int i23 = i4 << 21;
        int i24 = i22 | (i23 & 29360128) | (i23 & 234881024) | (i23 & 1879048192);
        int i25 = i4 >> 9;
        TextFieldColors m1327colors0hiis_0 = OutlinedTextFieldDefaults.INSTANCE.m1327colors0hiis_0(color, color, m2638copywmQWz5c$default, color, m2674getTransparent0d7_KjU, m2674getTransparent0d7_KjU, m2674getTransparent0d7_KjU, m2674getTransparent0d7_KjU, color2, color3, textSelectionColors2, color4, color5, m2638copywmQWz5c$default2, color6, color7, color8, m2638copywmQWz5c$default3, color9, color10, color11, m2638copywmQWz5c$default4, color12, color13, color14, m2638copywmQWz5c$default5, color15, color16, color16, m2638copywmQWz5c$default6, color16, color17, color18, m2638copywmQWz5c$default7, color19, color20, color21, m2638copywmQWz5c$default8, color22, color23, color24, m2638copywmQWz5c$default9, color25, composer, i12, i15, i20, i24, (i25 & 14) | 3072 | (i25 & 112) | (i25 & 896), 0, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return m1327colors0hiis_0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x01bf, code lost:
    
        if (r6.changed(r131) == false) goto L398;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x01d9, code lost:
    
        if (r6.changed(r132) == false) goto L409;
     */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0462  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0298  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x02a0  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x02a7  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x02ae  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x02b5  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x02bc  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x02c5  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x02d9  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0355  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x039c  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x03ca  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0398  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x034d  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x02d1  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x02bf  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x02b8  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x02b1  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x02aa  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x02a3  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x029a  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x01f3  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x01e3  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x01af  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x020a  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0480  */
    /* JADX WARN: Removed duplicated region for block: B:82:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0262  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x03eb  */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Use overload with prefix and suffix parameters")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ void TextFieldDecorationBox(final java.lang.String r118, final kotlin.jvm.functions.Function2 r119, final boolean r120, final boolean r121, final androidx.compose.ui.text.input.VisualTransformation r122, final androidx.compose.foundation.interaction.InteractionSource r123, boolean r124, kotlin.jvm.functions.Function2 r125, kotlin.jvm.functions.Function2 r126, kotlin.jvm.functions.Function2 r127, kotlin.jvm.functions.Function2 r128, kotlin.jvm.functions.Function2 r129, androidx.compose.ui.graphics.Shape r130, androidx.compose.material3.TextFieldColors r131, androidx.compose.foundation.layout.PaddingValues r132, kotlin.jvm.functions.Function2 r133, androidx.compose.runtime.Composer r134, final int r135, final int r136, final int r137) {
        /*
            Method dump skipped, instructions count: 1191
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.TextFieldDefaults.TextFieldDecorationBox(java.lang.String, kotlin.jvm.functions.Function2, boolean, boolean, androidx.compose.ui.text.input.VisualTransformation, androidx.compose.foundation.interaction.InteractionSource, boolean, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, androidx.compose.ui.graphics.Shape, androidx.compose.material3.TextFieldColors, androidx.compose.foundation.layout.PaddingValues, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int, int, int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x01bd, code lost:
    
        if (r6.changed(r128) == false) goto L364;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x025f  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0266  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x026c  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x02e2  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0309  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0331  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0305  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x02dc  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0261  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x025b  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0255  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x024b  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x01c7  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x03db  */
    /* JADX WARN: Removed duplicated region for block: B:71:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0350  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x03bf  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0249  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0253  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0259  */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Use overload with prefix and suffix parameters")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ void OutlinedTextFieldDecorationBox(final java.lang.String r115, final kotlin.jvm.functions.Function2 r116, final boolean r117, final boolean r118, final androidx.compose.ui.text.input.VisualTransformation r119, final androidx.compose.foundation.interaction.InteractionSource r120, boolean r121, kotlin.jvm.functions.Function2 r122, kotlin.jvm.functions.Function2 r123, kotlin.jvm.functions.Function2 r124, kotlin.jvm.functions.Function2 r125, kotlin.jvm.functions.Function2 r126, androidx.compose.material3.TextFieldColors r127, androidx.compose.foundation.layout.PaddingValues r128, kotlin.jvm.functions.Function2 r129, androidx.compose.runtime.Composer r130, final int r131, final int r132, final int r133) {
        /*
            Method dump skipped, instructions count: 1026
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.TextFieldDefaults.OutlinedTextFieldDecorationBox(java.lang.String, kotlin.jvm.functions.Function2, boolean, boolean, androidx.compose.ui.text.input.VisualTransformation, androidx.compose.foundation.interaction.InteractionSource, boolean, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, androidx.compose.material3.TextFieldColors, androidx.compose.foundation.layout.PaddingValues, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int, int, int):void");
    }

    /* renamed from: indicatorLine-gv0btCI */
    public final Modifier m1541indicatorLinegv0btCI(Modifier indicatorLine, final boolean z, final boolean z2, final InteractionSource interactionSource, final TextFieldColors colors, final float f, final float f2) {
        Intrinsics.checkNotNullParameter(indicatorLine, "$this$indicatorLine");
        Intrinsics.checkNotNullParameter(interactionSource, "interactionSource");
        Intrinsics.checkNotNullParameter(colors, "colors");
        return ComposedModifierKt.composed(indicatorLine, InspectableValueKt.isDebugInspectorInfoEnabled() ? new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.material3.TextFieldDefaults$indicatorLine-gv0btCI$$inlined$debugInspectorInfo$1
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
            public final void invoke2(InspectorInfo inspectorInfo) {
                Intrinsics.checkNotNullParameter(inspectorInfo, "$this$null");
                inspectorInfo.setName("indicatorLine");
                inspectorInfo.getProperties().set("enabled", Boolean.valueOf(z));
                inspectorInfo.getProperties().set("isError", Boolean.valueOf(z2));
                inspectorInfo.getProperties().set("interactionSource", interactionSource);
                inspectorInfo.getProperties().set("colors", colors);
                inspectorInfo.getProperties().set("focusedIndicatorLineThickness", Dp.m4881boximpl(f));
                inspectorInfo.getProperties().set("unfocusedIndicatorLineThickness", Dp.m4881boximpl(f2));
            }
        } : InspectableValueKt.getNoInspectorInfo(), new Function3<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.material3.TextFieldDefaults$indicatorLine$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
                return invoke(modifier, composer, num.intValue());
            }

            public final Modifier invoke(Modifier composed, Composer composer, int i) {
                State m1551animateBorderStrokeAsStateNuRrP5Q;
                Intrinsics.checkNotNullParameter(composed, "$this$composed");
                composer.startReplaceableGroup(-891038934);
                ComposerKt.sourceInformation(composer, "C140@6028L217:TextFieldDefaults.kt#uh7d8r");
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-891038934, i, -1, "androidx.compose.material3.TextFieldDefaults.indicatorLine.<anonymous> (TextFieldDefaults.kt:139)");
                }
                m1551animateBorderStrokeAsStateNuRrP5Q = TextFieldDefaultsKt.m1551animateBorderStrokeAsStateNuRrP5Q(z, z2, interactionSource, colors, f, f2, composer, 0);
                Modifier drawIndicatorLine = TextFieldKt.drawIndicatorLine(Modifier.INSTANCE, (BorderStroke) m1551animateBorderStrokeAsStateNuRrP5Q.getValue());
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                composer.endReplaceableGroup();
                return drawIndicatorLine;
            }
        });
    }

    static {
        float m4883constructorimpl = Dp.m4883constructorimpl(1);
        UnfocusedIndicatorThickness = m4883constructorimpl;
        float m4883constructorimpl2 = Dp.m4883constructorimpl(2);
        FocusedIndicatorThickness = m4883constructorimpl2;
        UnfocusedBorderThickness = m4883constructorimpl;
        FocusedBorderThickness = m4883constructorimpl2;
    }
}
