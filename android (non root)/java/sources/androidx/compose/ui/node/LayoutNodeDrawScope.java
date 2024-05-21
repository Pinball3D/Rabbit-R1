package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.PathEffect;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpRect;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import io.sentry.protocol.ViewHierarchyNode;
import java.util.List;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LayoutNodeDrawScope.kt */
@Metadata(d1 = {"\u0000ü\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J5\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010!\u001a\u00020\"2\u0006\u0010\u0012\u001a\u00020#H\u0000ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b$\u0010%Jt\u0010&\u001a\u00020\u001e2\u0006\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u000b2\u0006\u0010*\u001a\u00020\u000b2\u0006\u0010+\u001a\u00020,2\b\b\u0002\u0010-\u001a\u00020\u00072\b\b\u0002\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010.\u001a\u00020\u000b2\b\b\u0002\u0010/\u001a\u0002002\n\b\u0002\u00101\u001a\u0004\u0018\u0001022\b\b\u0002\u00103\u001a\u000204H\u0096\u0001ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b5\u00106Jt\u0010&\u001a\u00020\u001e2\u0006\u00107\u001a\u0002082\u0006\u0010)\u001a\u00020\u000b2\u0006\u0010*\u001a\u00020\u000b2\u0006\u0010+\u001a\u00020,2\b\b\u0002\u0010-\u001a\u00020\u00072\b\b\u0002\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010.\u001a\u00020\u000b2\b\b\u0002\u0010/\u001a\u0002002\n\b\u0002\u00101\u001a\u0004\u0018\u0001022\b\b\u0002\u00103\u001a\u000204H\u0096\u0001ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b9\u0010:J\\\u0010;\u001a\u00020\u001e2\u0006\u0010'\u001a\u00020(2\b\b\u0002\u0010<\u001a\u00020\u000b2\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010.\u001a\u00020\u000b2\b\b\u0002\u0010/\u001a\u0002002\n\b\u0002\u00101\u001a\u0004\u0018\u0001022\b\b\u0002\u00103\u001a\u000204H\u0096\u0001ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b=\u0010>J\\\u0010;\u001a\u00020\u001e2\u0006\u00107\u001a\u0002082\b\b\u0002\u0010<\u001a\u00020\u000b2\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010.\u001a\u00020\u000b2\b\b\u0002\u0010/\u001a\u0002002\n\b\u0002\u00101\u001a\u0004\u0018\u0001022\b\b\u0002\u00103\u001a\u000204H\u0096\u0001ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b?\u0010@J\b\u0010A\u001a\u00020\u001eH\u0016J5\u0010B\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010!\u001a\u00020\"2\u0006\u0010\u0012\u001a\u00020\u0013H\u0000ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bC\u0010DJR\u0010E\u001a\u00020\u001e2\u0006\u0010F\u001a\u00020G2\b\b\u0002\u0010-\u001a\u00020\u00072\b\b\u0002\u0010.\u001a\u00020\u000b2\b\b\u0002\u0010/\u001a\u0002002\n\b\u0002\u00101\u001a\u0004\u0018\u0001022\b\b\u0002\u00103\u001a\u000204H\u0096\u0001ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bH\u0010IJp\u0010E\u001a\u00020\u001e2\u0006\u0010F\u001a\u00020G2\b\b\u0002\u0010J\u001a\u00020K2\b\b\u0002\u0010L\u001a\u00020M2\b\b\u0002\u0010N\u001a\u00020K2\b\b\u0002\u0010O\u001a\u00020M2\b\b\u0002\u0010.\u001a\u00020\u000b2\b\b\u0002\u0010/\u001a\u0002002\n\b\u0002\u00101\u001a\u0004\u0018\u0001022\b\b\u0002\u00103\u001a\u000204H\u0097\u0001ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bP\u0010QJz\u0010E\u001a\u00020\u001e2\u0006\u0010F\u001a\u00020G2\b\b\u0002\u0010J\u001a\u00020K2\b\b\u0002\u0010L\u001a\u00020M2\b\b\u0002\u0010N\u001a\u00020K2\b\b\u0002\u0010O\u001a\u00020M2\b\b\u0002\u0010.\u001a\u00020\u000b2\b\b\u0002\u0010/\u001a\u0002002\n\b\u0002\u00101\u001a\u0004\u0018\u0001022\b\b\u0002\u00103\u001a\u0002042\b\b\u0002\u0010R\u001a\u00020SH\u0096\u0001ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bT\u0010UJn\u0010V\u001a\u00020\u001e2\u0006\u0010'\u001a\u00020(2\u0006\u0010W\u001a\u00020\u00072\u0006\u0010X\u001a\u00020\u00072\b\b\u0002\u0010Y\u001a\u00020\u000b2\b\b\u0002\u0010Z\u001a\u00020[2\n\b\u0002\u0010\\\u001a\u0004\u0018\u00010]2\b\b\u0002\u0010.\u001a\u00020\u000b2\n\b\u0002\u00101\u001a\u0004\u0018\u0001022\b\b\u0002\u00103\u001a\u000204H\u0096\u0001ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b^\u0010_Jn\u0010V\u001a\u00020\u001e2\u0006\u00107\u001a\u0002082\u0006\u0010W\u001a\u00020\u00072\u0006\u0010X\u001a\u00020\u00072\b\b\u0002\u0010Y\u001a\u00020\u000b2\b\b\u0002\u0010Z\u001a\u00020[2\n\b\u0002\u0010\\\u001a\u0004\u0018\u00010]2\b\b\u0002\u0010.\u001a\u00020\u000b2\n\b\u0002\u00101\u001a\u0004\u0018\u0001022\b\b\u0002\u00103\u001a\u000204H\u0096\u0001ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b`\u0010aJ\\\u0010b\u001a\u00020\u001e2\u0006\u0010'\u001a\u00020(2\b\b\u0002\u0010-\u001a\u00020\u00072\b\b\u0002\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010.\u001a\u00020\u000b2\b\b\u0002\u0010/\u001a\u0002002\n\b\u0002\u00101\u001a\u0004\u0018\u0001022\b\b\u0002\u00103\u001a\u000204H\u0096\u0001ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bc\u0010dJ\\\u0010b\u001a\u00020\u001e2\u0006\u00107\u001a\u0002082\b\b\u0002\u0010-\u001a\u00020\u00072\b\b\u0002\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010.\u001a\u00020\u000b2\b\b\u0002\u0010/\u001a\u0002002\n\b\u0002\u00101\u001a\u0004\u0018\u0001022\b\b\u0002\u00103\u001a\u000204H\u0096\u0001ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\be\u0010fJP\u0010g\u001a\u00020\u001e2\u0006\u0010h\u001a\u00020i2\u0006\u0010'\u001a\u00020(2\b\b\u0002\u0010.\u001a\u00020\u000b2\b\b\u0002\u0010/\u001a\u0002002\n\b\u0002\u00101\u001a\u0004\u0018\u0001022\b\b\u0002\u00103\u001a\u000204H\u0096\u0001ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bj\u0010kJP\u0010g\u001a\u00020\u001e2\u0006\u0010h\u001a\u00020i2\u0006\u00107\u001a\u0002082\b\b\u0002\u0010.\u001a\u00020\u000b2\b\b\u0002\u0010/\u001a\u0002002\n\b\u0002\u00101\u001a\u0004\u0018\u0001022\b\b\u0002\u00103\u001a\u000204H\u0096\u0001ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bl\u0010mJt\u0010n\u001a\u00020\u001e2\f\u0010o\u001a\b\u0012\u0004\u0012\u00020\u00070p2\u0006\u0010q\u001a\u00020r2\u0006\u0010'\u001a\u00020(2\b\b\u0002\u0010Y\u001a\u00020\u000b2\b\b\u0002\u0010Z\u001a\u00020[2\n\b\u0002\u0010\\\u001a\u0004\u0018\u00010]2\b\b\u0002\u0010.\u001a\u00020\u000b2\n\b\u0002\u00101\u001a\u0004\u0018\u0001022\b\b\u0002\u00103\u001a\u000204H\u0096\u0001ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bs\u0010tJt\u0010n\u001a\u00020\u001e2\f\u0010o\u001a\b\u0012\u0004\u0012\u00020\u00070p2\u0006\u0010q\u001a\u00020r2\u0006\u00107\u001a\u0002082\b\b\u0002\u0010Y\u001a\u00020\u000b2\b\b\u0002\u0010Z\u001a\u00020[2\n\b\u0002\u0010\\\u001a\u0004\u0018\u00010]2\b\b\u0002\u0010.\u001a\u00020\u000b2\n\b\u0002\u00101\u001a\u0004\u0018\u0001022\b\b\u0002\u00103\u001a\u000204H\u0096\u0001ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bu\u0010vJ\\\u0010w\u001a\u00020\u001e2\u0006\u0010'\u001a\u00020(2\b\b\u0002\u0010-\u001a\u00020\u00072\b\b\u0002\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010.\u001a\u00020\u000b2\b\b\u0002\u0010/\u001a\u0002002\n\b\u0002\u00101\u001a\u0004\u0018\u0001022\b\b\u0002\u00103\u001a\u000204H\u0096\u0001ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bx\u0010dJ\\\u0010w\u001a\u00020\u001e2\u0006\u00107\u001a\u0002082\b\b\u0002\u0010-\u001a\u00020\u00072\b\b\u0002\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010.\u001a\u00020\u000b2\b\b\u0002\u0010/\u001a\u0002002\n\b\u0002\u00101\u001a\u0004\u0018\u0001022\b\b\u0002\u00103\u001a\u000204H\u0096\u0001ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\by\u0010fJf\u0010z\u001a\u00020\u001e2\u0006\u0010'\u001a\u00020(2\b\b\u0002\u0010-\u001a\u00020\u00072\b\b\u0002\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010{\u001a\u00020|2\b\b\u0002\u0010.\u001a\u00020\u000b2\b\b\u0002\u0010/\u001a\u0002002\n\b\u0002\u00101\u001a\u0004\u0018\u0001022\b\b\u0002\u00103\u001a\u000204H\u0096\u0001ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b}\u0010~Jg\u0010z\u001a\u00020\u001e2\u0006\u00107\u001a\u0002082\b\b\u0002\u0010-\u001a\u00020\u00072\b\b\u0002\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010{\u001a\u00020|2\b\b\u0002\u0010/\u001a\u0002002\b\b\u0002\u0010.\u001a\u00020\u000b2\n\b\u0002\u00101\u001a\u0004\u0018\u0001022\b\b\u0002\u00103\u001a\u000204H\u0096\u0001ø\u0001\u0001ø\u0001\u0000¢\u0006\u0005\b\u007f\u0010\u0080\u0001J\u0013\u0010\u0081\u0001\u001a\u00020\u001e*\u00020\u00132\u0006\u0010\u001f\u001a\u00020 J\u001f\u0010\u0082\u0001\u001a\u00030\u0083\u0001*\u00030\u0084\u0001H\u0097\u0001ø\u0001\u0001ø\u0001\u0000¢\u0006\u0006\b\u0085\u0001\u0010\u0086\u0001J\u001f\u0010\u0082\u0001\u001a\u00030\u0083\u0001*\u00030\u0087\u0001H\u0097\u0001ø\u0001\u0001ø\u0001\u0000¢\u0006\u0006\b\u0088\u0001\u0010\u0089\u0001J\u001f\u0010\u008a\u0001\u001a\u00030\u0084\u0001*\u00030\u0087\u0001H\u0097\u0001ø\u0001\u0001ø\u0001\u0000¢\u0006\u0006\b\u008b\u0001\u0010\u008c\u0001J!\u0010\u008a\u0001\u001a\u00030\u0084\u0001*\u00020\u000bH\u0097\u0001ø\u0001\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0006\b\u008d\u0001\u0010\u008e\u0001J\"\u0010\u008a\u0001\u001a\u00030\u0084\u0001*\u00030\u0083\u0001H\u0097\u0001ø\u0001\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0006\b\u008d\u0001\u0010\u008f\u0001J\u001e\u0010\u0090\u0001\u001a\u00030\u0091\u0001*\u00020\u001bH\u0097\u0001ø\u0001\u0001ø\u0001\u0000¢\u0006\u0006\b\u0092\u0001\u0010\u0093\u0001J\u001e\u0010\u0094\u0001\u001a\u00020\u000b*\u00030\u0084\u0001H\u0097\u0001ø\u0001\u0001ø\u0001\u0000¢\u0006\u0006\b\u0095\u0001\u0010\u008e\u0001J\u001e\u0010\u0094\u0001\u001a\u00020\u000b*\u00030\u0087\u0001H\u0097\u0001ø\u0001\u0001ø\u0001\u0000¢\u0006\u0006\b\u0096\u0001\u0010\u008c\u0001J\u0010\u0010\u0097\u0001\u001a\u00030\u0098\u0001*\u00030\u0099\u0001H\u0097\u0001J\u001e\u0010\u009a\u0001\u001a\u00020\u001b*\u00030\u0091\u0001H\u0097\u0001ø\u0001\u0001ø\u0001\u0000¢\u0006\u0006\b\u009b\u0001\u0010\u0093\u0001J\u001f\u0010\u009c\u0001\u001a\u00030\u0087\u0001*\u00030\u0084\u0001H\u0097\u0001ø\u0001\u0001ø\u0001\u0000¢\u0006\u0006\b\u009d\u0001\u0010\u009e\u0001J!\u0010\u009c\u0001\u001a\u00030\u0087\u0001*\u00020\u000bH\u0097\u0001ø\u0001\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0006\b\u009f\u0001\u0010\u009e\u0001J\"\u0010\u009c\u0001\u001a\u00030\u0087\u0001*\u00030\u0083\u0001H\u0097\u0001ø\u0001\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0006\b\u009f\u0001\u0010 \u0001R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\u0006\u001a\u00020\u00078VX\u0096\u0005ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u000b8\u0016X\u0097\u0005¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0012\u0010\u000e\u001a\u00020\u000fX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u00020\u000b8\u0016X\u0097\u0005¢\u0006\u0006\u001a\u0004\b\u0015\u0010\rR\u0012\u0010\u0016\u001a\u00020\u0017X\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019R\u001d\u0010\u001a\u001a\u00020\u001b8VX\u0096\u0005ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0006\u001a\u0004\b\u001c\u0010\t\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006¡\u0001"}, d2 = {"Landroidx/compose/ui/node/LayoutNodeDrawScope;", "Landroidx/compose/ui/graphics/drawscope/DrawScope;", "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;", "canvasDrawScope", "Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;", "(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;)V", "center", "Landroidx/compose/ui/geometry/Offset;", "getCenter-F1C5BW0", "()J", "density", "", "getDensity", "()F", "drawContext", "Landroidx/compose/ui/graphics/drawscope/DrawContext;", "getDrawContext", "()Landroidx/compose/ui/graphics/drawscope/DrawContext;", "drawNode", "Landroidx/compose/ui/node/DrawModifierNode;", "fontScale", "getFontScale", "layoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "getLayoutDirection", "()Landroidx/compose/ui/unit/LayoutDirection;", "size", "Landroidx/compose/ui/geometry/Size;", "getSize-NH-jbRc", "draw", "", "canvas", "Landroidx/compose/ui/graphics/Canvas;", "coordinator", "Landroidx/compose/ui/node/NodeCoordinator;", "Landroidx/compose/ui/Modifier$Node;", "draw-x_KDEd0$ui_release", "(Landroidx/compose/ui/graphics/Canvas;JLandroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/Modifier$Node;)V", "drawArc", "brush", "Landroidx/compose/ui/graphics/Brush;", "startAngle", "sweepAngle", "useCenter", "", "topLeft", ViewHierarchyNode.JsonKeys.ALPHA, "style", "Landroidx/compose/ui/graphics/drawscope/DrawStyle;", "colorFilter", "Landroidx/compose/ui/graphics/ColorFilter;", "blendMode", "Landroidx/compose/ui/graphics/BlendMode;", "drawArc-illE91I", "(Landroidx/compose/ui/graphics/Brush;FFZJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V", "color", "Landroidx/compose/ui/graphics/Color;", "drawArc-yD3GUKo", "(JFFZJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V", "drawCircle", "radius", "drawCircle-V9BoPsw", "(Landroidx/compose/ui/graphics/Brush;FJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V", "drawCircle-VaOC9Bg", "(JFJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V", "drawContent", "drawDirect", "drawDirect-x_KDEd0$ui_release", "(Landroidx/compose/ui/graphics/Canvas;JLandroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/node/DrawModifierNode;)V", "drawImage", "image", "Landroidx/compose/ui/graphics/ImageBitmap;", "drawImage-gbVJVH8", "(Landroidx/compose/ui/graphics/ImageBitmap;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V", "srcOffset", "Landroidx/compose/ui/unit/IntOffset;", "srcSize", "Landroidx/compose/ui/unit/IntSize;", "dstOffset", "dstSize", "drawImage-9jGpkUE", "(Landroidx/compose/ui/graphics/ImageBitmap;JJJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V", "filterQuality", "Landroidx/compose/ui/graphics/FilterQuality;", "drawImage-AZ2fEMs", "(Landroidx/compose/ui/graphics/ImageBitmap;JJJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;II)V", "drawLine", "start", "end", "strokeWidth", "cap", "Landroidx/compose/ui/graphics/StrokeCap;", "pathEffect", "Landroidx/compose/ui/graphics/PathEffect;", "drawLine-1RTmtNc", "(Landroidx/compose/ui/graphics/Brush;JJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;I)V", "drawLine-NGM6Ib0", "(JJJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;I)V", "drawOval", "drawOval-AsUm42w", "(Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V", "drawOval-n-J9OG0", "(JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V", "drawPath", "path", "Landroidx/compose/ui/graphics/Path;", "drawPath-GBMwjPU", "(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V", "drawPath-LG529CI", "(Landroidx/compose/ui/graphics/Path;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V", "drawPoints", "points", "", "pointMode", "Landroidx/compose/ui/graphics/PointMode;", "drawPoints-Gsft0Ws", "(Ljava/util/List;ILandroidx/compose/ui/graphics/Brush;FILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;I)V", "drawPoints-F8ZwMP8", "(Ljava/util/List;IJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;I)V", "drawRect", "drawRect-AsUm42w", "drawRect-n-J9OG0", "drawRoundRect", "cornerRadius", "Landroidx/compose/ui/geometry/CornerRadius;", "drawRoundRect-ZuiqVtQ", "(Landroidx/compose/ui/graphics/Brush;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V", "drawRoundRect-u-Aw5IA", "(JJJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;I)V", "performDraw", "roundToPx", "", "Landroidx/compose/ui/unit/Dp;", "roundToPx-0680j_4", "(F)I", "Landroidx/compose/ui/unit/TextUnit;", "roundToPx--R2X_6o", "(J)I", "toDp", "toDp-GaN1DYA", "(J)F", "toDp-u2uoSUM", "(F)F", "(I)F", "toDpSize", "Landroidx/compose/ui/unit/DpSize;", "toDpSize-k-rfVVM", "(J)J", "toPx", "toPx-0680j_4", "toPx--R2X_6o", "toRect", "Landroidx/compose/ui/geometry/Rect;", "Landroidx/compose/ui/unit/DpRect;", "toSize", "toSize-XkaWNTQ", "toSp", "toSp-0xMU5do", "(F)J", "toSp-kPz2Gy4", "(I)J", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LayoutNodeDrawScope implements DrawScope, ContentDrawScope {
    private final CanvasDrawScope canvasDrawScope;
    private DrawModifierNode drawNode;

    /* JADX WARN: Multi-variable type inference failed */
    public LayoutNodeDrawScope() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawArc-illE91I */
    public void mo3083drawArcillE91I(Brush brush, float startAngle, float sweepAngle, boolean useCenter, long topLeft, long size, float alpha, DrawStyle style, ColorFilter colorFilter, int blendMode) {
        Intrinsics.checkNotNullParameter(brush, "brush");
        Intrinsics.checkNotNullParameter(style, "style");
        this.canvasDrawScope.mo3083drawArcillE91I(brush, startAngle, sweepAngle, useCenter, topLeft, size, alpha, style, colorFilter, blendMode);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawArc-yD3GUKo */
    public void mo3084drawArcyD3GUKo(long color, float startAngle, float sweepAngle, boolean useCenter, long topLeft, long size, float alpha, DrawStyle style, ColorFilter colorFilter, int blendMode) {
        Intrinsics.checkNotNullParameter(style, "style");
        this.canvasDrawScope.mo3084drawArcyD3GUKo(color, startAngle, sweepAngle, useCenter, topLeft, size, alpha, style, colorFilter, blendMode);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawCircle-V9BoPsw */
    public void mo3085drawCircleV9BoPsw(Brush brush, float radius, long center, float alpha, DrawStyle style, ColorFilter colorFilter, int blendMode) {
        Intrinsics.checkNotNullParameter(brush, "brush");
        Intrinsics.checkNotNullParameter(style, "style");
        this.canvasDrawScope.mo3085drawCircleV9BoPsw(brush, radius, center, alpha, style, colorFilter, blendMode);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawCircle-VaOC9Bg */
    public void mo3086drawCircleVaOC9Bg(long color, float radius, long center, float alpha, DrawStyle style, ColorFilter colorFilter, int blendMode) {
        Intrinsics.checkNotNullParameter(style, "style");
        this.canvasDrawScope.mo3086drawCircleVaOC9Bg(color, radius, center, alpha, style, colorFilter, blendMode);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Prefer usage of drawImage that consumes an optional FilterQuality parameter", replaceWith = @ReplaceWith(expression = "drawImage(image, srcOffset, srcSize, dstOffset, dstSize, alpha, style, colorFilter, blendMode, FilterQuality.Low)", imports = {"androidx.compose.ui.graphics.drawscope", "androidx.compose.ui.graphics.FilterQuality"}))
    /* renamed from: drawImage-9jGpkUE */
    public /* synthetic */ void mo3087drawImage9jGpkUE(ImageBitmap image, long srcOffset, long srcSize, long dstOffset, long dstSize, float alpha, DrawStyle style, ColorFilter colorFilter, int blendMode) {
        Intrinsics.checkNotNullParameter(image, "image");
        Intrinsics.checkNotNullParameter(style, "style");
        this.canvasDrawScope.mo3087drawImage9jGpkUE(image, srcOffset, srcSize, dstOffset, dstSize, alpha, style, colorFilter, blendMode);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawImage-AZ2fEMs */
    public void mo3088drawImageAZ2fEMs(ImageBitmap image, long srcOffset, long srcSize, long dstOffset, long dstSize, float alpha, DrawStyle style, ColorFilter colorFilter, int blendMode, int filterQuality) {
        Intrinsics.checkNotNullParameter(image, "image");
        Intrinsics.checkNotNullParameter(style, "style");
        this.canvasDrawScope.mo3088drawImageAZ2fEMs(image, srcOffset, srcSize, dstOffset, dstSize, alpha, style, colorFilter, blendMode, filterQuality);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawImage-gbVJVH8 */
    public void mo3089drawImagegbVJVH8(ImageBitmap image, long topLeft, float alpha, DrawStyle style, ColorFilter colorFilter, int blendMode) {
        Intrinsics.checkNotNullParameter(image, "image");
        Intrinsics.checkNotNullParameter(style, "style");
        this.canvasDrawScope.mo3089drawImagegbVJVH8(image, topLeft, alpha, style, colorFilter, blendMode);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawLine-1RTmtNc */
    public void mo3090drawLine1RTmtNc(Brush brush, long start, long end, float strokeWidth, int cap, PathEffect pathEffect, float alpha, ColorFilter colorFilter, int blendMode) {
        Intrinsics.checkNotNullParameter(brush, "brush");
        this.canvasDrawScope.mo3090drawLine1RTmtNc(brush, start, end, strokeWidth, cap, pathEffect, alpha, colorFilter, blendMode);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawLine-NGM6Ib0 */
    public void mo3091drawLineNGM6Ib0(long color, long start, long end, float strokeWidth, int cap, PathEffect pathEffect, float alpha, ColorFilter colorFilter, int blendMode) {
        this.canvasDrawScope.mo3091drawLineNGM6Ib0(color, start, end, strokeWidth, cap, pathEffect, alpha, colorFilter, blendMode);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawOval-AsUm42w */
    public void mo3092drawOvalAsUm42w(Brush brush, long topLeft, long size, float alpha, DrawStyle style, ColorFilter colorFilter, int blendMode) {
        Intrinsics.checkNotNullParameter(brush, "brush");
        Intrinsics.checkNotNullParameter(style, "style");
        this.canvasDrawScope.mo3092drawOvalAsUm42w(brush, topLeft, size, alpha, style, colorFilter, blendMode);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawOval-n-J9OG0 */
    public void mo3093drawOvalnJ9OG0(long color, long topLeft, long size, float alpha, DrawStyle style, ColorFilter colorFilter, int blendMode) {
        Intrinsics.checkNotNullParameter(style, "style");
        this.canvasDrawScope.mo3093drawOvalnJ9OG0(color, topLeft, size, alpha, style, colorFilter, blendMode);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawPath-GBMwjPU */
    public void mo3094drawPathGBMwjPU(Path path, Brush brush, float alpha, DrawStyle style, ColorFilter colorFilter, int blendMode) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(brush, "brush");
        Intrinsics.checkNotNullParameter(style, "style");
        this.canvasDrawScope.mo3094drawPathGBMwjPU(path, brush, alpha, style, colorFilter, blendMode);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawPath-LG529CI */
    public void mo3095drawPathLG529CI(Path path, long color, float alpha, DrawStyle style, ColorFilter colorFilter, int blendMode) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(style, "style");
        this.canvasDrawScope.mo3095drawPathLG529CI(path, color, alpha, style, colorFilter, blendMode);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawPoints-F8ZwMP8 */
    public void mo3096drawPointsF8ZwMP8(List<Offset> points, int pointMode, long color, float strokeWidth, int cap, PathEffect pathEffect, float alpha, ColorFilter colorFilter, int blendMode) {
        Intrinsics.checkNotNullParameter(points, "points");
        this.canvasDrawScope.mo3096drawPointsF8ZwMP8(points, pointMode, color, strokeWidth, cap, pathEffect, alpha, colorFilter, blendMode);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawPoints-Gsft0Ws */
    public void mo3097drawPointsGsft0Ws(List<Offset> points, int pointMode, Brush brush, float strokeWidth, int cap, PathEffect pathEffect, float alpha, ColorFilter colorFilter, int blendMode) {
        Intrinsics.checkNotNullParameter(points, "points");
        Intrinsics.checkNotNullParameter(brush, "brush");
        this.canvasDrawScope.mo3097drawPointsGsft0Ws(points, pointMode, brush, strokeWidth, cap, pathEffect, alpha, colorFilter, blendMode);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawRect-AsUm42w */
    public void mo3098drawRectAsUm42w(Brush brush, long topLeft, long size, float alpha, DrawStyle style, ColorFilter colorFilter, int blendMode) {
        Intrinsics.checkNotNullParameter(brush, "brush");
        Intrinsics.checkNotNullParameter(style, "style");
        this.canvasDrawScope.mo3098drawRectAsUm42w(brush, topLeft, size, alpha, style, colorFilter, blendMode);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawRect-n-J9OG0 */
    public void mo3099drawRectnJ9OG0(long color, long topLeft, long size, float alpha, DrawStyle style, ColorFilter colorFilter, int blendMode) {
        Intrinsics.checkNotNullParameter(style, "style");
        this.canvasDrawScope.mo3099drawRectnJ9OG0(color, topLeft, size, alpha, style, colorFilter, blendMode);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawRoundRect-ZuiqVtQ */
    public void mo3100drawRoundRectZuiqVtQ(Brush brush, long topLeft, long size, long cornerRadius, float alpha, DrawStyle style, ColorFilter colorFilter, int blendMode) {
        Intrinsics.checkNotNullParameter(brush, "brush");
        Intrinsics.checkNotNullParameter(style, "style");
        this.canvasDrawScope.mo3100drawRoundRectZuiqVtQ(brush, topLeft, size, cornerRadius, alpha, style, colorFilter, blendMode);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawRoundRect-u-Aw5IA */
    public void mo3101drawRoundRectuAw5IA(long color, long topLeft, long size, long cornerRadius, DrawStyle style, float alpha, ColorFilter colorFilter, int blendMode) {
        Intrinsics.checkNotNullParameter(style, "style");
        this.canvasDrawScope.mo3101drawRoundRectuAw5IA(color, topLeft, size, cornerRadius, style, alpha, colorFilter, blendMode);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: getCenter-F1C5BW0 */
    public long mo3181getCenterF1C5BW0() {
        return this.canvasDrawScope.mo3181getCenterF1C5BW0();
    }

    @Override // androidx.compose.ui.unit.Density
    public float getDensity() {
        return this.canvasDrawScope.getDensity();
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public DrawContext getDrawContext() {
        return this.canvasDrawScope.getDrawContext();
    }

    @Override // androidx.compose.ui.unit.Density
    public float getFontScale() {
        return this.canvasDrawScope.getFontScale();
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public LayoutDirection getLayoutDirection() {
        return this.canvasDrawScope.getLayoutDirection();
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: getSize-NH-jbRc */
    public long mo3182getSizeNHjbRc() {
        return this.canvasDrawScope.mo3182getSizeNHjbRc();
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: roundToPx--R2X_6o */
    public int mo328roundToPxR2X_6o(long j) {
        return this.canvasDrawScope.mo328roundToPxR2X_6o(j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: roundToPx-0680j_4 */
    public int mo329roundToPx0680j_4(float f) {
        return this.canvasDrawScope.mo329roundToPx0680j_4(f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-GaN1DYA */
    public float mo330toDpGaN1DYA(long j) {
        return this.canvasDrawScope.mo330toDpGaN1DYA(j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM */
    public float mo331toDpu2uoSUM(float f) {
        return this.canvasDrawScope.mo331toDpu2uoSUM(f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM */
    public float mo332toDpu2uoSUM(int i) {
        return this.canvasDrawScope.mo332toDpu2uoSUM(i);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDpSize-k-rfVVM */
    public long mo333toDpSizekrfVVM(long j) {
        return this.canvasDrawScope.mo333toDpSizekrfVVM(j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toPx--R2X_6o */
    public float mo334toPxR2X_6o(long j) {
        return this.canvasDrawScope.mo334toPxR2X_6o(j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toPx-0680j_4 */
    public float mo335toPx0680j_4(float f) {
        return this.canvasDrawScope.mo335toPx0680j_4(f);
    }

    @Override // androidx.compose.ui.unit.Density
    public Rect toRect(DpRect dpRect) {
        Intrinsics.checkNotNullParameter(dpRect, "<this>");
        return this.canvasDrawScope.toRect(dpRect);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSize-XkaWNTQ */
    public long mo336toSizeXkaWNTQ(long j) {
        return this.canvasDrawScope.mo336toSizeXkaWNTQ(j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSp-0xMU5do */
    public long mo337toSp0xMU5do(float f) {
        return this.canvasDrawScope.mo337toSp0xMU5do(f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSp-kPz2Gy4 */
    public long mo338toSpkPz2Gy4(float f) {
        return this.canvasDrawScope.mo338toSpkPz2Gy4(f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSp-kPz2Gy4 */
    public long mo339toSpkPz2Gy4(int i) {
        return this.canvasDrawScope.mo339toSpkPz2Gy4(i);
    }

    public LayoutNodeDrawScope(CanvasDrawScope canvasDrawScope) {
        Intrinsics.checkNotNullParameter(canvasDrawScope, "canvasDrawScope");
        this.canvasDrawScope = canvasDrawScope;
    }

    public /* synthetic */ LayoutNodeDrawScope(CanvasDrawScope canvasDrawScope, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new CanvasDrawScope() : canvasDrawScope);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r3v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r3v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    @Override // androidx.compose.ui.graphics.drawscope.ContentDrawScope
    public void drawContent() {
        DelegatingNode nextDrawNode;
        Canvas canvas = getDrawContext().getCanvas();
        DrawModifierNode drawModifierNode = this.drawNode;
        Intrinsics.checkNotNull(drawModifierNode);
        DrawModifierNode drawModifierNode2 = drawModifierNode;
        nextDrawNode = LayoutNodeDrawScopeKt.nextDrawNode(drawModifierNode2);
        if (nextDrawNode == 0) {
            NodeCoordinator m3989requireCoordinator64DMado = DelegatableNodeKt.m3989requireCoordinator64DMado(drawModifierNode2, NodeKind.m4091constructorimpl(4));
            if (m3989requireCoordinator64DMado.getTail() == drawModifierNode.getNode()) {
                m3989requireCoordinator64DMado = m3989requireCoordinator64DMado.getWrapped();
                Intrinsics.checkNotNull(m3989requireCoordinator64DMado);
            }
            m3989requireCoordinator64DMado.performDraw(canvas);
            return;
        }
        int m4091constructorimpl = NodeKind.m4091constructorimpl(4);
        MutableVector mutableVector = null;
        while (nextDrawNode != 0) {
            if (nextDrawNode instanceof DrawModifierNode) {
                performDraw((DrawModifierNode) nextDrawNode, canvas);
            } else if ((nextDrawNode.getKindSet() & m4091constructorimpl) != 0 && (nextDrawNode instanceof DelegatingNode)) {
                Modifier.Node delegate = nextDrawNode.getDelegate();
                int i = 0;
                nextDrawNode = nextDrawNode;
                while (delegate != null) {
                    if ((delegate.getKindSet() & m4091constructorimpl) != 0) {
                        i++;
                        if (i == 1) {
                            nextDrawNode = delegate;
                        } else {
                            if (mutableVector == null) {
                                mutableVector = new MutableVector(new Modifier.Node[16], 0);
                            }
                            if (nextDrawNode != 0) {
                                if (mutableVector != null) {
                                    mutableVector.add(nextDrawNode);
                                }
                                nextDrawNode = 0;
                            }
                            if (mutableVector != null) {
                                mutableVector.add(delegate);
                            }
                        }
                    }
                    delegate = delegate.getChild();
                    nextDrawNode = nextDrawNode;
                }
                if (i == 1) {
                }
            }
            nextDrawNode = DelegatableNodeKt.pop(mutableVector);
        }
    }

    public final void performDraw(DrawModifierNode drawModifierNode, Canvas canvas) {
        Intrinsics.checkNotNullParameter(drawModifierNode, "<this>");
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        NodeCoordinator m3989requireCoordinator64DMado = DelegatableNodeKt.m3989requireCoordinator64DMado(drawModifierNode, NodeKind.m4091constructorimpl(4));
        m3989requireCoordinator64DMado.getLayoutNode().getMDrawScope$ui_release().m4027drawDirectx_KDEd0$ui_release(canvas, IntSizeKt.m5053toSizeozmzZPI(m3989requireCoordinator64DMado.mo3883getSizeYbymL2g()), m3989requireCoordinator64DMado, drawModifierNode);
    }

    /* renamed from: drawDirect-x_KDEd0$ui_release, reason: not valid java name */
    public final void m4027drawDirectx_KDEd0$ui_release(Canvas canvas, long size, NodeCoordinator coordinator, DrawModifierNode drawNode) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(coordinator, "coordinator");
        Intrinsics.checkNotNullParameter(drawNode, "drawNode");
        DrawModifierNode drawModifierNode = this.drawNode;
        this.drawNode = drawNode;
        CanvasDrawScope canvasDrawScope = this.canvasDrawScope;
        LayoutDirection layoutDirection = coordinator.getLayoutDirection();
        CanvasDrawScope.DrawParams drawParams = canvasDrawScope.getDrawParams();
        Density density = drawParams.getDensity();
        LayoutDirection layoutDirection2 = drawParams.getLayoutDirection();
        Canvas canvas2 = drawParams.getCanvas();
        long size2 = drawParams.getSize();
        CanvasDrawScope.DrawParams drawParams2 = canvasDrawScope.getDrawParams();
        drawParams2.setDensity(coordinator);
        drawParams2.setLayoutDirection(layoutDirection);
        drawParams2.setCanvas(canvas);
        drawParams2.m3106setSizeuvyYCjk(size);
        canvas.save();
        drawNode.draw(this);
        canvas.restore();
        CanvasDrawScope.DrawParams drawParams3 = canvasDrawScope.getDrawParams();
        drawParams3.setDensity(density);
        drawParams3.setLayoutDirection(layoutDirection2);
        drawParams3.setCanvas(canvas2);
        drawParams3.m3106setSizeuvyYCjk(size2);
        this.drawNode = drawModifierNode;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v0, types: [java.lang.Object, androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r15v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r15v10 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r15v4, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r15v5 */
    /* JADX WARN: Type inference failed for: r15v6 */
    /* JADX WARN: Type inference failed for: r15v7 */
    /* JADX WARN: Type inference failed for: r15v8 */
    /* JADX WARN: Type inference failed for: r15v9 */
    /* renamed from: draw-x_KDEd0$ui_release, reason: not valid java name */
    public final void m4026drawx_KDEd0$ui_release(Canvas canvas, long size, NodeCoordinator coordinator, Modifier.Node drawNode) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(coordinator, "coordinator");
        Intrinsics.checkNotNullParameter(drawNode, "drawNode");
        int m4091constructorimpl = NodeKind.m4091constructorimpl(4);
        MutableVector mutableVector = null;
        while (drawNode != 0) {
            if (drawNode instanceof DrawModifierNode) {
                m4027drawDirectx_KDEd0$ui_release(canvas, size, coordinator, drawNode);
            } else if ((drawNode.getKindSet() & m4091constructorimpl) != 0 && (drawNode instanceof DelegatingNode)) {
                Modifier.Node delegate = drawNode.getDelegate();
                int i = 0;
                drawNode = drawNode;
                while (delegate != null) {
                    if ((delegate.getKindSet() & m4091constructorimpl) != 0) {
                        i++;
                        if (i == 1) {
                            drawNode = delegate;
                        } else {
                            if (mutableVector == null) {
                                mutableVector = new MutableVector(new Modifier.Node[16], 0);
                            }
                            if (drawNode != 0) {
                                if (mutableVector != null) {
                                    mutableVector.add(drawNode);
                                }
                                drawNode = 0;
                            }
                            if (mutableVector != null) {
                                mutableVector.add(delegate);
                            }
                        }
                    }
                    delegate = delegate.getChild();
                    drawNode = drawNode;
                }
                if (i == 1) {
                }
            }
            drawNode = DelegatableNodeKt.pop(mutableVector);
        }
    }
}
