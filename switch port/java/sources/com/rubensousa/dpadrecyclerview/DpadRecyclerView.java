package com.rubensousa.dpadrecyclerview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import androidx.core.app.NotificationCompat;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SimpleItemAnimator;
import com.rubensousa.dpadrecyclerview.ParentAlignment;
import com.rubensousa.dpadrecyclerview.layoutmanager.PivotLayoutManager;
import io.sentry.SentryEnvelopeItemHeader;
import io.sentry.Session;
import io.sentry.protocol.Device;
import io.sentry.protocol.MetricSummary;
import io.sentry.protocol.SentryThread;
import io.sentry.protocol.SentryTransaction;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DpadRecyclerView.kt */
@Metadata(d1 = {"\u0000\u008e\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u001d\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\r\b\u0016\u0018\u0000 Û\u00012\u00020\u0001:\u0010Û\u0001Ü\u0001Ý\u0001Þ\u0001ß\u0001à\u0001á\u0001â\u0001B%\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u000e\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"J\u000e\u0010#\u001a\u00020 2\u0006\u0010!\u001a\u00020$J\u000e\u0010%\u001a\u00020 2\u0006\u0010!\u001a\u00020&J\r\u0010'\u001a\u00020 H\u0001¢\u0006\u0002\b(J\u0006\u0010)\u001a\u00020 J\u0006\u0010*\u001a\u00020 J\"\u0010+\u001a\u00020\u00152\u0006\u0010,\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0002J\r\u0010.\u001a\u00020 H\u0001¢\u0006\u0002\b/J\u0010\u00100\u001a\u00020 2\u0006\u00101\u001a\u000202H\u0014J\u0010\u00103\u001a\u00020\u000e2\u0006\u00104\u001a\u000205H\u0004J\u000e\u00106\u001a\u00020\u000e2\u0006\u00104\u001a\u000207J\u0010\u00108\u001a\u00020\u000e2\u0006\u00104\u001a\u000205H\u0016J\u000e\u00109\u001a\u00020 2\u0006\u0010:\u001a\u00020\u000eJ\u000e\u0010;\u001a\u00020 2\u0006\u0010:\u001a\u00020\u000eJ\u0006\u0010<\u001a\u00020\u0007J\u0006\u0010=\u001a\u00020\u0007J\u0006\u0010>\u001a\u00020\u0007J\u0006\u0010?\u001a\u00020\u0007J\u0010\u0010@\u001a\u0004\u0018\u00010A2\u0006\u0010B\u001a\u00020\u0007J\u0006\u0010C\u001a\u00020DJ\u0006\u0010E\u001a\u00020\u0007J\u0006\u0010F\u001a\u00020GJ\u0006\u0010H\u001a\u00020\u0007J\u0006\u0010I\u001a\u00020JJ\u0006\u0010K\u001a\u00020\u0007J\u0006\u0010L\u001a\u00020\u0007J\u0006\u0010M\u001a\u00020\u0007J\u0006\u0010N\u001a\u00020\u0007J\b\u0010O\u001a\u0004\u0018\u00010\u0011J\b\u0010P\u001a\u0004\u0018\u00010\u0013J\b\u0010Q\u001a\u0004\u0018\u00010\u001cJ\u0006\u0010R\u001a\u00020\u0007J\u0006\u0010S\u001a\u00020TJ\u0006\u0010U\u001a\u00020\u0007J\u0006\u0010V\u001a\u00020\u0007J\u0006\u0010W\u001a\u00020\u0007J\u0006\u0010X\u001a\u00020\u0007J\u0006\u0010Y\u001a\u00020ZJ\u0006\u0010[\u001a\u00020\u0007J\u0006\u0010\\\u001a\u00020]J\u0006\u0010^\u001a\u00020\u000eJ\u0006\u0010_\u001a\u00020\u000eJ\u0006\u0010`\u001a\u00020\u000eJ\u0006\u0010a\u001a\u00020\u000eJ\u0006\u0010b\u001a\u00020\u000eJ\u0006\u0010c\u001a\u00020\u000eJ\u0006\u0010d\u001a\u00020\u000eJ\u0006\u0010e\u001a\u00020\u000eJ\u0006\u0010f\u001a\u00020\u000eJ\"\u0010g\u001a\u00020 2\u0006\u0010h\u001a\u00020\u000e2\u0006\u0010B\u001a\u00020\u00072\b\u0010i\u001a\u0004\u0018\u00010jH\u0004J\u0018\u0010k\u001a\u00020 2\u0006\u0010l\u001a\u00020\u00072\u0006\u0010m\u001a\u00020\u0007H\u0004J\u001a\u0010n\u001a\u00020\u000e2\u0006\u0010B\u001a\u00020\u00072\b\u0010i\u001a\u0004\u0018\u00010jH\u0004J\u000e\u0010o\u001a\u00020 2\u0006\u0010p\u001a\u00020\u0007J\u0010\u0010q\u001a\u00020 2\u0006\u0010r\u001a\u00020\u0007H\u0016J(\u0010s\u001a\u00020 2\u0006\u0010t\u001a\u00020\u00072\u0006\u0010u\u001a\u00020\u00072\u0006\u0010v\u001a\u00020\u00072\u0006\u0010w\u001a\u00020\u0007H\u0014J\u000e\u0010x\u001a\u00020 2\u0006\u0010!\u001a\u00020\"J\u000e\u0010y\u001a\u00020 2\u0006\u0010!\u001a\u00020$J\b\u0010z\u001a\u00020 H\u0002J\u000e\u0010{\u001a\u00020 2\u0006\u0010|\u001a\u00020AJ\u000e\u0010}\u001a\u00020 2\u0006\u0010~\u001a\u00020\u0007J\b\u0010\u007f\u001a\u00020\u0015H\u0002J\"\u0010\u0080\u0001\u001a\u00020 2\u0007\u0010\u0081\u0001\u001a\u00020T2\u0007\u0010\u0082\u0001\u001a\u00020D2\u0007\u0010\u0083\u0001\u001a\u00020\u000eJ\u001b\u0010\u0084\u0001\u001a\u00020 2\u0007\u0010\u0085\u0001\u001a\u00020D2\t\b\u0002\u0010\u0083\u0001\u001a\u00020\u000eJ\u0013\u0010\u0086\u0001\u001a\u00020 2\n\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0088\u0001J\u0013\u0010\u0089\u0001\u001a\u00020 2\n\u0010\u008a\u0001\u001a\u0005\u0018\u00010\u008b\u0001J\u0010\u0010\u008c\u0001\u001a\u00020 2\u0007\u0010\u008d\u0001\u001a\u00020\u0007J\u0010\u0010\u008e\u0001\u001a\u00020 2\u0007\u0010\u008f\u0001\u001a\u00020\u000eJ\u0019\u0010\u0090\u0001\u001a\u00020 2\u0007\u0010\u0091\u0001\u001a\u00020\u000e2\u0007\u0010\u0092\u0001\u001a\u00020\u000eJ\u0019\u0010\u0093\u0001\u001a\u00020 2\u0007\u0010\u0091\u0001\u001a\u00020\u000e2\u0007\u0010\u0092\u0001\u001a\u00020\u000eJ\u0010\u0010\u0094\u0001\u001a\u00020 2\u0007\u0010\u0095\u0001\u001a\u00020\u000eJ\u0010\u0010\u0096\u0001\u001a\u00020 2\u0007\u0010\u008f\u0001\u001a\u00020\u000eJ\u000f\u0010\u0097\u0001\u001a\u00020 2\u0006\u0010B\u001a\u00020GJ\u0010\u0010\u0098\u0001\u001a\u00020 2\u0007\u0010\u0099\u0001\u001a\u00020\u0007J\u0010\u0010\u009a\u0001\u001a\u00020 2\u0007\u0010\u009b\u0001\u001a\u00020\u000eJ\u0010\u0010\u009c\u0001\u001a\u00020 2\u0007\u0010\u008f\u0001\u001a\u00020\u000eJ\u0010\u0010\u009d\u0001\u001a\u00020 2\u0007\u0010\u009e\u0001\u001a\u00020\u0007J\u0013\u0010\u009f\u0001\u001a\u00020 2\n\u0010 \u0001\u001a\u0005\u0018\u00010¡\u0001J\u0010\u0010¢\u0001\u001a\u00020 2\u0007\u0010\u008f\u0001\u001a\u00020\u000eJ\u0010\u0010£\u0001\u001a\u00020 2\u0007\u0010\u008f\u0001\u001a\u00020\u000eJ\u0013\u0010¤\u0001\u001a\u00020 2\n\u0010¥\u0001\u001a\u0005\u0018\u00010¦\u0001J\u0010\u0010§\u0001\u001a\u00020 2\u0007\u0010¨\u0001\u001a\u00020JJ\u0012\u0010©\u0001\u001a\u00020 2\t\b\u0001\u0010\u008d\u0001\u001a\u00020\u0007J\u0012\u0010ª\u0001\u001a\u00020 2\t\b\u0001\u0010«\u0001\u001a\u00020\u0007J\u0012\u0010¬\u0001\u001a\u00020 2\t\b\u0001\u0010\u008d\u0001\u001a\u00020\u0007J\u0012\u0010\u00ad\u0001\u001a\u00020 2\t\b\u0001\u0010«\u0001\u001a\u00020\u0007J\u0012\u0010®\u0001\u001a\u00020 2\t\u0010!\u001a\u0005\u0018\u00010¯\u0001J\u0011\u0010°\u0001\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\u0011J\u0011\u0010±\u0001\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\u0013J\u0011\u0010²\u0001\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\u001aJ\u0011\u0010³\u0001\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\u001cJ\u0010\u0010´\u0001\u001a\u00020 2\u0007\u0010µ\u0001\u001a\u00020\u0007J\u001b\u0010¶\u0001\u001a\u00020 2\u0007\u0010\u0085\u0001\u001a\u00020T2\t\b\u0002\u0010\u0083\u0001\u001a\u00020\u000eJ\u0010\u0010·\u0001\u001a\u00020 2\u0007\u0010¸\u0001\u001a\u00020\u000eJ\u0010\u0010¹\u0001\u001a\u00020 2\u0007\u0010º\u0001\u001a\u00020\u000eJ\u0010\u0010»\u0001\u001a\u00020 2\u0007\u0010\u008f\u0001\u001a\u00020\u000eJ\u0010\u0010¼\u0001\u001a\u00020 2\u0007\u0010½\u0001\u001a\u00020\u0007J\u001a\u0010¼\u0001\u001a\u00020 2\u0007\u0010½\u0001\u001a\u00020\u00072\b\u0010¾\u0001\u001a\u00030¿\u0001J\u0010\u0010À\u0001\u001a\u00020 2\u0007\u0010½\u0001\u001a\u00020\u0007J\u001a\u0010À\u0001\u001a\u00020 2\u0007\u0010½\u0001\u001a\u00020\u00072\b\u0010¾\u0001\u001a\u00030¿\u0001J\u0010\u0010Á\u0001\u001a\u00020 2\u0007\u0010Â\u0001\u001a\u00020\u0007J\u0019\u0010Á\u0001\u001a\u00020 2\u0007\u0010½\u0001\u001a\u00020\u00072\u0007\u0010Â\u0001\u001a\u00020\u0007J#\u0010Á\u0001\u001a\u00020 2\u0007\u0010½\u0001\u001a\u00020\u00072\u0007\u0010Â\u0001\u001a\u00020\u00072\b\u0010¾\u0001\u001a\u00030¿\u0001J\u0010\u0010Ã\u0001\u001a\u00020 2\u0007\u0010Â\u0001\u001a\u00020\u0007J\u0019\u0010Ã\u0001\u001a\u00020 2\u0007\u0010½\u0001\u001a\u00020\u00072\u0007\u0010Â\u0001\u001a\u00020\u0007J#\u0010Ã\u0001\u001a\u00020 2\u0007\u0010½\u0001\u001a\u00020\u00072\u0007\u0010Â\u0001\u001a\u00020\u00072\b\u0010¾\u0001\u001a\u00030¿\u0001J\u0010\u0010Ä\u0001\u001a\u00020 2\u0007\u0010\u008f\u0001\u001a\u00020\u000eJ\u0012\u0010Å\u0001\u001a\u00020 2\t\u0010Æ\u0001\u001a\u0004\u0018\u00010\u0017J\u0010\u0010Ç\u0001\u001a\u00020 2\u0007\u0010È\u0001\u001a\u00020\u0007J\u0010\u0010É\u0001\u001a\u00020 2\u0007\u0010È\u0001\u001a\u00020\u0007J\u0010\u0010Ê\u0001\u001a\u00020 2\u0007\u0010Ë\u0001\u001a\u00020ZJ\u0010\u0010Ì\u0001\u001a\u00020 2\u0007\u0010Í\u0001\u001a\u00020\u0007J\u0010\u0010Î\u0001\u001a\u00020 2\u0007\u0010Ï\u0001\u001a\u00020]J\u0010\u0010Ð\u0001\u001a\u00020 2\u0007\u0010Ñ\u0001\u001a\u00020\u000eJ\u0019\u0010Ò\u0001\u001a\u00020 2\u0007\u0010Ó\u0001\u001a\u00020\u00072\u0007\u0010Ô\u0001\u001a\u00020\u0007J%\u0010Ò\u0001\u001a\u00020 2\u0007\u0010Ó\u0001\u001a\u00020\u00072\u0007\u0010Ô\u0001\u001a\u00020\u00072\n\u0010Õ\u0001\u001a\u0005\u0018\u00010Ö\u0001J\u001b\u0010×\u0001\u001a\u00020\u000e2\u0007\u0010Ø\u0001\u001a\u00020\u00072\u0007\u0010Ù\u0001\u001a\u00020\u0007H\u0016J\t\u0010Ú\u0001\u001a\u00020 H\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00060\fR\u00020\u0000X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006ã\u0001"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;", "Landroidx/recyclerview/widget/RecyclerView;", "context", "Landroid/content/Context;", Session.JsonKeys.ATTRS, "Landroid/util/AttributeSet;", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "fadingEdge", "Lcom/rubensousa/dpadrecyclerview/FadingEdge;", "focusableChildDrawingCallback", "Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$FocusableChildDrawingCallback;", "isOverlappingRenderingEnabled", "", "isRetainingFocus", "keyInterceptListener", "Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnKeyInterceptListener;", "motionInterceptListener", "Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnMotionInterceptListener;", "pivotLayoutManager", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;", "smoothScrollByBehavior", "Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$SmoothScrollByBehavior;", "startedTouchScroll", "touchInterceptListener", "Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnTouchInterceptListener;", "unhandledKeyListener", "Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnUnhandledKeyListener;", "viewHolderTaskExecutor", "Lcom/rubensousa/dpadrecyclerview/ViewHolderTaskExecutor;", "addOnLayoutCompletedListener", "", "listener", "Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnLayoutCompletedListener;", "addOnViewHolderSelectedListener", "Lcom/rubensousa/dpadrecyclerview/OnViewHolderSelectedListener;", "addRecyclerListener", "Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;", "attachToWindow", "attachToWindow$dpadrecyclerview_release", "clearOnLayoutCompletedListeners", "clearOnViewHolderSelectedListeners", "createLayoutManager", "typedArray", "Landroid/content/res/TypedArray;", "detachFromWindow", "detachFromWindow$dpadrecyclerview_release", "dispatchDraw", "canvas", "Landroid/graphics/Canvas;", "dispatchGenericFocusedEvent", NotificationCompat.CATEGORY_EVENT, "Landroid/view/MotionEvent;", "dispatchKeyEvent", "Landroid/view/KeyEvent;", "dispatchTouchEvent", "enableMaxEdgeFading", "enable", "enableMinEdgeFading", "findFirstCompletelyVisibleItemPosition", "findFirstVisibleItemPosition", "findLastCompletelyVisibleItemPosition", "findLastVisibleItemPosition", "focusSearch", "Landroid/view/View;", "direction", "getChildAlignment", "Lcom/rubensousa/dpadrecyclerview/ChildAlignment;", "getCurrentSubPositions", "getFocusableDirection", "Lcom/rubensousa/dpadrecyclerview/FocusableDirection;", "getInitialPrefetchItemCount", "getLoopDirection", "Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;", "getMaxEdgeFadingLength", "getMaxEdgeFadingOffset", "getMinEdgeFadingLength", "getMinEdgeFadingOffset", "getOnKeyInterceptListener", "getOnMotionInterceptListener", "getOnUnhandledKeyListener", "getOrientation", "getParentAlignment", "Lcom/rubensousa/dpadrecyclerview/ParentAlignment;", "getSelectedPosition", "getSelectedSubPosition", "getSmoothScrollMaxPendingAlignments", "getSmoothScrollMaxPendingMoves", "getSmoothScrollSpeedFactor", "", "getSpanCount", "getSpanSizeLookup", "Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;", "hasOverlappingRendering", "isFocusDrawingOrderEnabled", "isFocusSearchDisabled", "isItemPrefetchEnabled", "isLayoutEnabled", "isLayoutReversed", "isMaxEdgeFadingEnabled", "isMinEdgeFadingEnabled", "isScrollEnabled", "onFocusChanged", "gainFocus", "previouslyFocusedRect", "Landroid/graphics/Rect;", "onMeasure", "widthSpec", "heightSpec", "onRequestFocusInDescendants", "onRtlPropertiesChanged", "layoutDirection", "onScrollStateChanged", SentryThread.JsonKeys.STATE, "onSizeChanged", "w", CmcdHeadersFactory.STREAMING_FORMAT_HLS, "oldw", "oldh", "removeOnLayoutCompletedListener", "removeOnViewHolderSelectedListener", "removeSelectionForRecycledViewHolders", "removeView", "view", "removeViewAt", "index", "requireLayout", "setAlignments", "parent", "child", "smooth", "setChildAlignment", "alignment", "setChildDrawingOrderCallback", "childDrawingOrderCallback", "Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;", "setExtraLayoutSpaceStrategy", "strategy", "Lcom/rubensousa/dpadrecyclerview/ExtraLayoutSpaceStrategy;", "setFadingEdgeLength", SentryEnvelopeItemHeader.JsonKeys.LENGTH, "setFocusDrawingOrderEnabled", "enabled", "setFocusOutAllowed", "throughFront", "throughBack", "setFocusOutSideAllowed", "setFocusSearchDisabled", "disabled", "setFocusSearchEnabledDuringAnimations", "setFocusableDirection", "setGravity", "gravity", "setHasFixedSize", "hasFixedSize", "setHasOverlappingRendering", "setInitialPrefetchItemCount", "itemCount", "setItemAnimator", "animator", "Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;", "setItemPrefetchEnabled", "setLayoutEnabled", "setLayoutManager", "layout", "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;", "setLoopDirection", "loopDirection", "setMaxEdgeFadingLength", "setMaxEdgeFadingOffset", "offset", "setMinEdgeFadingLength", "setMinEdgeFadingOffset", "setOnChildLaidOutListener", "Lcom/rubensousa/dpadrecyclerview/OnChildLaidOutListener;", "setOnKeyInterceptListener", "setOnMotionInterceptListener", "setOnTouchInterceptListener", "setOnUnhandledKeyListener", "setOrientation", Device.JsonKeys.ORIENTATION, "setParentAlignment", "setRecycleChildrenOnDetach", "recycle", "setReverseLayout", "reverseLayout", "setScrollEnabled", "setSelectedPosition", "position", "task", "Lcom/rubensousa/dpadrecyclerview/ViewHolderTask;", "setSelectedPositionSmooth", "setSelectedSubPosition", "subPosition", "setSelectedSubPositionSmooth", "setSmoothFocusChangesEnabled", "setSmoothScrollBehavior", "behavior", "setSmoothScrollMaxPendingAlignments", MetricSummary.JsonKeys.MAX, "setSmoothScrollMaxPendingMoves", "setSmoothScrollSpeedFactor", "smoothScrollSpeedFactor", "setSpanCount", SentryTransaction.JsonKeys.SPANS, "setSpanSizeLookup", "spanSizeLookup", "setWillNotDraw", "willNotDraw", "smoothScrollBy", "dx", "dy", "interpolator", "Landroid/view/animation/Interpolator;", "startNestedScroll", "axes", "type", "stopNestedScroll", "Companion", "FocusableChildDrawingCallback", "OnKeyInterceptListener", "OnLayoutCompletedListener", "OnMotionInterceptListener", "OnTouchInterceptListener", "OnUnhandledKeyListener", "SmoothScrollByBehavior", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public class DpadRecyclerView extends RecyclerView {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final boolean DEBUG = false;
    public static final String TAG = "DpadRecyclerView";
    private final FadingEdge fadingEdge;
    private final FocusableChildDrawingCallback focusableChildDrawingCallback;
    private boolean isOverlappingRenderingEnabled;
    private boolean isRetainingFocus;
    private OnKeyInterceptListener keyInterceptListener;
    private OnMotionInterceptListener motionInterceptListener;
    private PivotLayoutManager pivotLayoutManager;
    private SmoothScrollByBehavior smoothScrollByBehavior;
    private boolean startedTouchScroll;
    private OnTouchInterceptListener touchInterceptListener;
    private OnUnhandledKeyListener unhandledKeyListener;
    private final ViewHolderTaskExecutor viewHolderTaskExecutor;

    /* compiled from: DpadRecyclerView.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnKeyInterceptListener;", "", "onInterceptKeyEvent", "", NotificationCompat.CATEGORY_EVENT, "Landroid/view/KeyEvent;", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public interface OnKeyInterceptListener {
        boolean onInterceptKeyEvent(KeyEvent event);
    }

    /* compiled from: DpadRecyclerView.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnLayoutCompletedListener;", "", "onLayoutCompleted", "", SentryThread.JsonKeys.STATE, "Landroidx/recyclerview/widget/RecyclerView$State;", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public interface OnLayoutCompletedListener {
        void onLayoutCompleted(RecyclerView.State state);
    }

    /* compiled from: DpadRecyclerView.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnMotionInterceptListener;", "", "onInterceptMotionEvent", "", NotificationCompat.CATEGORY_EVENT, "Landroid/view/MotionEvent;", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public interface OnMotionInterceptListener {
        boolean onInterceptMotionEvent(MotionEvent event);
    }

    /* compiled from: DpadRecyclerView.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnTouchInterceptListener;", "", "onInterceptTouchEvent", "", NotificationCompat.CATEGORY_EVENT, "Landroid/view/MotionEvent;", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public interface OnTouchInterceptListener {
        boolean onInterceptTouchEvent(MotionEvent event);
    }

    /* compiled from: DpadRecyclerView.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnUnhandledKeyListener;", "", "onUnhandledKey", "", NotificationCompat.CATEGORY_EVENT, "Landroid/view/KeyEvent;", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public interface OnUnhandledKeyListener {
        boolean onUnhandledKey(KeyEvent event);
    }

    /* compiled from: DpadRecyclerView.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003H&J\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003H&¨\u0006\b"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$SmoothScrollByBehavior;", "", "configSmoothScrollByDuration", "", "dx", "dy", "configSmoothScrollByInterpolator", "Landroid/view/animation/Interpolator;", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public interface SmoothScrollByBehavior {
        int configSmoothScrollByDuration(int dx, int dy);

        Interpolator configSmoothScrollByInterpolator(int dx, int dy);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DpadRecyclerView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DpadRecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: getOnKeyInterceptListener, reason: from getter */
    public final OnKeyInterceptListener getKeyInterceptListener() {
        return this.keyInterceptListener;
    }

    /* renamed from: getOnMotionInterceptListener, reason: from getter */
    public final OnMotionInterceptListener getMotionInterceptListener() {
        return this.motionInterceptListener;
    }

    /* renamed from: getOnUnhandledKeyListener, reason: from getter */
    public final OnUnhandledKeyListener getUnhandledKeyListener() {
        return this.unhandledKeyListener;
    }

    @Override // android.view.View
    public final boolean hasOverlappingRendering() {
        return this.isOverlappingRenderingEnabled;
    }

    public final void setHasOverlappingRendering(boolean enabled) {
        this.isOverlappingRenderingEnabled = enabled;
    }

    public final void setOnKeyInterceptListener(OnKeyInterceptListener listener) {
        this.keyInterceptListener = listener;
    }

    public final void setOnMotionInterceptListener(OnMotionInterceptListener listener) {
        this.motionInterceptListener = listener;
    }

    public final void setOnTouchInterceptListener(OnTouchInterceptListener listener) {
        this.touchInterceptListener = listener;
    }

    public final void setOnUnhandledKeyListener(OnUnhandledKeyListener listener) {
        this.unhandledKeyListener = listener;
    }

    public final void setSmoothScrollBehavior(SmoothScrollByBehavior behavior) {
        this.smoothScrollByBehavior = behavior;
    }

    public /* synthetic */ DpadRecyclerView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? R.attr.dpadRecyclerViewStyle : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DpadRecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.viewHolderTaskExecutor = new ViewHolderTaskExecutor();
        FocusableChildDrawingCallback focusableChildDrawingCallback = new FocusableChildDrawingCallback();
        this.focusableChildDrawingCallback = focusableChildDrawingCallback;
        this.fadingEdge = new FadingEdge();
        this.isOverlappingRenderingEnabled = true;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.DpadRecyclerView, R.attr.dpadRecyclerViewStyle, 0);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
        if (!obtainStyledAttributes.hasValue(R.styleable.DpadRecyclerView_android_focusable)) {
            setFocusable(true);
        }
        if (!obtainStyledAttributes.hasValue(R.styleable.DpadRecyclerView_android_focusableInTouchMode)) {
            setFocusableInTouchMode(true);
        }
        setLayoutManager(createLayoutManager(obtainStyledAttributes, context, attributeSet));
        setPreserveFocusAfterLayout(false);
        setDescendantFocusability(262144);
        setItemAnimator(getItemAnimator());
        int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.DpadRecyclerView_android_fadingEdgeLength, 0);
        if (dimensionPixelOffset > 0) {
            setFadingEdgeLength(dimensionPixelOffset);
        }
        setWillNotDraw(true);
        setChildDrawingOrderCallback(focusableChildDrawingCallback);
        setOverScrollMode(2);
        obtainStyledAttributes.recycle();
        removeSelectionForRecycledViewHolders();
    }

    /* compiled from: DpadRecyclerView.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0080D¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\bX\u0080T¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$Companion;", "", "()V", "DEBUG", "", "getDEBUG$dpadrecyclerview_release", "()Z", "TAG", "", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean getDEBUG$dpadrecyclerview_release() {
            return DpadRecyclerView.DEBUG;
        }
    }

    private final PivotLayoutManager createLayoutManager(TypedArray typedArray, Context context, AttributeSet attrs) {
        RecyclerView.LayoutManager.Properties properties = RecyclerView.LayoutManager.getProperties(context, attrs, 0, 0);
        Intrinsics.checkNotNull(properties);
        PivotLayoutManager pivotLayoutManager = new PivotLayoutManager(properties);
        pivotLayoutManager.setFocusOutAllowed(typedArray.getBoolean(R.styleable.DpadRecyclerView_dpadRecyclerViewFocusOutFront, true), typedArray.getBoolean(R.styleable.DpadRecyclerView_dpadRecyclerViewFocusOutBack, true));
        pivotLayoutManager.setFocusOutSideAllowed(typedArray.getBoolean(R.styleable.DpadRecyclerView_dpadRecyclerViewFocusOutSideFront, true), typedArray.getBoolean(R.styleable.DpadRecyclerView_dpadRecyclerViewFocusOutSideBack, true));
        pivotLayoutManager.setFocusableDirection(FocusableDirection.values()[typedArray.getInt(R.styleable.DpadRecyclerView_dpadRecyclerViewFocusableDirection, FocusableDirection.STANDARD.ordinal())]);
        pivotLayoutManager.setLoopDirection(DpadLoopDirection.values()[typedArray.getInt(R.styleable.DpadRecyclerView_dpadRecyclerViewLoopDirection, DpadLoopDirection.NONE.ordinal())]);
        pivotLayoutManager.setSmoothFocusChangesEnabled(typedArray.getBoolean(R.styleable.DpadRecyclerView_dpadRecyclerViewSmoothFocusChangesEnabled, true));
        if (typedArray.hasValue(R.styleable.DpadRecyclerView_android_gravity)) {
            pivotLayoutManager.setGravity(typedArray.getInt(R.styleable.DpadRecyclerView_android_gravity, 0));
        }
        ParentAlignment.Edge edge = ParentAlignment.Edge.values()[typedArray.getInt(R.styleable.DpadRecyclerView_dpadRecyclerViewParentAlignmentEdge, ParentAlignment.Edge.MIN_MAX.ordinal())];
        pivotLayoutManager.setAlignments(new ParentAlignment(edge, typedArray.getDimensionPixelSize(R.styleable.DpadRecyclerView_dpadRecyclerViewParentAlignmentOffset, 0), typedArray.getFloat(R.styleable.DpadRecyclerView_dpadRecyclerViewParentAlignmentFraction, 0.5f), typedArray.getBoolean(R.styleable.DpadRecyclerView_dpadRecyclerViewParentAlignmentFractionEnabled, true), typedArray.getBoolean(R.styleable.DpadRecyclerView_dpadRecyclerViewParentAlignmentPreferKeylineOverEdge, edge == ParentAlignment.Edge.MAX)), new ChildAlignment(typedArray.getDimensionPixelSize(R.styleable.DpadRecyclerView_dpadRecyclerViewChildAlignmentOffset, 0), typedArray.getFloat(R.styleable.DpadRecyclerView_dpadRecyclerViewChildAlignmentFraction, 0.5f), typedArray.getBoolean(R.styleable.DpadRecyclerView_dpadRecyclerViewChildAlignmentFractionEnabled, true), false, false, 24, null), false);
        return pivotLayoutManager;
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public final void setLayoutManager(RecyclerView.LayoutManager layout) {
        super.setLayoutManager(layout);
        PivotLayoutManager pivotLayoutManager = this.pivotLayoutManager;
        if (pivotLayoutManager != null) {
            pivotLayoutManager.removeOnViewHolderSelectedListener(this.viewHolderTaskExecutor);
        }
        PivotLayoutManager pivotLayoutManager2 = this.pivotLayoutManager;
        if (pivotLayoutManager2 != null) {
            pivotLayoutManager2.updateRecyclerView$dpadrecyclerview_release(null);
        }
        PivotLayoutManager pivotLayoutManager3 = this.pivotLayoutManager;
        if (pivotLayoutManager3 != layout) {
            if (pivotLayoutManager3 != null) {
                pivotLayoutManager3.clearOnLayoutCompletedListeners();
            }
            PivotLayoutManager pivotLayoutManager4 = this.pivotLayoutManager;
            if (pivotLayoutManager4 != null) {
                pivotLayoutManager4.clearOnViewHolderSelectedListeners();
            }
        }
        this.pivotLayoutManager = null;
        if (layout != null && !(layout instanceof PivotLayoutManager)) {
            throw new IllegalArgumentException("Only PivotLayoutManager is supported, but got " + layout);
        }
        if (layout instanceof PivotLayoutManager) {
            PivotLayoutManager pivotLayoutManager5 = (PivotLayoutManager) layout;
            pivotLayoutManager5.updateRecyclerView$dpadrecyclerview_release(this);
            pivotLayoutManager5.addOnViewHolderSelectedListener(this.viewHolderTaskExecutor);
            this.pivotLayoutManager = pivotLayoutManager5;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public final void onMeasure(int widthSpec, int heightSpec) {
        if (getLayoutManager() == null) {
            super.onMeasure(widthSpec, heightSpec);
            return;
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (getOrientation() == 1 && layoutParams.height == -2) {
            super.onMeasure(widthSpec, View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(heightSpec), 1073741824));
        } else if (getOrientation() == 0 && layoutParams.width == -2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(widthSpec), 1073741824), heightSpec);
        } else {
            super.onMeasure(widthSpec, heightSpec);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public final void setItemAnimator(RecyclerView.ItemAnimator animator) {
        super.setItemAnimator(animator);
        if (animator instanceof SimpleItemAnimator) {
            ((SimpleItemAnimator) animator).setSupportsChangeAnimations(false);
        }
    }

    @Override // android.view.View
    public final void setWillNotDraw(boolean willNotDraw) {
        super.setWillNotDraw(willNotDraw);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public final void setHasFixedSize(boolean hasFixedSize) {
        super.setHasFixedSize(hasFixedSize);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public final void addRecyclerListener(RecyclerView.RecyclerListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        super.addRecyclerListener(listener);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        OnTouchInterceptListener onTouchInterceptListener = this.touchInterceptListener;
        if (onTouchInterceptListener == null || !onTouchInterceptListener.onInterceptTouchEvent(event)) {
            return super.dispatchTouchEvent(event);
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        OnKeyInterceptListener onKeyInterceptListener = this.keyInterceptListener;
        if ((onKeyInterceptListener != null && onKeyInterceptListener.onInterceptKeyEvent(event)) || super.dispatchKeyEvent(event)) {
            return true;
        }
        OnUnhandledKeyListener onUnhandledKeyListener = this.unhandledKeyListener;
        return onUnhandledKeyListener != null && onUnhandledKeyListener.onUnhandledKey(event);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final boolean dispatchGenericFocusedEvent(MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        OnMotionInterceptListener onMotionInterceptListener = this.motionInterceptListener;
        if (onMotionInterceptListener == null || !onMotionInterceptListener.onInterceptMotionEvent(event)) {
            return super.dispatchGenericFocusedEvent(event);
        }
        return true;
    }

    @Override // android.view.View
    public final View focusSearch(int direction) {
        PivotLayoutManager pivotLayoutManager = this.pivotLayoutManager;
        if (isFocused() && pivotLayoutManager != null) {
            View findViewByPosition = pivotLayoutManager.findViewByPosition(pivotLayoutManager.getSelectedPosition());
            if (findViewByPosition != null) {
                return focusSearch(findViewByPosition, direction);
            }
            return focusSearch(this, direction);
        }
        return super.focusSearch(direction);
    }

    @Override // android.view.View
    protected final void onFocusChanged(boolean gainFocus, int direction, Rect previouslyFocusedRect) {
        super.onFocusChanged(gainFocus, direction, previouslyFocusedRect);
        PivotLayoutManager pivotLayoutManager = this.pivotLayoutManager;
        if (pivotLayoutManager != null) {
            pivotLayoutManager.onFocusChanged$dpadrecyclerview_release(gainFocus);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    protected final boolean onRequestFocusInDescendants(int direction, Rect previouslyFocusedRect) {
        PivotLayoutManager pivotLayoutManager;
        if (this.isRetainingFocus || (pivotLayoutManager = this.pivotLayoutManager) == null) {
            return false;
        }
        return pivotLayoutManager.onRequestFocusInDescendants(direction, previouslyFocusedRect);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        boolean z = view.hasFocus() && isFocusable();
        this.isRetainingFocus = z;
        if (z) {
            requestFocus();
        }
        super.removeView(view);
        this.isRetainingFocus = false;
    }

    @Override // android.view.ViewGroup
    public final void removeViewAt(int index) {
        View childAt = getChildAt(index);
        boolean z = childAt != null && childAt.hasFocus() && isFocusable();
        this.isRetainingFocus = z;
        if (z) {
            requestFocus();
        }
        super.removeViewAt(index);
        this.isRetainingFocus = false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public final void setChildDrawingOrderCallback(RecyclerView.ChildDrawingOrderCallback childDrawingOrderCallback) {
        super.setChildDrawingOrderCallback(childDrawingOrderCallback);
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int layoutDirection) {
        super.onRtlPropertiesChanged(layoutDirection);
        PivotLayoutManager pivotLayoutManager = this.pivotLayoutManager;
        if (pivotLayoutManager != null) {
            pivotLayoutManager.onRtlPropertiesChanged$dpadrecyclerview_release(layoutDirection);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public final void smoothScrollBy(int dx, int dy) {
        Unit unit;
        SmoothScrollByBehavior smoothScrollByBehavior = this.smoothScrollByBehavior;
        if (smoothScrollByBehavior != null) {
            smoothScrollBy(dx, dy, smoothScrollByBehavior.configSmoothScrollByInterpolator(dx, dy), smoothScrollByBehavior.configSmoothScrollByDuration(dx, dy));
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            smoothScrollBy(dx, dy, null, Integer.MIN_VALUE);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public final void smoothScrollBy(int dx, int dy, Interpolator interpolator) {
        Unit unit;
        SmoothScrollByBehavior smoothScrollByBehavior = this.smoothScrollByBehavior;
        if (smoothScrollByBehavior != null) {
            smoothScrollBy(dx, dy, interpolator, smoothScrollByBehavior.configSmoothScrollByDuration(dx, dy));
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            smoothScrollBy(dx, dy, interpolator, Integer.MIN_VALUE);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, androidx.core.view.NestedScrollingChild2
    public boolean startNestedScroll(int axes, int type) {
        boolean startNestedScroll = super.startNestedScroll(axes, type);
        if (type == 0) {
            this.startedTouchScroll = true;
        }
        return startNestedScroll;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View, androidx.core.view.NestedScrollingChild
    public void stopNestedScroll() {
        super.stopNestedScroll();
        this.startedTouchScroll = false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void onScrollStateChanged(int state) {
        PivotLayoutManager pivotLayoutManager;
        super.onScrollStateChanged(state);
        if (state != 0) {
            if (!this.startedTouchScroll || (pivotLayoutManager = this.pivotLayoutManager) == null) {
                return;
            }
            pivotLayoutManager.setScrollingFromTouchEvent$dpadrecyclerview_release(true);
            return;
        }
        this.startedTouchScroll = false;
        PivotLayoutManager pivotLayoutManager2 = this.pivotLayoutManager;
        if (pivotLayoutManager2 != null) {
            pivotLayoutManager2.setScrollingFromTouchEvent$dpadrecyclerview_release(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        this.fadingEdge.onSizeChanged(w, h, oldw, oldh, this);
    }

    @Override // android.view.View
    public final void setFadingEdgeLength(int length) {
        super.setFadingEdgeLength(length);
        if (getLayoutManager() != null) {
            enableMinEdgeFading(true);
            enableMaxEdgeFading(true);
            setMaxEdgeFadingLength(length);
            setMinEdgeFadingLength(length);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        boolean isMinFadingEdgeRequired = this.fadingEdge.isMinFadingEdgeRequired(this);
        boolean isMaxFadingEdgeRequired = this.fadingEdge.isMaxFadingEdgeRequired(this);
        if (!isMaxFadingEdgeRequired && !isMinFadingEdgeRequired) {
            super.dispatchDraw(canvas);
            return;
        }
        int minShaderLength = isMinFadingEdgeRequired ? this.fadingEdge.getMinShaderLength() : 0;
        int maxShaderLength = isMaxFadingEdgeRequired ? this.fadingEdge.getMaxShaderLength() : 0;
        int minEdge = this.fadingEdge.getMinEdge(this);
        int maxEdge = this.fadingEdge.getMaxEdge(this);
        int save = canvas.save();
        this.fadingEdge.clip(minEdge, maxEdge, isMinFadingEdgeRequired, isMaxFadingEdgeRequired, canvas, this);
        super.dispatchDraw(canvas);
        if (minShaderLength > 0) {
            this.fadingEdge.drawMin(canvas, this);
        }
        if (maxShaderLength > 0) {
            this.fadingEdge.drawMax(canvas, this);
        }
        canvas.restoreToCount(save);
    }

    public final void setExtraLayoutSpaceStrategy(ExtraLayoutSpaceStrategy strategy) {
        requireLayout().setExtraLayoutSpaceStrategy(strategy);
    }

    public final void setRecycleChildrenOnDetach(boolean recycle) {
        requireLayout().setRecycleChildrenOnDetach(recycle);
    }

    public final void setLayoutEnabled(boolean enabled) {
        requireLayout().setLayoutEnabled(enabled);
    }

    public final boolean isLayoutEnabled() {
        return requireLayout().isLayoutEnabled();
    }

    public final void setLoopDirection(DpadLoopDirection loopDirection) {
        Intrinsics.checkNotNullParameter(loopDirection, "loopDirection");
        requireLayout().setLoopDirection(loopDirection);
    }

    public final DpadLoopDirection getLoopDirection() {
        return requireLayout().getLoopDirection();
    }

    public final void enableMinEdgeFading(boolean enable) {
        this.fadingEdge.enableMinEdgeFading(enable, this);
    }

    public final boolean isMinEdgeFadingEnabled() {
        return this.fadingEdge.getIsFadingMinEdge();
    }

    public final void setMinEdgeFadingLength(int length) {
        this.fadingEdge.setMinEdgeFadingLength(length, this);
    }

    public final int getMinEdgeFadingLength() {
        return this.fadingEdge.getMinShaderLength();
    }

    public final void setMinEdgeFadingOffset(int offset) {
        this.fadingEdge.setMinEdgeFadingOffset(offset, this);
    }

    public final int getMinEdgeFadingOffset() {
        return this.fadingEdge.getMinShaderOffset();
    }

    public final void enableMaxEdgeFading(boolean enable) {
        this.fadingEdge.enableMaxEdgeFading(enable, this);
    }

    public final boolean isMaxEdgeFadingEnabled() {
        return this.fadingEdge.getIsFadingMaxEdge();
    }

    public final void setMaxEdgeFadingLength(int length) {
        this.fadingEdge.setMaxEdgeFadingLength(length, this);
    }

    public final int getMaxEdgeFadingLength() {
        return this.fadingEdge.getMaxShaderLength();
    }

    public final void setMaxEdgeFadingOffset(int offset) {
        this.fadingEdge.setMaxEdgeFadingOffset(offset, this);
    }

    public final int getMaxEdgeFadingOffset() {
        return this.fadingEdge.getMaxShaderOffset();
    }

    public final void setFocusDrawingOrderEnabled(boolean enabled) {
        super.setChildrenDrawingOrderEnabled(enabled);
        requireLayout().setChildrenDrawingOrderEnabled(enabled);
    }

    public final boolean isFocusDrawingOrderEnabled() {
        return super.isChildrenDrawingOrderEnabled();
    }

    public final void setFocusSearchDisabled(boolean disabled) {
        setDescendantFocusability(disabled ? 393216 : 262144);
        requireLayout().setFocusSearchDisabled(disabled);
    }

    public final boolean isFocusSearchDisabled() {
        return requireLayout().isFocusSearchDisabled();
    }

    public final void setFocusableDirection(FocusableDirection direction) {
        Intrinsics.checkNotNullParameter(direction, "direction");
        requireLayout().setFocusableDirection(direction);
    }

    public final FocusableDirection getFocusableDirection() {
        return requireLayout().getFocusableDirection();
    }

    public final void setFocusSearchEnabledDuringAnimations(boolean enabled) {
        requireLayout().setFocusSearchEnabledDuringAnimations(enabled);
    }

    public final void setFocusOutAllowed(boolean throughFront, boolean throughBack) {
        requireLayout().setFocusOutAllowed(throughFront, throughBack);
    }

    public final void setFocusOutSideAllowed(boolean throughFront, boolean throughBack) {
        requireLayout().setFocusOutSideAllowed(throughFront, throughBack);
    }

    public final void setItemPrefetchEnabled(boolean enabled) {
        requireLayout().setItemPrefetchEnabled(enabled);
    }

    public final boolean isItemPrefetchEnabled() {
        return requireLayout().isItemPrefetchEnabled();
    }

    public final void setInitialPrefetchItemCount(int itemCount) {
        requireLayout().getConfiguration().setInitialPrefetchItemCount(itemCount);
    }

    public final int getInitialPrefetchItemCount() {
        return requireLayout().getConfiguration().getInitialPrefetchItemCount();
    }

    public final void setSpanSizeLookup(DpadSpanSizeLookup spanSizeLookup) {
        Intrinsics.checkNotNullParameter(spanSizeLookup, "spanSizeLookup");
        requireLayout().setSpanSizeLookup(spanSizeLookup);
    }

    public final DpadSpanSizeLookup getSpanSizeLookup() {
        return requireLayout().getSpanSizeLookup();
    }

    public final void setSpanCount(int spans) {
        requireLayout().setSpanCount(spans);
    }

    public final int getSpanCount() {
        return requireLayout().getSpanCount();
    }

    public final void setOrientation(int orientation) {
        requireLayout().setOrientation(orientation);
    }

    public final int getOrientation() {
        return requireLayout().getConfiguration().getOrientation();
    }

    public final void setReverseLayout(boolean reverseLayout) {
        requireLayout().setReverseLayout(reverseLayout);
    }

    public final boolean isLayoutReversed() {
        return requireLayout().getConfiguration().getReverseLayout();
    }

    public final void setGravity(int gravity) {
        requireLayout().setGravity(gravity);
    }

    public static /* synthetic */ void setParentAlignment$default(DpadRecyclerView dpadRecyclerView, ParentAlignment parentAlignment, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setParentAlignment");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        dpadRecyclerView.setParentAlignment(parentAlignment, z);
    }

    public final void setParentAlignment(ParentAlignment alignment, boolean smooth) {
        Intrinsics.checkNotNullParameter(alignment, "alignment");
        requireLayout().setParentAlignment(alignment, smooth);
    }

    public final ParentAlignment getParentAlignment() {
        return requireLayout().getParentAlignment();
    }

    public static /* synthetic */ void setChildAlignment$default(DpadRecyclerView dpadRecyclerView, ChildAlignment childAlignment, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setChildAlignment");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        dpadRecyclerView.setChildAlignment(childAlignment, z);
    }

    public final void setChildAlignment(ChildAlignment alignment, boolean smooth) {
        Intrinsics.checkNotNullParameter(alignment, "alignment");
        requireLayout().setChildAlignment(alignment, smooth);
    }

    public final ChildAlignment getChildAlignment() {
        return requireLayout().getChildAlignment();
    }

    public final void setAlignments(ParentAlignment parent, ChildAlignment child, boolean smooth) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(child, "child");
        requireLayout().setAlignments(parent, child, smooth);
    }

    public final void setSmoothFocusChangesEnabled(boolean enabled) {
        requireLayout().setSmoothFocusChangesEnabled(enabled);
    }

    public final void setSmoothScrollMaxPendingAlignments(int max) {
        requireLayout().setMaxPendingAlignments(max);
    }

    public final int getSmoothScrollMaxPendingAlignments() {
        return requireLayout().getMaxPendingAlignments();
    }

    public final void setSmoothScrollMaxPendingMoves(int max) {
        requireLayout().setMaxPendingMoves(max);
    }

    public final int getSmoothScrollMaxPendingMoves() {
        return requireLayout().getMaxPendingMoves();
    }

    public final void setSmoothScrollSpeedFactor(float smoothScrollSpeedFactor) {
        requireLayout().setSmoothScrollSpeedFactor(smoothScrollSpeedFactor);
    }

    public final float getSmoothScrollSpeedFactor() {
        return requireLayout().getSmoothScrollSpeedFactor();
    }

    public final void setScrollEnabled(boolean enabled) {
        requireLayout().setScrollEnabled(enabled);
    }

    public final boolean isScrollEnabled() {
        return requireLayout().getConfiguration().getIsScrollEnabled();
    }

    public final void setSelectedPosition(int position) {
        requireLayout().selectPosition(position, 0, false);
    }

    public final void setSelectedPosition(int position, ViewHolderTask task) {
        Intrinsics.checkNotNullParameter(task, "task");
        this.viewHolderTaskExecutor.schedule(position, task);
        requireLayout().selectPosition(position, 0, false);
    }

    public final void setSelectedPositionSmooth(int position) {
        requireLayout().selectPosition(position, 0, true);
    }

    public final void setSelectedPositionSmooth(int position, ViewHolderTask task) {
        Intrinsics.checkNotNullParameter(task, "task");
        this.viewHolderTaskExecutor.schedule(position, task);
        requireLayout().selectPosition(position, 0, true);
    }

    public final void setSelectedSubPosition(int position, int subPosition) {
        requireLayout().selectPosition(position, subPosition, false);
    }

    public final void setSelectedSubPosition(int position, int subPosition, ViewHolderTask task) {
        Intrinsics.checkNotNullParameter(task, "task");
        this.viewHolderTaskExecutor.schedule(position, subPosition, task);
        requireLayout().selectPosition(position, subPosition, false);
    }

    public final void setSelectedSubPosition(int subPosition) {
        requireLayout().selectSubPosition(subPosition, false);
    }

    public final void setSelectedSubPositionSmooth(int subPosition) {
        requireLayout().selectSubPosition(subPosition, true);
    }

    public final void setSelectedSubPositionSmooth(int position, int subPosition) {
        requireLayout().selectPosition(position, subPosition, true);
    }

    public final void setSelectedSubPositionSmooth(int position, int subPosition, ViewHolderTask task) {
        Intrinsics.checkNotNullParameter(task, "task");
        this.viewHolderTaskExecutor.schedule(position, subPosition, task);
        requireLayout().selectPosition(position, subPosition, true);
    }

    public final int getSelectedPosition() {
        PivotLayoutManager pivotLayoutManager = this.pivotLayoutManager;
        if (pivotLayoutManager != null) {
            return pivotLayoutManager.getSelectedPosition();
        }
        return -1;
    }

    public final int getSelectedSubPosition() {
        PivotLayoutManager pivotLayoutManager = this.pivotLayoutManager;
        if (pivotLayoutManager != null) {
            return pivotLayoutManager.getSelectedSubPosition();
        }
        return -1;
    }

    public final int getCurrentSubPositions() {
        PivotLayoutManager pivotLayoutManager = this.pivotLayoutManager;
        if (pivotLayoutManager != null) {
            return pivotLayoutManager.getCurrentSubPositions();
        }
        return 0;
    }

    public final int findFirstVisibleItemPosition() {
        PivotLayoutManager pivotLayoutManager = this.pivotLayoutManager;
        if (pivotLayoutManager != null) {
            return pivotLayoutManager.findFirstVisibleItemPosition();
        }
        return -1;
    }

    public final int findFirstCompletelyVisibleItemPosition() {
        PivotLayoutManager pivotLayoutManager = this.pivotLayoutManager;
        if (pivotLayoutManager != null) {
            return pivotLayoutManager.findFirstCompletelyVisibleItemPosition();
        }
        return -1;
    }

    public final int findLastVisibleItemPosition() {
        PivotLayoutManager pivotLayoutManager = this.pivotLayoutManager;
        if (pivotLayoutManager != null) {
            return pivotLayoutManager.findLastVisibleItemPosition();
        }
        return -1;
    }

    public final int findLastCompletelyVisibleItemPosition() {
        PivotLayoutManager pivotLayoutManager = this.pivotLayoutManager;
        if (pivotLayoutManager != null) {
            return pivotLayoutManager.findLastCompletelyVisibleItemPosition();
        }
        return -1;
    }

    public final void addOnViewHolderSelectedListener(OnViewHolderSelectedListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        requireLayout().addOnViewHolderSelectedListener(listener);
    }

    public final void removeOnViewHolderSelectedListener(OnViewHolderSelectedListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        requireLayout().removeOnViewHolderSelectedListener(listener);
    }

    public final void clearOnViewHolderSelectedListeners() {
        requireLayout().clearOnViewHolderSelectedListeners();
    }

    public final void addOnLayoutCompletedListener(OnLayoutCompletedListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        requireLayout().addOnLayoutCompletedListener(listener);
    }

    public final void removeOnLayoutCompletedListener(OnLayoutCompletedListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        requireLayout().removeOnLayoutCompletedListener(listener);
    }

    public final void clearOnLayoutCompletedListeners() {
        requireLayout().clearOnLayoutCompletedListeners();
    }

    public final void setOnChildLaidOutListener(OnChildLaidOutListener listener) {
        requireLayout().setOnChildLaidOutListener(listener);
    }

    public final void detachFromWindow$dpadrecyclerview_release() {
        onDetachedFromWindow();
    }

    public final void attachToWindow$dpadrecyclerview_release() {
        onAttachedToWindow();
    }

    private final void removeSelectionForRecycledViewHolders() {
        addRecyclerListener(new RecyclerView.RecyclerListener() { // from class: com.rubensousa.dpadrecyclerview.DpadRecyclerView$$ExternalSyntheticLambda0
            @Override // androidx.recyclerview.widget.RecyclerView.RecyclerListener
            public final void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
                DpadRecyclerView.removeSelectionForRecycledViewHolders$lambda$4(DpadRecyclerView.this, viewHolder);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void removeSelectionForRecycledViewHolders$lambda$4(DpadRecyclerView this$0, RecyclerView.ViewHolder holder) {
        PivotLayoutManager pivotLayoutManager;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(holder, "holder");
        int absoluteAdapterPosition = holder.getAbsoluteAdapterPosition();
        if (!(holder instanceof DpadViewHolder) || absoluteAdapterPosition == -1 || absoluteAdapterPosition != this$0.getSelectedPosition() || (pivotLayoutManager = this$0.pivotLayoutManager) == null) {
            return;
        }
        pivotLayoutManager.removeCurrentViewHolderSelection$dpadrecyclerview_release();
    }

    private final PivotLayoutManager requireLayout() {
        PivotLayoutManager pivotLayoutManager = this.pivotLayoutManager;
        if (pivotLayoutManager != null) {
            return pivotLayoutManager;
        }
        throw new IllegalArgumentException("PivotLayoutManager is null. Check for unnecessary usages of RecyclerView.setLayoutManager(null) or just set a new PivotLayoutManager.".toString());
    }

    /* compiled from: DpadRecyclerView.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0016¨\u0006\u0007"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$FocusableChildDrawingCallback;", "Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;", "(Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;)V", "onGetChildDrawingOrder", "", "childCount", CmcdHeadersFactory.OBJECT_TYPE_INIT_SEGMENT, "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    private final class FocusableChildDrawingCallback implements RecyclerView.ChildDrawingOrderCallback {
        public FocusableChildDrawingCallback() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ChildDrawingOrderCallback
        public int onGetChildDrawingOrder(int childCount, int i) {
            View findViewByPosition;
            int indexOfChild;
            PivotLayoutManager pivotLayoutManager = DpadRecyclerView.this.pivotLayoutManager;
            if (pivotLayoutManager == null) {
                return i;
            }
            int selectedPosition = pivotLayoutManager.getSelectedPosition();
            PivotLayoutManager pivotLayoutManager2 = DpadRecyclerView.this.pivotLayoutManager;
            return (pivotLayoutManager2 == null || (findViewByPosition = pivotLayoutManager2.findViewByPosition(selectedPosition)) == null || i < (indexOfChild = DpadRecyclerView.this.indexOfChild(findViewByPosition))) ? i : i < childCount + (-1) ? ((indexOfChild + childCount) - 1) - i : indexOfChild;
        }
    }
}
