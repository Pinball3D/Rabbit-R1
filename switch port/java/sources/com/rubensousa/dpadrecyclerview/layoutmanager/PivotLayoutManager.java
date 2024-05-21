package com.rubensousa.dpadrecyclerview.layoutmanager;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.rubensousa.dpadrecyclerview.ChildAlignment;
import com.rubensousa.dpadrecyclerview.DpadLoopDirection;
import com.rubensousa.dpadrecyclerview.DpadRecyclerView;
import com.rubensousa.dpadrecyclerview.DpadSpanSizeLookup;
import com.rubensousa.dpadrecyclerview.ExtraLayoutSpaceStrategy;
import com.rubensousa.dpadrecyclerview.FocusableDirection;
import com.rubensousa.dpadrecyclerview.OnChildLaidOutListener;
import com.rubensousa.dpadrecyclerview.OnViewHolderSelectedListener;
import com.rubensousa.dpadrecyclerview.ParentAlignment;
import com.rubensousa.dpadrecyclerview.layoutmanager.alignment.LayoutAlignment;
import com.rubensousa.dpadrecyclerview.layoutmanager.focus.FocusDispatcher;
import com.rubensousa.dpadrecyclerview.layoutmanager.focus.SpanFocusFinder;
import com.rubensousa.dpadrecyclerview.layoutmanager.layout.LayoutInfo;
import com.rubensousa.dpadrecyclerview.layoutmanager.layout.LayoutPrefetchCollector;
import com.rubensousa.dpadrecyclerview.layoutmanager.layout.PivotLayout;
import com.rubensousa.dpadrecyclerview.layoutmanager.scroll.DpadScrollbarHelper;
import com.rubensousa.dpadrecyclerview.layoutmanager.scroll.LayoutScroller;
import io.sentry.Session;
import io.sentry.protocol.Device;
import io.sentry.protocol.MetricSummary;
import io.sentry.protocol.SentryThread;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PivotLayoutManager.kt */
@Metadata(d1 = {"\u0000¨\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#J\u000e\u0010$\u001a\u00020!2\u0006\u0010\"\u001a\u00020%J\b\u0010&\u001a\u00020\fH\u0016J\b\u0010'\u001a\u00020\fH\u0016J\u0012\u0010(\u001a\u00020\f2\b\u0010)\u001a\u0004\u0018\u00010*H\u0016J\u0006\u0010+\u001a\u00020!J\u0006\u0010,\u001a\u00020!J(\u0010-\u001a\u00020!2\u0006\u0010.\u001a\u00020\u00112\u0006\u0010/\u001a\u00020\u00112\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u000203H\u0016J\u0018\u00104\u001a\u00020!2\u0006\u00105\u001a\u00020\u00112\u0006\u00102\u001a\u000203H\u0016J\u0010\u00106\u001a\u00020\u00112\u0006\u00100\u001a\u000201H\u0016J\u0010\u00107\u001a\u00020\u00112\u0006\u00100\u001a\u000201H\u0016J\u0010\u00108\u001a\u00020\u00112\u0006\u00100\u001a\u000201H\u0016J\u0010\u00109\u001a\u00020\u00112\u0006\u00100\u001a\u000201H\u0002J\u0010\u0010:\u001a\u00020\u00112\u0006\u00100\u001a\u000201H\u0002J\u0010\u0010;\u001a\u00020\u00112\u0006\u00100\u001a\u000201H\u0002J\u0010\u0010<\u001a\u00020\u00112\u0006\u00100\u001a\u000201H\u0016J\u0010\u0010=\u001a\u00020\u00112\u0006\u00100\u001a\u000201H\u0016J\u0010\u0010>\u001a\u00020\u00112\u0006\u00100\u001a\u000201H\u0016J\u0006\u0010?\u001a\u00020\u0011J\u0006\u0010@\u001a\u00020\u0011J\u0006\u0010A\u001a\u00020\u0011J\u0006\u0010B\u001a\u00020\u0011J\b\u0010C\u001a\u00020*H\u0016J\u0018\u0010D\u001a\u00020*2\u0006\u0010E\u001a\u00020F2\u0006\u0010G\u001a\u00020HH\u0016J\u0010\u0010D\u001a\u00020*2\u0006\u0010)\u001a\u00020IH\u0016J\u0006\u0010J\u001a\u00020KJ\u001c\u0010L\u001a\u00020\u00112\n\u0010M\u001a\u00060NR\u00020\u001b2\u0006\u00100\u001a\u000201H\u0016J\r\u0010O\u001a\u00020\bH\u0000¢\u0006\u0002\bPJ\u0006\u0010Q\u001a\u00020\u0011J\u0006\u0010R\u001a\u00020SJ\u0006\u0010T\u001a\u00020UJ\u0006\u0010V\u001a\u00020\u0011J\u0006\u0010W\u001a\u00020\u0011J\u0006\u0010X\u001a\u00020YJ\u001c\u0010Z\u001a\u00020\u00112\n\u0010M\u001a\u00060NR\u00020\u001b2\u0006\u00100\u001a\u000201H\u0016J\u0006\u0010[\u001a\u00020\u0011J\u0006\u0010\\\u001a\u00020\u0011J\u0006\u0010]\u001a\u00020^J\u0006\u0010_\u001a\u00020\u0011J\u0006\u0010`\u001a\u00020aJ\b\u0010b\u001a\u00020\fH\u0016J\u0006\u0010c\u001a\u00020\fJ\u0006\u0010d\u001a\u00020\fJ$\u0010e\u001a\u00020!2\f\u0010f\u001a\b\u0012\u0002\b\u0003\u0018\u00010g2\f\u0010h\u001a\b\u0012\u0002\b\u0003\u0018\u00010gH\u0016J8\u0010i\u001a\u00020\f2\u0006\u0010\u001a\u001a\u00020\u001b2\u0016\u0010j\u001a\u0012\u0012\u0004\u0012\u00020l0kj\b\u0012\u0004\u0012\u00020l`m2\u0006\u0010n\u001a\u00020\u00112\u0006\u0010o\u001a\u00020\u0011H\u0016J\u0010\u0010p\u001a\u00020!2\u0006\u0010q\u001a\u00020\u001bH\u0016J\u001c\u0010r\u001a\u00020!2\u0006\u0010q\u001a\u00020\u001b2\n\u0010M\u001a\u00060NR\u00020\u001bH\u0016J\u0015\u0010s\u001a\u00020!2\u0006\u0010t\u001a\u00020\fH\u0000¢\u0006\u0002\buJ$\u0010v\u001a\u00020!2\n\u0010M\u001a\u00060NR\u00020\u001b2\u0006\u00100\u001a\u0002012\u0006\u0010w\u001a\u00020xH\u0016J,\u0010y\u001a\u00020!2\n\u0010M\u001a\u00060NR\u00020\u001b2\u0006\u00100\u001a\u0002012\u0006\u0010z\u001a\u00020l2\u0006\u0010w\u001a\u00020xH\u0016J\u001a\u0010{\u001a\u0004\u0018\u00010l2\u0006\u0010|\u001a\u00020l2\u0006\u0010n\u001a\u00020\u0011H\u0016J \u0010}\u001a\u00020!2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010~\u001a\u00020\u00112\u0006\u0010\u007f\u001a\u00020\u0011H\u0016J\u0011\u0010\u0080\u0001\u001a\u00020!2\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J+\u0010\u0081\u0001\u001a\u00020!2\u0006\u0010\u001a\u001a\u00020\u001b2\u0007\u0010\u0082\u0001\u001a\u00020\u00112\u0007\u0010\u0083\u0001\u001a\u00020\u00112\u0006\u0010\u007f\u001a\u00020\u0011H\u0016J!\u0010\u0084\u0001\u001a\u00020!2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010~\u001a\u00020\u00112\u0006\u0010\u007f\u001a\u00020\u0011H\u0016J\u001d\u0010\u0085\u0001\u001a\u00020!2\n\u0010M\u001a\u00060NR\u00020\u001b2\u0006\u00100\u001a\u000201H\u0016J\u0011\u0010\u0086\u0001\u001a\u00020!2\u0006\u00100\u001a\u000201H\u0016J-\u0010\u0087\u0001\u001a\u00020\f2\u0007\u0010\u0088\u0001\u001a\u00020\u001b2\u0006\u00100\u001a\u0002012\u0007\u0010\u0089\u0001\u001a\u00020l2\b\u0010|\u001a\u0004\u0018\u00010lH\u0016J\u001b\u0010\u008a\u0001\u001a\u00020\f2\u0006\u0010n\u001a\u00020\u00112\n\u0010\u008b\u0001\u001a\u0005\u0018\u00010\u008c\u0001J\u0014\u0010\u008d\u0001\u001a\u00020!2\t\u00100\u001a\u0005\u0018\u00010\u008e\u0001H\u0016J\u0017\u0010\u008f\u0001\u001a\u00020!2\u0006\u0010\u0010\u001a\u00020\u0011H\u0000¢\u0006\u0003\b\u0090\u0001J\n\u0010\u0091\u0001\u001a\u00030\u008e\u0001H\u0016J2\u0010\u0092\u0001\u001a\u00020\f2\n\u0010M\u001a\u00060NR\u00020\u001b2\u0006\u00100\u001a\u0002012\u0007\u0010\u0093\u0001\u001a\u00020\u00112\n\u0010\u0094\u0001\u001a\u0005\u0018\u00010\u0095\u0001H\u0016J\u000f\u0010\u0096\u0001\u001a\u00020!H\u0000¢\u0006\u0003\b\u0097\u0001J\u000f\u0010\u0098\u0001\u001a\u00020!2\u0006\u0010\"\u001a\u00020#J\u000f\u0010\u0099\u0001\u001a\u00020!2\u0006\u0010\"\u001a\u00020%J.\u0010\u009a\u0001\u001a\u00020\f2\u0007\u0010\u0088\u0001\u001a\u00020\u001b2\u0007\u0010\u0089\u0001\u001a\u00020l2\b\u0010\u009b\u0001\u001a\u00030\u008c\u00012\u0007\u0010\u009c\u0001\u001a\u00020\fH\u0016J%\u0010\u009d\u0001\u001a\u00020\u00112\u0006\u0010.\u001a\u00020\u00112\n\u0010M\u001a\u00060NR\u00020\u001b2\u0006\u00100\u001a\u000201H\u0016J\u0012\u0010\u009e\u0001\u001a\u00020!2\u0007\u0010\u009f\u0001\u001a\u00020\u0011H\u0016J\u0012\u0010 \u0001\u001a\u00020!2\u0007\u0010¡\u0001\u001a\u00020\fH\u0002J%\u0010¢\u0001\u001a\u00020\u00112\u0006\u0010/\u001a\u00020\u00112\n\u0010M\u001a\u00060NR\u00020\u001b2\u0006\u00100\u001a\u000201H\u0016J\"\u0010£\u0001\u001a\u00020!2\u0007\u0010\u009f\u0001\u001a\u00020\u00112\u0007\u0010¤\u0001\u001a\u00020\u00112\u0007\u0010¡\u0001\u001a\u00020\fJ\u0019\u0010¥\u0001\u001a\u00020!2\u0007\u0010¤\u0001\u001a\u00020\u00112\u0007\u0010¡\u0001\u001a\u00020\fJ\"\u0010¦\u0001\u001a\u00020!2\u0007\u0010\u0088\u0001\u001a\u00020Y2\u0007\u0010\u0089\u0001\u001a\u00020K2\u0007\u0010¡\u0001\u001a\u00020\fJ\u0019\u0010§\u0001\u001a\u00020!2\u0007\u0010¨\u0001\u001a\u00020K2\u0007\u0010¡\u0001\u001a\u00020\fJ\u0010\u0010©\u0001\u001a\u00020!2\u0007\u0010ª\u0001\u001a\u00020\fJ\u0013\u0010«\u0001\u001a\u00020!2\n\u0010¬\u0001\u001a\u0005\u0018\u00010\u00ad\u0001J\u0019\u0010®\u0001\u001a\u00020!2\u0007\u0010¯\u0001\u001a\u00020\f2\u0007\u0010°\u0001\u001a\u00020\fJ\u0019\u0010±\u0001\u001a\u00020!2\u0007\u0010¯\u0001\u001a\u00020\f2\u0007\u0010°\u0001\u001a\u00020\fJ\u0010\u0010²\u0001\u001a\u00020!2\u0007\u0010³\u0001\u001a\u00020\fJ\u0010\u0010´\u0001\u001a\u00020!2\u0007\u0010³\u0001\u001a\u00020\fJ\u000f\u0010µ\u0001\u001a\u00020!2\u0006\u0010n\u001a\u00020SJ\u0010\u0010¶\u0001\u001a\u00020!2\u0007\u0010·\u0001\u001a\u00020\u0011J\u0010\u0010¸\u0001\u001a\u00020!2\u0007\u0010ª\u0001\u001a\u00020\fJ\u0010\u0010¹\u0001\u001a\u00020!2\u0007\u0010º\u0001\u001a\u00020UJ\u0010\u0010»\u0001\u001a\u00020!2\u0007\u0010¼\u0001\u001a\u00020\u0011J\u0010\u0010½\u0001\u001a\u00020!2\u0007\u0010¼\u0001\u001a\u00020\u0011J\u0012\u0010¾\u0001\u001a\u00020!2\t\u0010\"\u001a\u0005\u0018\u00010¿\u0001J\u0010\u0010À\u0001\u001a\u00020!2\u0007\u0010Á\u0001\u001a\u00020\u0011J\u0019\u0010Â\u0001\u001a\u00020!2\u0007\u0010¨\u0001\u001a\u00020Y2\u0007\u0010¡\u0001\u001a\u00020\fJ\u0010\u0010Ã\u0001\u001a\u00020!2\u0007\u0010Ä\u0001\u001a\u00020\fJ\u0010\u0010Å\u0001\u001a\u00020!2\u0007\u0010Æ\u0001\u001a\u00020\fJ\u0010\u0010Ç\u0001\u001a\u00020!2\u0007\u0010ª\u0001\u001a\u00020\fJ\u0018\u0010È\u0001\u001a\u00020!2\u0007\u0010É\u0001\u001a\u00020\fH\u0000¢\u0006\u0003\bÊ\u0001J\u0010\u0010Ë\u0001\u001a\u00020!2\u0007\u0010Ì\u0001\u001a\u00020\fJ\u0010\u0010Í\u0001\u001a\u00020!2\u0007\u0010Î\u0001\u001a\u00020^J\u0010\u0010Ï\u0001\u001a\u00020!2\u0007\u0010Ð\u0001\u001a\u00020\u0011J\u0010\u0010Ñ\u0001\u001a\u00020!2\u0007\u0010Ò\u0001\u001a\u00020aJ\"\u0010Ó\u0001\u001a\u00020!2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u00100\u001a\u0002012\u0007\u0010\u009f\u0001\u001a\u00020\u0011H\u0016J\u0013\u0010Ô\u0001\u001a\u00020!2\b\u0010Õ\u0001\u001a\u00030Ö\u0001H\u0016J\t\u0010×\u0001\u001a\u00020\fH\u0016J\u001a\u0010Ø\u0001\u001a\u00020!2\t\u0010\u001a\u001a\u0005\u0018\u00010Ù\u0001H\u0000¢\u0006\u0003\bÚ\u0001R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006Û\u0001"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;", "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;", "properties", "Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;", "(Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;)V", "accessibilityHelper", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;", "configuration", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;", "focusDispatcher", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher;", "hadFocusBeforeLayout", "", "isScrollingFromTouchEvent", "layoutAlignment", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;", "layoutDirection", "", "layoutInfo", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;", "pivotLayout", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;", "pivotSelector", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;", "prefetchCollector", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutPrefetchCollector;", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "scroller", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;", "spanFocusFinder", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;", "addOnLayoutCompletedListener", "", "listener", "Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnLayoutCompletedListener;", "addOnViewHolderSelectedListener", "Lcom/rubensousa/dpadrecyclerview/OnViewHolderSelectedListener;", "canScrollHorizontally", "canScrollVertically", "checkLayoutParams", "layoutParams", "Landroidx/recyclerview/widget/RecyclerView$LayoutParams;", "clearOnLayoutCompletedListeners", "clearOnViewHolderSelectedListeners", "collectAdjacentPrefetchPositions", "dx", "dy", SentryThread.JsonKeys.STATE, "Landroidx/recyclerview/widget/RecyclerView$State;", "layoutPrefetchRegistry", "Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;", "collectInitialPrefetchPositions", "adapterItemCount", "computeHorizontalScrollExtent", "computeHorizontalScrollOffset", "computeHorizontalScrollRange", "computeScrollExtent", "computeScrollOffset", "computeScrollRange", "computeVerticalScrollExtent", "computeVerticalScrollOffset", "computeVerticalScrollRange", "findFirstCompletelyVisibleItemPosition", "findFirstVisibleItemPosition", "findLastCompletelyVisibleItemPosition", "findLastVisibleItemPosition", "generateDefaultLayoutParams", "generateLayoutParams", "context", "Landroid/content/Context;", Session.JsonKeys.ATTRS, "Landroid/util/AttributeSet;", "Landroid/view/ViewGroup$LayoutParams;", "getChildAlignment", "Lcom/rubensousa/dpadrecyclerview/ChildAlignment;", "getColumnCountForAccessibility", "recycler", "Landroidx/recyclerview/widget/RecyclerView$Recycler;", "getConfig", "getConfig$dpadrecyclerview_release", "getCurrentSubPositions", "getFocusableDirection", "Lcom/rubensousa/dpadrecyclerview/FocusableDirection;", "getLoopDirection", "Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;", "getMaxPendingAlignments", "getMaxPendingMoves", "getParentAlignment", "Lcom/rubensousa/dpadrecyclerview/ParentAlignment;", "getRowCountForAccessibility", "getSelectedPosition", "getSelectedSubPosition", "getSmoothScrollSpeedFactor", "", "getSpanCount", "getSpanSizeLookup", "Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;", "isAutoMeasureEnabled", "isFocusSearchDisabled", "isLayoutEnabled", "onAdapterChanged", "oldAdapter", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "newAdapter", "onAddFocusables", "views", "Ljava/util/ArrayList;", "Landroid/view/View;", "Lkotlin/collections/ArrayList;", "direction", "focusableMode", "onAttachedToWindow", "view", "onDetachedFromWindow", "onFocusChanged", "gainFocus", "onFocusChanged$dpadrecyclerview_release", "onInitializeAccessibilityNodeInfo", "info", "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;", "onInitializeAccessibilityNodeInfoForItem", "host", "onInterceptFocusSearch", "focused", "onItemsAdded", "positionStart", "itemCount", "onItemsChanged", "onItemsMoved", "from", "to", "onItemsRemoved", "onLayoutChildren", "onLayoutCompleted", "onRequestChildFocus", "parent", "child", "onRequestFocusInDescendants", "previouslyFocusedRect", "Landroid/graphics/Rect;", "onRestoreInstanceState", "Landroid/os/Parcelable;", "onRtlPropertiesChanged", "onRtlPropertiesChanged$dpadrecyclerview_release", "onSaveInstanceState", "performAccessibilityAction", "action", "args", "Landroid/os/Bundle;", "removeCurrentViewHolderSelection", "removeCurrentViewHolderSelection$dpadrecyclerview_release", "removeOnLayoutCompletedListener", "removeOnViewHolderSelectedListener", "requestChildRectangleOnScreen", "rect", "immediate", "scrollHorizontallyBy", "scrollToPosition", "position", "scrollToSelectedPositionOrRequestLayout", "smooth", "scrollVerticallyBy", "selectPosition", "subPosition", "selectSubPosition", "setAlignments", "setChildAlignment", "alignment", "setChildrenDrawingOrderEnabled", "enabled", "setExtraLayoutSpaceStrategy", "strategy", "Lcom/rubensousa/dpadrecyclerview/ExtraLayoutSpaceStrategy;", "setFocusOutAllowed", "throughFront", "throughBack", "setFocusOutSideAllowed", "setFocusSearchDisabled", "disabled", "setFocusSearchEnabledDuringAnimations", "setFocusableDirection", "setGravity", "gravity", "setLayoutEnabled", "setLoopDirection", "loopDirection", "setMaxPendingAlignments", MetricSummary.JsonKeys.MAX, "setMaxPendingMoves", "setOnChildLaidOutListener", "Lcom/rubensousa/dpadrecyclerview/OnChildLaidOutListener;", "setOrientation", Device.JsonKeys.ORIENTATION, "setParentAlignment", "setRecycleChildrenOnDetach", "recycle", "setReverseLayout", "reverseLayout", "setScrollEnabled", "setScrollingFromTouchEvent", "isTouching", "setScrollingFromTouchEvent$dpadrecyclerview_release", "setSmoothFocusChangesEnabled", "isEnabled", "setSmoothScrollSpeedFactor", "speedFactor", "setSpanCount", "spanCount", "setSpanSizeLookup", "spanSizeLookup", "smoothScrollToPosition", "startSmoothScroll", "smoothScroller", "Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;", "supportsPredictiveItemAnimations", "updateRecyclerView", "Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;", "updateRecyclerView$dpadrecyclerview_release", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class PivotLayoutManager extends RecyclerView.LayoutManager {
    private final LayoutAccessibilityHelper accessibilityHelper;
    private final LayoutConfiguration configuration;
    private final FocusDispatcher focusDispatcher;
    private boolean hadFocusBeforeLayout;
    private boolean isScrollingFromTouchEvent;
    private final LayoutAlignment layoutAlignment;
    private int layoutDirection;
    private final LayoutInfo layoutInfo;
    private final PivotLayout pivotLayout;
    private final PivotSelector pivotSelector;
    private final LayoutPrefetchCollector prefetchCollector;
    private RecyclerView recyclerView;
    private final LayoutScroller scroller;
    private final SpanFocusFinder spanFocusFinder;

    /* renamed from: getConfig$dpadrecyclerview_release, reason: from getter */
    public final LayoutConfiguration getConfiguration() {
        return this.configuration;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean isAutoMeasureEnabled() {
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean requestChildRectangleOnScreen(RecyclerView parent, View child, Rect rect, boolean immediate) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(child, "child");
        Intrinsics.checkNotNullParameter(rect, "rect");
        return false;
    }

    public PivotLayoutManager(RecyclerView.LayoutManager.Properties properties) {
        Intrinsics.checkNotNullParameter(properties, "properties");
        LayoutConfiguration layoutConfiguration = new LayoutConfiguration(properties);
        this.configuration = layoutConfiguration;
        PivotLayoutManager pivotLayoutManager = this;
        LayoutInfo layoutInfo = new LayoutInfo(pivotLayoutManager, layoutConfiguration);
        this.layoutInfo = layoutInfo;
        PivotSelector pivotSelector = new PivotSelector(pivotLayoutManager, layoutInfo);
        this.pivotSelector = pivotSelector;
        LayoutAlignment layoutAlignment = new LayoutAlignment(pivotLayoutManager, layoutInfo);
        this.layoutAlignment = layoutAlignment;
        SpanFocusFinder spanFocusFinder = new SpanFocusFinder(layoutConfiguration);
        this.spanFocusFinder = spanFocusFinder;
        LayoutScroller layoutScroller = new LayoutScroller(pivotLayoutManager, layoutInfo, layoutAlignment, layoutConfiguration, pivotSelector, spanFocusFinder);
        this.scroller = layoutScroller;
        this.pivotLayout = new PivotLayout(pivotLayoutManager, layoutAlignment, layoutConfiguration, pivotSelector, layoutScroller, layoutInfo);
        this.prefetchCollector = new LayoutPrefetchCollector(layoutInfo);
        this.focusDispatcher = new FocusDispatcher(pivotLayoutManager, layoutConfiguration, layoutScroller, layoutInfo, pivotSelector, spanFocusFinder);
        this.accessibilityHelper = new LayoutAccessibilityHelper(pivotLayoutManager, layoutConfiguration, layoutInfo, pivotSelector, layoutScroller);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean checkLayoutParams(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof DpadLayoutParams;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateLayoutParams(Context context, AttributeSet attrs) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        return new DpadLayoutParams(context, attrs);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        Intrinsics.checkNotNullParameter(layoutParams, "layoutParams");
        return layoutParams instanceof DpadLayoutParams ? new DpadLayoutParams((DpadLayoutParams) layoutParams) : layoutParams instanceof RecyclerView.LayoutParams ? new DpadLayoutParams((RecyclerView.LayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new DpadLayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new DpadLayoutParams(layoutParams);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        if (this.configuration.getSpanCount() == 1) {
            return new DpadLayoutParams(-2, -2);
        }
        if (this.configuration.isVertical()) {
            return new DpadLayoutParams(-1, -2);
        }
        return new DpadLayoutParams(-2, -1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollHorizontally() {
        return this.configuration.isHorizontal();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        return this.configuration.isVertical();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean supportsPredictiveItemAnimations() {
        return !this.layoutInfo.getIsLoopingAllowed();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(recycler, "recycler");
        Intrinsics.checkNotNullParameter(state, "state");
        this.hadFocusBeforeLayout = hasFocus();
        this.scroller.cancelSmoothScroller();
        this.pivotSelector.onLayoutChildren(state);
        this.pivotLayout.onLayoutChildren(recycler, state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutCompleted(RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(state, "state");
        this.pivotLayout.onLayoutCompleted(state);
        if (this.hadFocusBeforeLayout) {
            this.focusDispatcher.focusSelectedView();
        }
        this.pivotSelector.onLayoutCompleted();
        this.hadFocusBeforeLayout = false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void collectAdjacentPrefetchPositions(int dx, int dy, RecyclerView.State state, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(layoutPrefetchRegistry, "layoutPrefetchRegistry");
        this.prefetchCollector.collectAdjacentPrefetchPositions(dx, dy, state, layoutPrefetchRegistry);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void collectInitialPrefetchPositions(int adapterItemCount, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        Intrinsics.checkNotNullParameter(layoutPrefetchRegistry, "layoutPrefetchRegistry");
        this.prefetchCollector.collectInitialPrefetchPositions(adapterItemCount, this.configuration.getInitialPrefetchItemCount(), this.pivotSelector.getPosition(), layoutPrefetchRegistry);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollHorizontallyBy(int dx, RecyclerView.Recycler recycler, RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(recycler, "recycler");
        Intrinsics.checkNotNullParameter(state, "state");
        return this.pivotLayout.scrollHorizontallyBy(dx, recycler, state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int dy, RecyclerView.Recycler recycler, RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(recycler, "recycler");
        Intrinsics.checkNotNullParameter(state, "state");
        return this.pivotLayout.scrollVerticallyBy(dy, recycler, state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollOffset(RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(state, "state");
        return computeScrollOffset(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollOffset(RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(state, "state");
        return computeScrollOffset(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollExtent(RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(state, "state");
        return computeScrollExtent(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollExtent(RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(state, "state");
        return computeScrollExtent(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollRange(RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(state, "state");
        return computeScrollRange(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollRange(RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(state, "state");
        return computeScrollRange(state);
    }

    private final int computeScrollOffset(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        return DpadScrollbarHelper.INSTANCE.computeScrollOffset(state, this.layoutInfo.getOrientationHelper(), this.layoutInfo.findFirstVisibleChild(), this.layoutInfo.findLastVisibleChild(), this, true, this.configuration.getReverseLayout());
    }

    private final int computeScrollExtent(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        return DpadScrollbarHelper.INSTANCE.computeScrollExtent(state, this.layoutInfo.getOrientationHelper(), this.layoutInfo.findFirstVisibleChild(), this.layoutInfo.findLastVisibleChild(), this, true);
    }

    private final int computeScrollRange(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        return DpadScrollbarHelper.INSTANCE.computeScrollRange(state, this.layoutInfo.getOrientationHelper(), this.layoutInfo.findFirstVisibleChild(), this.layoutInfo.findLastVisibleChild(), this, true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void scrollToPosition(int position) {
        LayoutScroller.scrollToPosition$default(this.scroller, position, 0, 2, null);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int position) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        Intrinsics.checkNotNullParameter(state, "state");
        this.scroller.scrollToPosition(position, 0, true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void startSmoothScroll(RecyclerView.SmoothScroller smoothScroller) {
        Intrinsics.checkNotNullParameter(smoothScroller, "smoothScroller");
        this.scroller.cancelSmoothScroller();
        super.startSmoothScroll(smoothScroller);
        this.scroller.setSmoothScroller(smoothScroller);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsAdded(RecyclerView recyclerView, int positionStart, int itemCount) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        this.configuration.getSpanSizeLookup().invalidateCache();
        this.pivotLayout.onItemsAdded(positionStart, itemCount);
        this.pivotSelector.onItemsAdded(positionStart, itemCount);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsChanged(RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        this.configuration.getSpanSizeLookup().invalidateCache();
        this.pivotSelector.onItemsChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsRemoved(RecyclerView recyclerView, int positionStart, int itemCount) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        this.configuration.getSpanSizeLookup().invalidateCache();
        this.pivotLayout.onItemsRemoved(positionStart, itemCount);
        this.pivotSelector.onItemsRemoved(positionStart, itemCount);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsMoved(RecyclerView recyclerView, int from, int to, int itemCount) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        this.configuration.getSpanSizeLookup().invalidateCache();
        this.pivotLayout.onItemsMoved(from, to, itemCount);
        this.pivotSelector.onItemsMoved(from, to, itemCount);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onAdapterChanged(RecyclerView.Adapter<?> oldAdapter, RecyclerView.Adapter<?> newAdapter) {
        if (oldAdapter != null) {
            this.pivotLayout.reset();
            this.pivotSelector.clear();
        }
    }

    public final void onFocusChanged$dpadrecyclerview_release(boolean gainFocus) {
        if (this.isScrollingFromTouchEvent) {
            return;
        }
        this.focusDispatcher.onFocusChanged(gainFocus);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public View onInterceptFocusSearch(View focused, int direction) {
        Intrinsics.checkNotNullParameter(focused, "focused");
        return this.focusDispatcher.onInterceptFocusSearch(this.recyclerView, focused, direction);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean onAddFocusables(RecyclerView recyclerView, ArrayList<View> views, int direction, int focusableMode) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        Intrinsics.checkNotNullParameter(views, "views");
        return this.focusDispatcher.onAddFocusables(recyclerView, views, direction, focusableMode);
    }

    public final boolean onRequestFocusInDescendants(int direction, Rect previouslyFocusedRect) {
        return this.focusDispatcher.onRequestFocusInDescendants(direction, previouslyFocusedRect);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean onRequestChildFocus(RecyclerView parent, RecyclerView.State state, View child, View focused) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(child, "child");
        return this.focusDispatcher.onRequestChildFocus(parent, child, focused);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onAttachedToWindow(RecyclerView view) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onAttachedToWindow(view);
        this.focusDispatcher.updateParentRecyclerView(view);
        if (this.configuration.getRecycleChildrenOnDetach()) {
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onDetachedFromWindow(RecyclerView view, RecyclerView.Recycler recycler) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(recycler, "recycler");
        super.onDetachedFromWindow(view, recycler);
        this.focusDispatcher.clearParentRecyclerView();
        if (this.configuration.getRecycleChildrenOnDetach()) {
            removeAndRecycleAllViews(recycler);
            recycler.clear();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int getRowCountForAccessibility(RecyclerView.Recycler recycler, RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(recycler, "recycler");
        Intrinsics.checkNotNullParameter(state, "state");
        return this.accessibilityHelper.getRowCountForAccessibility(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int getColumnCountForAccessibility(RecyclerView.Recycler recycler, RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(recycler, "recycler");
        Intrinsics.checkNotNullParameter(state, "state");
        return this.accessibilityHelper.getColumnCountForAccessibility(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onInitializeAccessibilityNodeInfo(RecyclerView.Recycler recycler, RecyclerView.State state, AccessibilityNodeInfoCompat info) {
        Intrinsics.checkNotNullParameter(recycler, "recycler");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(info, "info");
        this.accessibilityHelper.onInitializeAccessibilityNodeInfo(recycler, state, info);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onInitializeAccessibilityNodeInfoForItem(RecyclerView.Recycler recycler, RecyclerView.State state, View host, AccessibilityNodeInfoCompat info) {
        Intrinsics.checkNotNullParameter(recycler, "recycler");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(host, "host");
        Intrinsics.checkNotNullParameter(info, "info");
        this.accessibilityHelper.onInitializeAccessibilityNodeInfoForItem(host, info);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean performAccessibilityAction(RecyclerView.Recycler recycler, RecyclerView.State state, int action, Bundle args) {
        Intrinsics.checkNotNullParameter(recycler, "recycler");
        Intrinsics.checkNotNullParameter(state, "state");
        return this.accessibilityHelper.performAccessibilityAction(this.recyclerView, state, action);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public Parcelable onSaveInstanceState() {
        return this.pivotLayout.onSaveInstanceState();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onRestoreInstanceState(Parcelable state) {
        this.pivotLayout.onRestoreInstanceState(state);
    }

    public final void onRtlPropertiesChanged$dpadrecyclerview_release(int layoutDirection) {
        if (this.layoutDirection == layoutDirection) {
            return;
        }
        this.layoutDirection = layoutDirection;
        requestLayout();
    }

    public final void updateRecyclerView$dpadrecyclerview_release(DpadRecyclerView recyclerView) {
        if (recyclerView == null) {
            this.focusDispatcher.clearParentRecyclerView();
        }
        DpadRecyclerView dpadRecyclerView = recyclerView;
        this.recyclerView = dpadRecyclerView;
        this.layoutInfo.setRecyclerView(dpadRecyclerView);
        this.scroller.setRecyclerView(recyclerView);
        this.pivotSelector.setRecyclerView(dpadRecyclerView);
    }

    public final void setScrollingFromTouchEvent$dpadrecyclerview_release(boolean isTouching) {
        this.configuration.setKeepLayoutAnchor(isTouching);
        this.isScrollingFromTouchEvent = isTouching;
    }

    public final void removeCurrentViewHolderSelection$dpadrecyclerview_release() {
        this.pivotSelector.removeCurrentViewHolderSelection(this.isScrollingFromTouchEvent);
    }

    public final void setChildrenDrawingOrderEnabled(boolean enabled) {
        this.configuration.setChildDrawingOrderEnabled(enabled);
    }

    public final void setRecycleChildrenOnDetach(boolean recycle) {
        this.configuration.setRecycleChildrenOnDetach(recycle);
    }

    public final void setLayoutEnabled(boolean enabled) {
        if (this.configuration.getIsLayoutEnabled() != enabled) {
            this.configuration.setLayoutEnabled(enabled);
            requestLayout();
        }
    }

    public final boolean isLayoutEnabled() {
        return this.configuration.getIsLayoutEnabled();
    }

    public final void setLoopDirection(DpadLoopDirection loopDirection) {
        Intrinsics.checkNotNullParameter(loopDirection, "loopDirection");
        if (this.configuration.getLoopDirection() != loopDirection) {
            this.configuration.setLoopDirection(loopDirection);
            requestLayout();
        }
    }

    public final DpadLoopDirection getLoopDirection() {
        return this.configuration.getLoopDirection();
    }

    public final void setGravity(int gravity) {
        if (this.configuration.getGravity() != gravity) {
            this.configuration.setGravity(gravity);
            requestLayout();
        }
    }

    public final void setOrientation(int orientation) {
        if (this.configuration.getOrientation() != orientation) {
            this.configuration.setOrientation(orientation);
            this.layoutInfo.updateOrientation();
            requestLayout();
        }
    }

    public final void setReverseLayout(boolean reverseLayout) {
        if (this.configuration.getReverseLayout() != reverseLayout) {
            this.configuration.setReverseLayout(reverseLayout);
            requestLayout();
        }
    }

    public final void setSpanCount(int spanCount) {
        if (this.configuration.getSpanCount() != spanCount) {
            this.configuration.setSpanCount(spanCount);
            this.spanFocusFinder.clearSpanCache();
            this.pivotLayout.updateStructure();
            requestLayout();
        }
    }

    public final int getSpanCount() {
        return this.configuration.getSpanCount();
    }

    public final void setSpanSizeLookup(DpadSpanSizeLookup spanSizeLookup) {
        Intrinsics.checkNotNullParameter(spanSizeLookup, "spanSizeLookup");
        if (spanSizeLookup != this.configuration.getSpanSizeLookup()) {
            this.configuration.setSpanSizeLookup(spanSizeLookup);
            this.spanFocusFinder.clearSpanCache();
            requestLayout();
        }
    }

    public final DpadSpanSizeLookup getSpanSizeLookup() {
        return this.configuration.getSpanSizeLookup();
    }

    public final void setExtraLayoutSpaceStrategy(ExtraLayoutSpaceStrategy strategy) {
        this.configuration.setExtraLayoutSpaceStrategy(strategy);
        requestLayout();
    }

    public final void setFocusableDirection(FocusableDirection direction) {
        Intrinsics.checkNotNullParameter(direction, "direction");
        this.configuration.setFocusableDirection(direction);
        this.focusDispatcher.updateFocusableDirection(direction);
    }

    public final FocusableDirection getFocusableDirection() {
        return this.configuration.getFocusableDirection();
    }

    public final void setFocusOutAllowed(boolean throughFront, boolean throughBack) {
        this.configuration.setFocusOutAllowed(throughFront, throughBack);
    }

    public final void setFocusOutSideAllowed(boolean throughFront, boolean throughBack) {
        this.configuration.setFocusOutSideAllowed(throughFront, throughBack);
    }

    public final void setSmoothFocusChangesEnabled(boolean isEnabled) {
        this.configuration.setSmoothFocusChangesEnabled(isEnabled);
    }

    public final void setMaxPendingAlignments(int max) {
        this.configuration.setMaxPendingAlignments(max);
    }

    public final int getMaxPendingAlignments() {
        return this.configuration.getMaxPendingAlignments();
    }

    public final void setMaxPendingMoves(int max) {
        this.configuration.setMaxPendingMoves(max);
    }

    public final int getMaxPendingMoves() {
        return this.configuration.getMaxPendingMoves();
    }

    public final void setSmoothScrollSpeedFactor(float speedFactor) {
        this.configuration.setSmoothScrollSpeedFactor(speedFactor);
    }

    public final float getSmoothScrollSpeedFactor() {
        return this.configuration.getSmoothScrollSpeedFactor();
    }

    public final void setScrollEnabled(boolean enabled) {
        if (this.configuration.getIsScrollEnabled() == enabled) {
            return;
        }
        this.configuration.setScrollEnabled(enabled);
        if (enabled) {
            LayoutScroller.scrollToSelectedPosition$default(this.scroller, this.configuration.getIsSmoothFocusChangesEnabled(), false, 2, null);
        }
    }

    public final void setFocusSearchDisabled(boolean disabled) {
        this.configuration.setFocusSearchDisabled(disabled);
    }

    public final void setFocusSearchEnabledDuringAnimations(boolean disabled) {
        this.configuration.setFocusSearchEnabledDuringAnimations(disabled);
    }

    public final boolean isFocusSearchDisabled() {
        return this.configuration.getIsFocusSearchDisabled();
    }

    public final void setAlignments(ParentAlignment parent, ChildAlignment child, boolean smooth) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(child, "child");
        this.layoutAlignment.setParentAlignment(parent);
        this.layoutAlignment.setChildAlignment(child);
        scrollToSelectedPositionOrRequestLayout(smooth);
    }

    public final void setParentAlignment(ParentAlignment alignment, boolean smooth) {
        Intrinsics.checkNotNullParameter(alignment, "alignment");
        this.layoutAlignment.setParentAlignment(alignment);
        scrollToSelectedPositionOrRequestLayout(smooth);
    }

    public final ParentAlignment getParentAlignment() {
        return this.layoutAlignment.getParentAlignment();
    }

    public final void setChildAlignment(ChildAlignment alignment, boolean smooth) {
        Intrinsics.checkNotNullParameter(alignment, "alignment");
        this.layoutAlignment.setChildAlignment(alignment);
        scrollToSelectedPositionOrRequestLayout(smooth);
    }

    public final ChildAlignment getChildAlignment() {
        return this.layoutAlignment.getChildAlignment();
    }

    public final void addOnViewHolderSelectedListener(OnViewHolderSelectedListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.pivotSelector.addOnViewHolderSelectedListener(listener);
    }

    public final void removeOnViewHolderSelectedListener(OnViewHolderSelectedListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.pivotSelector.removeOnViewHolderSelectedListener(listener);
    }

    public final void clearOnViewHolderSelectedListeners() {
        this.pivotSelector.clearOnViewHolderSelectedListeners();
    }

    public final void selectPosition(int position, int subPosition, boolean smooth) {
        this.scroller.scrollToPosition(position, subPosition, smooth);
    }

    public final void selectSubPosition(int subPosition, boolean smooth) {
        selectPosition(this.pivotSelector.getPosition(), subPosition, smooth);
    }

    public final int getSelectedPosition() {
        return this.pivotSelector.getPosition();
    }

    public final int getSelectedSubPosition() {
        return this.pivotSelector.getSubPosition();
    }

    public final int getCurrentSubPositions() {
        return this.pivotSelector.getCurrentSubPositions();
    }

    public final int findFirstVisibleItemPosition() {
        return this.layoutInfo.findFirstVisiblePosition();
    }

    public final int findFirstCompletelyVisibleItemPosition() {
        return this.layoutInfo.findFirstCompletelyVisiblePosition();
    }

    public final int findLastVisibleItemPosition() {
        return this.layoutInfo.findLastVisiblePosition();
    }

    public final int findLastCompletelyVisibleItemPosition() {
        return this.layoutInfo.findLastCompletelyVisiblePosition();
    }

    public final void setOnChildLaidOutListener(OnChildLaidOutListener listener) {
        this.pivotLayout.setOnChildLaidOutListener(listener);
    }

    public final void addOnLayoutCompletedListener(DpadRecyclerView.OnLayoutCompletedListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.pivotLayout.addOnLayoutCompletedListener(listener);
    }

    public final void removeOnLayoutCompletedListener(DpadRecyclerView.OnLayoutCompletedListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.pivotLayout.removeOnLayoutCompletedListener(listener);
    }

    public final void clearOnLayoutCompletedListeners() {
        this.pivotLayout.clearOnLayoutCompletedListeners();
    }

    private final void scrollToSelectedPositionOrRequestLayout(boolean smooth) {
        if (smooth) {
            this.scroller.scrollToSelectedPosition(true, false);
        } else {
            requestLayout();
        }
    }
}
