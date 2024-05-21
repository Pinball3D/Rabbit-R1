.class public Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "DpadRecyclerView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$Companion;,
        Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$FocusableChildDrawingCallback;,
        Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnKeyInterceptListener;,
        Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnLayoutCompletedListener;,
        Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnMotionInterceptListener;,
        Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnTouchInterceptListener;,
        Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnUnhandledKeyListener;,
        Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$SmoothScrollByBehavior;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008e\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u001d\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u0016\u0018\u0000 \u00db\u00012\u00020\u0001:\u0010\u00db\u0001\u00dc\u0001\u00dd\u0001\u00de\u0001\u00df\u0001\u00e0\u0001\u00e1\u0001\u00e2\u0001B%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u000e\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"J\u000e\u0010#\u001a\u00020 2\u0006\u0010!\u001a\u00020$J\u000e\u0010%\u001a\u00020 2\u0006\u0010!\u001a\u00020&J\r\u0010\'\u001a\u00020 H\u0001\u00a2\u0006\u0002\u0008(J\u0006\u0010)\u001a\u00020 J\u0006\u0010*\u001a\u00020 J\"\u0010+\u001a\u00020\u00152\u0006\u0010,\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0002J\r\u0010.\u001a\u00020 H\u0001\u00a2\u0006\u0002\u0008/J\u0010\u00100\u001a\u00020 2\u0006\u00101\u001a\u000202H\u0014J\u0010\u00103\u001a\u00020\u000e2\u0006\u00104\u001a\u000205H\u0004J\u000e\u00106\u001a\u00020\u000e2\u0006\u00104\u001a\u000207J\u0010\u00108\u001a\u00020\u000e2\u0006\u00104\u001a\u000205H\u0016J\u000e\u00109\u001a\u00020 2\u0006\u0010:\u001a\u00020\u000eJ\u000e\u0010;\u001a\u00020 2\u0006\u0010:\u001a\u00020\u000eJ\u0006\u0010<\u001a\u00020\u0007J\u0006\u0010=\u001a\u00020\u0007J\u0006\u0010>\u001a\u00020\u0007J\u0006\u0010?\u001a\u00020\u0007J\u0010\u0010@\u001a\u0004\u0018\u00010A2\u0006\u0010B\u001a\u00020\u0007J\u0006\u0010C\u001a\u00020DJ\u0006\u0010E\u001a\u00020\u0007J\u0006\u0010F\u001a\u00020GJ\u0006\u0010H\u001a\u00020\u0007J\u0006\u0010I\u001a\u00020JJ\u0006\u0010K\u001a\u00020\u0007J\u0006\u0010L\u001a\u00020\u0007J\u0006\u0010M\u001a\u00020\u0007J\u0006\u0010N\u001a\u00020\u0007J\u0008\u0010O\u001a\u0004\u0018\u00010\u0011J\u0008\u0010P\u001a\u0004\u0018\u00010\u0013J\u0008\u0010Q\u001a\u0004\u0018\u00010\u001cJ\u0006\u0010R\u001a\u00020\u0007J\u0006\u0010S\u001a\u00020TJ\u0006\u0010U\u001a\u00020\u0007J\u0006\u0010V\u001a\u00020\u0007J\u0006\u0010W\u001a\u00020\u0007J\u0006\u0010X\u001a\u00020\u0007J\u0006\u0010Y\u001a\u00020ZJ\u0006\u0010[\u001a\u00020\u0007J\u0006\u0010\\\u001a\u00020]J\u0006\u0010^\u001a\u00020\u000eJ\u0006\u0010_\u001a\u00020\u000eJ\u0006\u0010`\u001a\u00020\u000eJ\u0006\u0010a\u001a\u00020\u000eJ\u0006\u0010b\u001a\u00020\u000eJ\u0006\u0010c\u001a\u00020\u000eJ\u0006\u0010d\u001a\u00020\u000eJ\u0006\u0010e\u001a\u00020\u000eJ\u0006\u0010f\u001a\u00020\u000eJ\"\u0010g\u001a\u00020 2\u0006\u0010h\u001a\u00020\u000e2\u0006\u0010B\u001a\u00020\u00072\u0008\u0010i\u001a\u0004\u0018\u00010jH\u0004J\u0018\u0010k\u001a\u00020 2\u0006\u0010l\u001a\u00020\u00072\u0006\u0010m\u001a\u00020\u0007H\u0004J\u001a\u0010n\u001a\u00020\u000e2\u0006\u0010B\u001a\u00020\u00072\u0008\u0010i\u001a\u0004\u0018\u00010jH\u0004J\u000e\u0010o\u001a\u00020 2\u0006\u0010p\u001a\u00020\u0007J\u0010\u0010q\u001a\u00020 2\u0006\u0010r\u001a\u00020\u0007H\u0016J(\u0010s\u001a\u00020 2\u0006\u0010t\u001a\u00020\u00072\u0006\u0010u\u001a\u00020\u00072\u0006\u0010v\u001a\u00020\u00072\u0006\u0010w\u001a\u00020\u0007H\u0014J\u000e\u0010x\u001a\u00020 2\u0006\u0010!\u001a\u00020\"J\u000e\u0010y\u001a\u00020 2\u0006\u0010!\u001a\u00020$J\u0008\u0010z\u001a\u00020 H\u0002J\u000e\u0010{\u001a\u00020 2\u0006\u0010|\u001a\u00020AJ\u000e\u0010}\u001a\u00020 2\u0006\u0010~\u001a\u00020\u0007J\u0008\u0010\u007f\u001a\u00020\u0015H\u0002J\"\u0010\u0080\u0001\u001a\u00020 2\u0007\u0010\u0081\u0001\u001a\u00020T2\u0007\u0010\u0082\u0001\u001a\u00020D2\u0007\u0010\u0083\u0001\u001a\u00020\u000eJ\u001b\u0010\u0084\u0001\u001a\u00020 2\u0007\u0010\u0085\u0001\u001a\u00020D2\t\u0008\u0002\u0010\u0083\u0001\u001a\u00020\u000eJ\u0013\u0010\u0086\u0001\u001a\u00020 2\n\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0088\u0001J\u0013\u0010\u0089\u0001\u001a\u00020 2\n\u0010\u008a\u0001\u001a\u0005\u0018\u00010\u008b\u0001J\u0010\u0010\u008c\u0001\u001a\u00020 2\u0007\u0010\u008d\u0001\u001a\u00020\u0007J\u0010\u0010\u008e\u0001\u001a\u00020 2\u0007\u0010\u008f\u0001\u001a\u00020\u000eJ\u0019\u0010\u0090\u0001\u001a\u00020 2\u0007\u0010\u0091\u0001\u001a\u00020\u000e2\u0007\u0010\u0092\u0001\u001a\u00020\u000eJ\u0019\u0010\u0093\u0001\u001a\u00020 2\u0007\u0010\u0091\u0001\u001a\u00020\u000e2\u0007\u0010\u0092\u0001\u001a\u00020\u000eJ\u0010\u0010\u0094\u0001\u001a\u00020 2\u0007\u0010\u0095\u0001\u001a\u00020\u000eJ\u0010\u0010\u0096\u0001\u001a\u00020 2\u0007\u0010\u008f\u0001\u001a\u00020\u000eJ\u000f\u0010\u0097\u0001\u001a\u00020 2\u0006\u0010B\u001a\u00020GJ\u0010\u0010\u0098\u0001\u001a\u00020 2\u0007\u0010\u0099\u0001\u001a\u00020\u0007J\u0010\u0010\u009a\u0001\u001a\u00020 2\u0007\u0010\u009b\u0001\u001a\u00020\u000eJ\u0010\u0010\u009c\u0001\u001a\u00020 2\u0007\u0010\u008f\u0001\u001a\u00020\u000eJ\u0010\u0010\u009d\u0001\u001a\u00020 2\u0007\u0010\u009e\u0001\u001a\u00020\u0007J\u0013\u0010\u009f\u0001\u001a\u00020 2\n\u0010\u00a0\u0001\u001a\u0005\u0018\u00010\u00a1\u0001J\u0010\u0010\u00a2\u0001\u001a\u00020 2\u0007\u0010\u008f\u0001\u001a\u00020\u000eJ\u0010\u0010\u00a3\u0001\u001a\u00020 2\u0007\u0010\u008f\u0001\u001a\u00020\u000eJ\u0013\u0010\u00a4\u0001\u001a\u00020 2\n\u0010\u00a5\u0001\u001a\u0005\u0018\u00010\u00a6\u0001J\u0010\u0010\u00a7\u0001\u001a\u00020 2\u0007\u0010\u00a8\u0001\u001a\u00020JJ\u0012\u0010\u00a9\u0001\u001a\u00020 2\t\u0008\u0001\u0010\u008d\u0001\u001a\u00020\u0007J\u0012\u0010\u00aa\u0001\u001a\u00020 2\t\u0008\u0001\u0010\u00ab\u0001\u001a\u00020\u0007J\u0012\u0010\u00ac\u0001\u001a\u00020 2\t\u0008\u0001\u0010\u008d\u0001\u001a\u00020\u0007J\u0012\u0010\u00ad\u0001\u001a\u00020 2\t\u0008\u0001\u0010\u00ab\u0001\u001a\u00020\u0007J\u0012\u0010\u00ae\u0001\u001a\u00020 2\t\u0010!\u001a\u0005\u0018\u00010\u00af\u0001J\u0011\u0010\u00b0\u0001\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\u0011J\u0011\u0010\u00b1\u0001\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\u0013J\u0011\u0010\u00b2\u0001\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\u001aJ\u0011\u0010\u00b3\u0001\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\u001cJ\u0010\u0010\u00b4\u0001\u001a\u00020 2\u0007\u0010\u00b5\u0001\u001a\u00020\u0007J\u001b\u0010\u00b6\u0001\u001a\u00020 2\u0007\u0010\u0085\u0001\u001a\u00020T2\t\u0008\u0002\u0010\u0083\u0001\u001a\u00020\u000eJ\u0010\u0010\u00b7\u0001\u001a\u00020 2\u0007\u0010\u00b8\u0001\u001a\u00020\u000eJ\u0010\u0010\u00b9\u0001\u001a\u00020 2\u0007\u0010\u00ba\u0001\u001a\u00020\u000eJ\u0010\u0010\u00bb\u0001\u001a\u00020 2\u0007\u0010\u008f\u0001\u001a\u00020\u000eJ\u0010\u0010\u00bc\u0001\u001a\u00020 2\u0007\u0010\u00bd\u0001\u001a\u00020\u0007J\u001a\u0010\u00bc\u0001\u001a\u00020 2\u0007\u0010\u00bd\u0001\u001a\u00020\u00072\u0008\u0010\u00be\u0001\u001a\u00030\u00bf\u0001J\u0010\u0010\u00c0\u0001\u001a\u00020 2\u0007\u0010\u00bd\u0001\u001a\u00020\u0007J\u001a\u0010\u00c0\u0001\u001a\u00020 2\u0007\u0010\u00bd\u0001\u001a\u00020\u00072\u0008\u0010\u00be\u0001\u001a\u00030\u00bf\u0001J\u0010\u0010\u00c1\u0001\u001a\u00020 2\u0007\u0010\u00c2\u0001\u001a\u00020\u0007J\u0019\u0010\u00c1\u0001\u001a\u00020 2\u0007\u0010\u00bd\u0001\u001a\u00020\u00072\u0007\u0010\u00c2\u0001\u001a\u00020\u0007J#\u0010\u00c1\u0001\u001a\u00020 2\u0007\u0010\u00bd\u0001\u001a\u00020\u00072\u0007\u0010\u00c2\u0001\u001a\u00020\u00072\u0008\u0010\u00be\u0001\u001a\u00030\u00bf\u0001J\u0010\u0010\u00c3\u0001\u001a\u00020 2\u0007\u0010\u00c2\u0001\u001a\u00020\u0007J\u0019\u0010\u00c3\u0001\u001a\u00020 2\u0007\u0010\u00bd\u0001\u001a\u00020\u00072\u0007\u0010\u00c2\u0001\u001a\u00020\u0007J#\u0010\u00c3\u0001\u001a\u00020 2\u0007\u0010\u00bd\u0001\u001a\u00020\u00072\u0007\u0010\u00c2\u0001\u001a\u00020\u00072\u0008\u0010\u00be\u0001\u001a\u00030\u00bf\u0001J\u0010\u0010\u00c4\u0001\u001a\u00020 2\u0007\u0010\u008f\u0001\u001a\u00020\u000eJ\u0012\u0010\u00c5\u0001\u001a\u00020 2\t\u0010\u00c6\u0001\u001a\u0004\u0018\u00010\u0017J\u0010\u0010\u00c7\u0001\u001a\u00020 2\u0007\u0010\u00c8\u0001\u001a\u00020\u0007J\u0010\u0010\u00c9\u0001\u001a\u00020 2\u0007\u0010\u00c8\u0001\u001a\u00020\u0007J\u0010\u0010\u00ca\u0001\u001a\u00020 2\u0007\u0010\u00cb\u0001\u001a\u00020ZJ\u0010\u0010\u00cc\u0001\u001a\u00020 2\u0007\u0010\u00cd\u0001\u001a\u00020\u0007J\u0010\u0010\u00ce\u0001\u001a\u00020 2\u0007\u0010\u00cf\u0001\u001a\u00020]J\u0010\u0010\u00d0\u0001\u001a\u00020 2\u0007\u0010\u00d1\u0001\u001a\u00020\u000eJ\u0019\u0010\u00d2\u0001\u001a\u00020 2\u0007\u0010\u00d3\u0001\u001a\u00020\u00072\u0007\u0010\u00d4\u0001\u001a\u00020\u0007J%\u0010\u00d2\u0001\u001a\u00020 2\u0007\u0010\u00d3\u0001\u001a\u00020\u00072\u0007\u0010\u00d4\u0001\u001a\u00020\u00072\n\u0010\u00d5\u0001\u001a\u0005\u0018\u00010\u00d6\u0001J\u001b\u0010\u00d7\u0001\u001a\u00020\u000e2\u0007\u0010\u00d8\u0001\u001a\u00020\u00072\u0007\u0010\u00d9\u0001\u001a\u00020\u0007H\u0016J\t\u0010\u00da\u0001\u001a\u00020 H\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00060\u000cR\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00e3\u0001"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "fadingEdge",
        "Lcom/rubensousa/dpadrecyclerview/FadingEdge;",
        "focusableChildDrawingCallback",
        "Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$FocusableChildDrawingCallback;",
        "isOverlappingRenderingEnabled",
        "",
        "isRetainingFocus",
        "keyInterceptListener",
        "Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnKeyInterceptListener;",
        "motionInterceptListener",
        "Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnMotionInterceptListener;",
        "pivotLayoutManager",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;",
        "smoothScrollByBehavior",
        "Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$SmoothScrollByBehavior;",
        "startedTouchScroll",
        "touchInterceptListener",
        "Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnTouchInterceptListener;",
        "unhandledKeyListener",
        "Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnUnhandledKeyListener;",
        "viewHolderTaskExecutor",
        "Lcom/rubensousa/dpadrecyclerview/ViewHolderTaskExecutor;",
        "addOnLayoutCompletedListener",
        "",
        "listener",
        "Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnLayoutCompletedListener;",
        "addOnViewHolderSelectedListener",
        "Lcom/rubensousa/dpadrecyclerview/OnViewHolderSelectedListener;",
        "addRecyclerListener",
        "Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;",
        "attachToWindow",
        "attachToWindow$dpadrecyclerview_release",
        "clearOnLayoutCompletedListeners",
        "clearOnViewHolderSelectedListeners",
        "createLayoutManager",
        "typedArray",
        "Landroid/content/res/TypedArray;",
        "detachFromWindow",
        "detachFromWindow$dpadrecyclerview_release",
        "dispatchDraw",
        "canvas",
        "Landroid/graphics/Canvas;",
        "dispatchGenericFocusedEvent",
        "event",
        "Landroid/view/MotionEvent;",
        "dispatchKeyEvent",
        "Landroid/view/KeyEvent;",
        "dispatchTouchEvent",
        "enableMaxEdgeFading",
        "enable",
        "enableMinEdgeFading",
        "findFirstCompletelyVisibleItemPosition",
        "findFirstVisibleItemPosition",
        "findLastCompletelyVisibleItemPosition",
        "findLastVisibleItemPosition",
        "focusSearch",
        "Landroid/view/View;",
        "direction",
        "getChildAlignment",
        "Lcom/rubensousa/dpadrecyclerview/ChildAlignment;",
        "getCurrentSubPositions",
        "getFocusableDirection",
        "Lcom/rubensousa/dpadrecyclerview/FocusableDirection;",
        "getInitialPrefetchItemCount",
        "getLoopDirection",
        "Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;",
        "getMaxEdgeFadingLength",
        "getMaxEdgeFadingOffset",
        "getMinEdgeFadingLength",
        "getMinEdgeFadingOffset",
        "getOnKeyInterceptListener",
        "getOnMotionInterceptListener",
        "getOnUnhandledKeyListener",
        "getOrientation",
        "getParentAlignment",
        "Lcom/rubensousa/dpadrecyclerview/ParentAlignment;",
        "getSelectedPosition",
        "getSelectedSubPosition",
        "getSmoothScrollMaxPendingAlignments",
        "getSmoothScrollMaxPendingMoves",
        "getSmoothScrollSpeedFactor",
        "",
        "getSpanCount",
        "getSpanSizeLookup",
        "Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;",
        "hasOverlappingRendering",
        "isFocusDrawingOrderEnabled",
        "isFocusSearchDisabled",
        "isItemPrefetchEnabled",
        "isLayoutEnabled",
        "isLayoutReversed",
        "isMaxEdgeFadingEnabled",
        "isMinEdgeFadingEnabled",
        "isScrollEnabled",
        "onFocusChanged",
        "gainFocus",
        "previouslyFocusedRect",
        "Landroid/graphics/Rect;",
        "onMeasure",
        "widthSpec",
        "heightSpec",
        "onRequestFocusInDescendants",
        "onRtlPropertiesChanged",
        "layoutDirection",
        "onScrollStateChanged",
        "state",
        "onSizeChanged",
        "w",
        "h",
        "oldw",
        "oldh",
        "removeOnLayoutCompletedListener",
        "removeOnViewHolderSelectedListener",
        "removeSelectionForRecycledViewHolders",
        "removeView",
        "view",
        "removeViewAt",
        "index",
        "requireLayout",
        "setAlignments",
        "parent",
        "child",
        "smooth",
        "setChildAlignment",
        "alignment",
        "setChildDrawingOrderCallback",
        "childDrawingOrderCallback",
        "Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;",
        "setExtraLayoutSpaceStrategy",
        "strategy",
        "Lcom/rubensousa/dpadrecyclerview/ExtraLayoutSpaceStrategy;",
        "setFadingEdgeLength",
        "length",
        "setFocusDrawingOrderEnabled",
        "enabled",
        "setFocusOutAllowed",
        "throughFront",
        "throughBack",
        "setFocusOutSideAllowed",
        "setFocusSearchDisabled",
        "disabled",
        "setFocusSearchEnabledDuringAnimations",
        "setFocusableDirection",
        "setGravity",
        "gravity",
        "setHasFixedSize",
        "hasFixedSize",
        "setHasOverlappingRendering",
        "setInitialPrefetchItemCount",
        "itemCount",
        "setItemAnimator",
        "animator",
        "Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;",
        "setItemPrefetchEnabled",
        "setLayoutEnabled",
        "setLayoutManager",
        "layout",
        "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;",
        "setLoopDirection",
        "loopDirection",
        "setMaxEdgeFadingLength",
        "setMaxEdgeFadingOffset",
        "offset",
        "setMinEdgeFadingLength",
        "setMinEdgeFadingOffset",
        "setOnChildLaidOutListener",
        "Lcom/rubensousa/dpadrecyclerview/OnChildLaidOutListener;",
        "setOnKeyInterceptListener",
        "setOnMotionInterceptListener",
        "setOnTouchInterceptListener",
        "setOnUnhandledKeyListener",
        "setOrientation",
        "orientation",
        "setParentAlignment",
        "setRecycleChildrenOnDetach",
        "recycle",
        "setReverseLayout",
        "reverseLayout",
        "setScrollEnabled",
        "setSelectedPosition",
        "position",
        "task",
        "Lcom/rubensousa/dpadrecyclerview/ViewHolderTask;",
        "setSelectedPositionSmooth",
        "setSelectedSubPosition",
        "subPosition",
        "setSelectedSubPositionSmooth",
        "setSmoothFocusChangesEnabled",
        "setSmoothScrollBehavior",
        "behavior",
        "setSmoothScrollMaxPendingAlignments",
        "max",
        "setSmoothScrollMaxPendingMoves",
        "setSmoothScrollSpeedFactor",
        "smoothScrollSpeedFactor",
        "setSpanCount",
        "spans",
        "setSpanSizeLookup",
        "spanSizeLookup",
        "setWillNotDraw",
        "willNotDraw",
        "smoothScrollBy",
        "dx",
        "dy",
        "interpolator",
        "Landroid/view/animation/Interpolator;",
        "startNestedScroll",
        "axes",
        "type",
        "stopNestedScroll",
        "Companion",
        "FocusableChildDrawingCallback",
        "OnKeyInterceptListener",
        "OnLayoutCompletedListener",
        "OnMotionInterceptListener",
        "OnTouchInterceptListener",
        "OnUnhandledKeyListener",
        "SmoothScrollByBehavior",
        "dpadrecyclerview_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$Companion;

.field private static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "DpadRecyclerView"


# instance fields
.field private final fadingEdge:Lcom/rubensousa/dpadrecyclerview/FadingEdge;

.field private final focusableChildDrawingCallback:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$FocusableChildDrawingCallback;

.field private isOverlappingRenderingEnabled:Z

.field private isRetainingFocus:Z

.field private keyInterceptListener:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnKeyInterceptListener;

.field private motionInterceptListener:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnMotionInterceptListener;

.field private pivotLayoutManager:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

.field private smoothScrollByBehavior:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$SmoothScrollByBehavior;

.field private startedTouchScroll:Z

.field private touchInterceptListener:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnTouchInterceptListener;

.field private unhandledKeyListener:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnUnhandledKeyListener;

.field private final viewHolderTaskExecutor:Lcom/rubensousa/dpadrecyclerview/ViewHolderTaskExecutor;


# direct methods
.method public static synthetic $r8$lambda$JloWMHt7EtQpw_dheqnTXVdk968(Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->removeSelectionForRecycledViewHolders$lambda$4(Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->Companion:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    new-instance p3, Lcom/rubensousa/dpadrecyclerview/ViewHolderTaskExecutor;

    invoke-direct {p3}, Lcom/rubensousa/dpadrecyclerview/ViewHolderTaskExecutor;-><init>()V

    iput-object p3, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->viewHolderTaskExecutor:Lcom/rubensousa/dpadrecyclerview/ViewHolderTaskExecutor;

    .line 67
    new-instance p3, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$FocusableChildDrawingCallback;

    invoke-direct {p3, p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$FocusableChildDrawingCallback;-><init>(Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;)V

    iput-object p3, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->focusableChildDrawingCallback:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$FocusableChildDrawingCallback;

    .line 68
    new-instance v0, Lcom/rubensousa/dpadrecyclerview/FadingEdge;

    invoke-direct {v0}, Lcom/rubensousa/dpadrecyclerview/FadingEdge;-><init>()V

    iput-object v0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->fadingEdge:Lcom/rubensousa/dpadrecyclerview/FadingEdge;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->isOverlappingRenderingEnabled:Z

    .line 83
    sget-object v1, Lcom/rubensousa/dpadrecyclerview/R$styleable;->DpadRecyclerView:[I

    .line 84
    sget v2, Lcom/rubensousa/dpadrecyclerview/R$attr;->dpadRecyclerViewStyle:I

    const/4 v3, 0x0

    .line 81
    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const-string v2, "obtainStyledAttributes(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    sget v2, Lcom/rubensousa/dpadrecyclerview/R$styleable;->DpadRecyclerView_android_focusable:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 90
    invoke-virtual {p0, v0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->setFocusable(Z)V

    .line 92
    :cond_0
    sget v2, Lcom/rubensousa/dpadrecyclerview/R$styleable;->DpadRecyclerView_android_focusableInTouchMode:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 93
    invoke-virtual {p0, v0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->setFocusableInTouchMode(Z)V

    .line 96
    :cond_1
    invoke-direct {p0, v1, p1, p2}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->createLayoutManager(Landroid/content/res/TypedArray;Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 99
    invoke-virtual {p0, v3}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->setPreserveFocusAfterLayout(Z)V

    const/high16 p1, 0x40000

    .line 102
    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->setDescendantFocusability(I)V

    .line 105
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 108
    sget p1, Lcom/rubensousa/dpadrecyclerview/R$styleable;->DpadRecyclerView_android_fadingEdgeLength:I

    .line 107
    invoke-virtual {v1, p1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    if-lez p1, :cond_2

    .line 111
    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->setFadingEdgeLength(I)V

    .line 114
    :cond_2
    invoke-virtual {p0, v0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->setWillNotDraw(Z)V

    .line 115
    check-cast p3, Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

    invoke-virtual {p0, p3}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->setChildDrawingOrderCallback(Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;)V

    const/4 p1, 0x2

    .line 116
    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->setOverScrollMode(I)V

    .line 117
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 118
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->removeSelectionForRecycledViewHolders()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 58
    sget p3, Lcom/rubensousa/dpadrecyclerview/R$attr;->dpadRecyclerViewStyle:I

    .line 55
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getDEBUG$cp()Z
    .locals 1

    sget-boolean v0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->DEBUG:Z

    return v0
.end method

.method public static final synthetic access$getPivotLayoutManager$p(Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->pivotLayoutManager:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    return-object p0
.end method

.method private final createLayoutManager(Landroid/content/res/TypedArray;Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;
    .locals 21

    move-object/from16 v0, p1

    const/4 v1, 0x0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 126
    invoke-static {v2, v3, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;

    move-result-object v2

    .line 127
    new-instance v3, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v3, v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;)V

    .line 130
    sget v2, Lcom/rubensousa/dpadrecyclerview/R$styleable;->DpadRecyclerView_dpadRecyclerViewFocusOutFront:I

    const/4 v4, 0x1

    .line 129
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 133
    sget v5, Lcom/rubensousa/dpadrecyclerview/R$styleable;->DpadRecyclerView_dpadRecyclerViewFocusOutBack:I

    .line 132
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 128
    invoke-virtual {v3, v2, v5}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->setFocusOutAllowed(ZZ)V

    .line 138
    sget v2, Lcom/rubensousa/dpadrecyclerview/R$styleable;->DpadRecyclerView_dpadRecyclerViewFocusOutSideFront:I

    .line 137
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 141
    sget v5, Lcom/rubensousa/dpadrecyclerview/R$styleable;->DpadRecyclerView_dpadRecyclerViewFocusOutSideBack:I

    .line 140
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 136
    invoke-virtual {v3, v2, v5}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->setFocusOutSideAllowed(ZZ)V

    .line 145
    invoke-static {}, Lcom/rubensousa/dpadrecyclerview/FocusableDirection;->values()[Lcom/rubensousa/dpadrecyclerview/FocusableDirection;

    move-result-object v2

    .line 146
    sget v5, Lcom/rubensousa/dpadrecyclerview/R$styleable;->DpadRecyclerView_dpadRecyclerViewFocusableDirection:I

    .line 147
    sget-object v6, Lcom/rubensousa/dpadrecyclerview/FocusableDirection;->STANDARD:Lcom/rubensousa/dpadrecyclerview/FocusableDirection;

    invoke-virtual {v6}, Lcom/rubensousa/dpadrecyclerview/FocusableDirection;->ordinal()I

    move-result v6

    .line 145
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    aget-object v2, v2, v5

    .line 144
    invoke-virtual {v3, v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->setFocusableDirection(Lcom/rubensousa/dpadrecyclerview/FocusableDirection;)V

    .line 151
    invoke-static {}, Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;->values()[Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;

    move-result-object v2

    .line 152
    sget v5, Lcom/rubensousa/dpadrecyclerview/R$styleable;->DpadRecyclerView_dpadRecyclerViewLoopDirection:I

    .line 153
    sget-object v6, Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;->NONE:Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;

    invoke-virtual {v6}, Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;->ordinal()I

    move-result v6

    .line 151
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    aget-object v2, v2, v5

    .line 150
    invoke-virtual {v3, v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->setLoopDirection(Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;)V

    .line 158
    sget v2, Lcom/rubensousa/dpadrecyclerview/R$styleable;->DpadRecyclerView_dpadRecyclerViewSmoothFocusChangesEnabled:I

    .line 157
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 156
    invoke-virtual {v3, v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->setSmoothFocusChangesEnabled(Z)V

    .line 161
    sget v2, Lcom/rubensousa/dpadrecyclerview/R$styleable;->DpadRecyclerView_android_gravity:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    sget v2, Lcom/rubensousa/dpadrecyclerview/R$styleable;->DpadRecyclerView_android_gravity:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 162
    invoke-virtual {v3, v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->setGravity(I)V

    .line 166
    :cond_0
    invoke-static {}, Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;->values()[Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;

    move-result-object v2

    .line 167
    sget v5, Lcom/rubensousa/dpadrecyclerview/R$styleable;->DpadRecyclerView_dpadRecyclerViewParentAlignmentEdge:I

    .line 168
    sget-object v6, Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;->MIN_MAX:Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;

    invoke-virtual {v6}, Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;->ordinal()I

    move-result v6

    .line 166
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    aget-object v7, v2, v5

    .line 170
    new-instance v2, Lcom/rubensousa/dpadrecyclerview/ParentAlignment;

    .line 173
    sget v5, Lcom/rubensousa/dpadrecyclerview/R$styleable;->DpadRecyclerView_dpadRecyclerViewParentAlignmentOffset:I

    .line 172
    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    .line 177
    sget v5, Lcom/rubensousa/dpadrecyclerview/R$styleable;->DpadRecyclerView_dpadRecyclerViewParentAlignmentFraction:I

    const/high16 v12, 0x3f000000    # 0.5f

    .line 176
    invoke-virtual {v0, v5, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    .line 181
    sget v5, Lcom/rubensousa/dpadrecyclerview/R$styleable;->DpadRecyclerView_dpadRecyclerViewParentAlignmentFractionEnabled:I

    .line 180
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 185
    sget v5, Lcom/rubensousa/dpadrecyclerview/R$styleable;->DpadRecyclerView_dpadRecyclerViewParentAlignmentPreferKeylineOverEdge:I

    .line 186
    sget-object v6, Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;->MAX:Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;

    if-ne v7, v6, :cond_1

    move v6, v4

    goto :goto_0

    :cond_1
    move v6, v1

    .line 184
    :goto_0
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    move-object v6, v2

    .line 170
    invoke-direct/range {v6 .. v11}, Lcom/rubensousa/dpadrecyclerview/ParentAlignment;-><init>(Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;IFZZ)V

    .line 189
    new-instance v5, Lcom/rubensousa/dpadrecyclerview/ChildAlignment;

    .line 191
    sget v6, Lcom/rubensousa/dpadrecyclerview/R$styleable;->DpadRecyclerView_dpadRecyclerViewChildAlignmentOffset:I

    .line 190
    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    .line 195
    sget v6, Lcom/rubensousa/dpadrecyclerview/R$styleable;->DpadRecyclerView_dpadRecyclerViewChildAlignmentFraction:I

    .line 194
    invoke-virtual {v0, v6, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    .line 199
    sget v6, Lcom/rubensousa/dpadrecyclerview/R$styleable;->DpadRecyclerView_dpadRecyclerViewChildAlignmentFractionEnabled:I

    .line 198
    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x18

    const/16 v20, 0x0

    move-object v13, v5

    .line 189
    invoke-direct/range {v13 .. v20}, Lcom/rubensousa/dpadrecyclerview/ChildAlignment;-><init>(IFZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 203
    invoke-virtual {v3, v2, v5, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->setAlignments(Lcom/rubensousa/dpadrecyclerview/ParentAlignment;Lcom/rubensousa/dpadrecyclerview/ChildAlignment;Z)V

    return-object v3
.end method

.method private final removeSelectionForRecycledViewHolders()V
    .locals 1

    .line 1242
    new-instance v0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$$ExternalSyntheticLambda0;-><init>(Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;)V

    invoke-virtual {p0, v0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->addRecyclerListener(Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;)V

    return-void
.end method

.method private static final removeSelectionForRecycledViewHolders$lambda$4(Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1243
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result v0

    .line 1244
    instance-of p1, p1, Lcom/rubensousa/dpadrecyclerview/DpadViewHolder;

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    if-eq v0, p1, :cond_0

    .line 1246
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->getSelectedPosition()I

    move-result p1

    if-ne v0, p1, :cond_0

    .line 1248
    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->pivotLayoutManager:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->removeCurrentViewHolderSelection$dpadrecyclerview_release()V

    :cond_0
    return-void
.end method

.method private final requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;
    .locals 1

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->pivotLayoutManager:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    if-eqz p0, :cond_0

    return-object p0

    .line 1254
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "PivotLayoutManager is null. Check for unnecessary usages of RecyclerView.setLayoutManager(null) or just set a new PivotLayoutManager."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic setChildAlignment$default(Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;Lcom/rubensousa/dpadrecyclerview/ChildAlignment;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 842
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->setChildAlignment(Lcom/rubensousa/dpadrecyclerview/ChildAlignment;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setChildAlignment"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic setParentAlignment$default(Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;Lcom/rubensousa/dpadrecyclerview/ParentAlignment;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 828
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->setParentAlignment(Lcom/rubensousa/dpadrecyclerview/ParentAlignment;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setParentAlignment"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final addOnLayoutCompletedListener(Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnLayoutCompletedListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1181
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->addOnLayoutCompletedListener(Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnLayoutCompletedListener;)V

    return-void
.end method

.method public final addOnViewHolderSelectedListener(Lcom/rubensousa/dpadrecyclerview/OnViewHolderSelectedListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1121
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->addOnViewHolderSelectedListener(Lcom/rubensousa/dpadrecyclerview/OnViewHolderSelectedListener;)V

    return-void
.end method

.method public final addRecyclerListener(Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addRecyclerListener(Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;)V

    return-void
.end method

.method public final attachToWindow$dpadrecyclerview_release()V
    .locals 0

    .line 1238
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->onAttachedToWindow()V

    return-void
.end method

.method public final clearOnLayoutCompletedListeners()V
    .locals 0

    .line 1196
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->clearOnLayoutCompletedListeners()V

    return-void
.end method

.method public final clearOnViewHolderSelectedListeners()V
    .locals 0

    .line 1136
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->clearOnViewHolderSelectedListeners()V

    return-void
.end method

.method public final detachFromWindow$dpadrecyclerview_release()V
    .locals 0

    .line 1233
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->onDetachedFromWindow()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->fadingEdge:Lcom/rubensousa/dpadrecyclerview/FadingEdge;

    .line 443
    invoke-virtual {v0, p0}, Lcom/rubensousa/dpadrecyclerview/FadingEdge;->isMinFadingEdgeRequired(Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;)Z

    move-result v4

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->fadingEdge:Lcom/rubensousa/dpadrecyclerview/FadingEdge;

    .line 444
    invoke-virtual {v0, p0}, Lcom/rubensousa/dpadrecyclerview/FadingEdge;->isMaxFadingEdgeRequired(Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;)Z

    move-result v5

    if-nez v5, :cond_0

    if-nez v4, :cond_0

    .line 446
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz v4, :cond_1

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->fadingEdge:Lcom/rubensousa/dpadrecyclerview/FadingEdge;

    .line 449
    invoke-virtual {v1}, Lcom/rubensousa/dpadrecyclerview/FadingEdge;->getMinShaderLength()I

    move-result v1

    move v8, v1

    goto :goto_0

    :cond_1
    move v8, v0

    :goto_0
    if-eqz v5, :cond_2

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->fadingEdge:Lcom/rubensousa/dpadrecyclerview/FadingEdge;

    .line 450
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/FadingEdge;->getMaxShaderLength()I

    move-result v0

    :cond_2
    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->fadingEdge:Lcom/rubensousa/dpadrecyclerview/FadingEdge;

    .line 451
    invoke-virtual {v1, p0}, Lcom/rubensousa/dpadrecyclerview/FadingEdge;->getMinEdge(Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;)I

    move-result v2

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->fadingEdge:Lcom/rubensousa/dpadrecyclerview/FadingEdge;

    .line 452
    invoke-virtual {v1, p0}, Lcom/rubensousa/dpadrecyclerview/FadingEdge;->getMaxEdge(Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;)I

    move-result v3

    .line 454
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->fadingEdge:Lcom/rubensousa/dpadrecyclerview/FadingEdge;

    move-object v6, p1

    move-object v7, p0

    .line 455
    invoke-virtual/range {v1 .. v7}, Lcom/rubensousa/dpadrecyclerview/FadingEdge;->clip(IIZZLandroid/graphics/Canvas;Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;)V

    .line 456
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    if-lez v8, :cond_3

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->fadingEdge:Lcom/rubensousa/dpadrecyclerview/FadingEdge;

    .line 458
    invoke-virtual {v1, p1, p0}, Lcom/rubensousa/dpadrecyclerview/FadingEdge;->drawMin(Landroid/graphics/Canvas;Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;)V

    :cond_3
    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->fadingEdge:Lcom/rubensousa/dpadrecyclerview/FadingEdge;

    .line 461
    invoke-virtual {v0, p1, p0}, Lcom/rubensousa/dpadrecyclerview/FadingEdge;->drawMax(Landroid/graphics/Canvas;Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;)V

    .line 463
    :cond_4
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected final dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->motionInterceptListener:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnMotionInterceptListener;

    if-eqz v0, :cond_0

    .line 311
    invoke-interface {v0, p1}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnMotionInterceptListener;->onInterceptMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 314
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->keyInterceptListener:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnKeyInterceptListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 301
    invoke-interface {v0, p1}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnKeyInterceptListener;->onInterceptKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    return v1

    .line 304
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->unhandledKeyListener:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnUnhandledKeyListener;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 307
    invoke-interface {p0, p1}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnUnhandledKeyListener;->onUnhandledKey(Landroid/view/KeyEvent;)Z

    move-result p0

    if-ne p0, v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->touchInterceptListener:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnTouchInterceptListener;

    if-eqz v0, :cond_0

    .line 293
    invoke-interface {v0, p1}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnTouchInterceptListener;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 297
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final enableMaxEdgeFading(Z)V
    .locals 1

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->fadingEdge:Lcom/rubensousa/dpadrecyclerview/FadingEdge;

    .line 572
    invoke-virtual {v0, p1, p0}, Lcom/rubensousa/dpadrecyclerview/FadingEdge;->enableMaxEdgeFading(ZLcom/rubensousa/dpadrecyclerview/DpadRecyclerView;)V

    return-void
.end method

.method public final enableMinEdgeFading(Z)V
    .locals 1

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->fadingEdge:Lcom/rubensousa/dpadrecyclerview/FadingEdge;

    .line 534
    invoke-virtual {v0, p1, p0}, Lcom/rubensousa/dpadrecyclerview/FadingEdge;->enableMinEdgeFading(ZLcom/rubensousa/dpadrecyclerview/DpadRecyclerView;)V

    return-void
.end method

.method public final findFirstCompletelyVisibleItemPosition()I
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->pivotLayoutManager:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    if-eqz p0, :cond_0

    .line 1093
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final findFirstVisibleItemPosition()I
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->pivotLayoutManager:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    if-eqz p0, :cond_0

    .line 1083
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->findFirstVisibleItemPosition()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final findLastCompletelyVisibleItemPosition()I
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->pivotLayoutManager:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    if-eqz p0, :cond_0

    .line 1113
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final findLastVisibleItemPosition()I
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->pivotLayoutManager:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    if-eqz p0, :cond_0

    .line 1103
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->findLastVisibleItemPosition()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final focusSearch(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->pivotLayoutManager:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    .line 319
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 320
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->getSelectedPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {p0, v0, p1}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    .line 324
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    :goto_0
    return-object p0

    .line 327
    :cond_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->focusSearch(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final getChildAlignment()Lcom/rubensousa/dpadrecyclerview/ChildAlignment;
    .locals 0

    .line 849
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->getChildAlignment()Lcom/rubensousa/dpadrecyclerview/ChildAlignment;

    move-result-object p0

    return-object p0
.end method

.method public final getCurrentSubPositions()I
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->pivotLayoutManager:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    if-eqz p0, :cond_0

    .line 1074
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->getCurrentSubPositions()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getFocusableDirection()Lcom/rubensousa/dpadrecyclerview/FocusableDirection;
    .locals 0

    .line 656
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->getFocusableDirection()Lcom/rubensousa/dpadrecyclerview/FocusableDirection;

    move-result-object p0

    return-object p0
.end method

.method public final getInitialPrefetchItemCount()I
    .locals 0

    .line 741
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->getConfig$dpadrecyclerview_release()Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->getInitialPrefetchItemCount()I

    move-result p0

    return p0
.end method

.method public final getLoopDirection()Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;
    .locals 0

    .line 527
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->getLoopDirection()Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;

    move-result-object p0

    return-object p0
.end method

.method public final getMaxEdgeFadingLength()I
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->fadingEdge:Lcom/rubensousa/dpadrecyclerview/FadingEdge;

    .line 590
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/FadingEdge;->getMaxShaderLength()I

    move-result p0

    return p0
.end method

.method public final getMaxEdgeFadingOffset()I
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->fadingEdge:Lcom/rubensousa/dpadrecyclerview/FadingEdge;

    .line 602
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/FadingEdge;->getMaxShaderOffset()I

    move-result p0

    return p0
.end method

.method public final getMinEdgeFadingLength()I
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->fadingEdge:Lcom/rubensousa/dpadrecyclerview/FadingEdge;

    .line 552
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/FadingEdge;->getMinShaderLength()I

    move-result p0

    return p0
.end method

.method public final getMinEdgeFadingOffset()I
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->fadingEdge:Lcom/rubensousa/dpadrecyclerview/FadingEdge;

    .line 565
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/FadingEdge;->getMinShaderOffset()I

    move-result p0

    return p0
.end method

.method public final getOnKeyInterceptListener()Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnKeyInterceptListener;
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->keyInterceptListener:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnKeyInterceptListener;

    return-object p0
.end method

.method public final getOnMotionInterceptListener()Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnMotionInterceptListener;
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->motionInterceptListener:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnMotionInterceptListener;

    return-object p0
.end method

.method public final getOnUnhandledKeyListener()Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnUnhandledKeyListener;
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->unhandledKeyListener:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnUnhandledKeyListener;

    return-object p0
.end method

.method public final getOrientation()I
    .locals 0

    .line 781
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->getConfig$dpadrecyclerview_release()Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->getOrientation()I

    move-result p0

    return p0
.end method

.method public final getParentAlignment()Lcom/rubensousa/dpadrecyclerview/ParentAlignment;
    .locals 0

    .line 835
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->getParentAlignment()Lcom/rubensousa/dpadrecyclerview/ParentAlignment;

    move-result-object p0

    return-object p0
.end method

.method public final getSelectedPosition()I
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->pivotLayoutManager:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    if-eqz p0, :cond_0

    .line 1063
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->getSelectedPosition()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final getSelectedSubPosition()I
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->pivotLayoutManager:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    if-eqz p0, :cond_0

    .line 1068
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->getSelectedSubPosition()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final getSmoothScrollMaxPendingAlignments()I
    .locals 0

    .line 896
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->getMaxPendingAlignments()I

    move-result p0

    return p0
.end method

.method public final getSmoothScrollMaxPendingMoves()I
    .locals 0

    .line 922
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->getMaxPendingMoves()I

    move-result p0

    return p0
.end method

.method public final getSmoothScrollSpeedFactor()F
    .locals 0

    .line 945
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->getSmoothScrollSpeedFactor()F

    move-result p0

    return p0
.end method

.method public final getSpanCount()I
    .locals 0

    .line 768
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->getSpanCount()I

    move-result p0

    return p0
.end method

.method public final getSpanSizeLookup()Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;
    .locals 0

    .line 754
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->getSpanSizeLookup()Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;

    move-result-object p0

    return-object p0
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    iget-boolean p0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->isOverlappingRenderingEnabled:Z

    return p0
.end method

.method public final isFocusDrawingOrderEnabled()Z
    .locals 0

    .line 620
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->isChildrenDrawingOrderEnabled()Z

    move-result p0

    return p0
.end method

.method public final isFocusSearchDisabled()Z
    .locals 0

    .line 640
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->isFocusSearchDisabled()Z

    move-result p0

    return p0
.end method

.method public final isItemPrefetchEnabled()Z
    .locals 0

    .line 718
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->isItemPrefetchEnabled()Z

    move-result p0

    return p0
.end method

.method public final isLayoutEnabled()Z
    .locals 0

    .line 512
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->isLayoutEnabled()Z

    move-result p0

    return p0
.end method

.method public final isLayoutReversed()Z
    .locals 0

    .line 807
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->getConfig$dpadrecyclerview_release()Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->getReverseLayout()Z

    move-result p0

    return p0
.end method

.method public final isMaxEdgeFadingEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->fadingEdge:Lcom/rubensousa/dpadrecyclerview/FadingEdge;

    .line 578
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/FadingEdge;->isFadingMaxEdge()Z

    move-result p0

    return p0
.end method

.method public final isMinEdgeFadingEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->fadingEdge:Lcom/rubensousa/dpadrecyclerview/FadingEdge;

    .line 540
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/FadingEdge;->isFadingMinEdge()Z

    move-result p0

    return p0
.end method

.method public final isScrollEnabled()Z
    .locals 0

    .line 962
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->getConfig$dpadrecyclerview_release()Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->isScrollEnabled()Z

    move-result p0

    return p0
.end method

.method protected final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 335
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->pivotLayoutManager:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    if-eqz p0, :cond_0

    .line 336
    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->onFocusChanged$dpadrecyclerview_release(Z)V

    :cond_0
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 5

    .line 232
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 234
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onMeasure(II)V

    return-void

    .line 237
    :cond_0
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 238
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, -0x2

    if-ne v1, v2, :cond_1

    .line 239
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, v4, :cond_1

    .line 243
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 242
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 241
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onMeasure(II)V

    return-void

    .line 248
    :cond_1
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->getOrientation()I

    move-result v1

    if-nez v1, :cond_2

    .line 249
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v4, :cond_2

    .line 253
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 252
    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 251
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onMeasure(II)V

    return-void

    .line 260
    :cond_2
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onMeasure(II)V

    return-void
.end method

.method protected final onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->isRetainingFocus:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->pivotLayoutManager:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    if-eqz p0, :cond_1

    .line 350
    invoke-virtual {p0, p1, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v1

    :cond_1
    return v1
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 0

    .line 380
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onRtlPropertiesChanged(I)V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->pivotLayoutManager:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    if-eqz p0, :cond_0

    .line 381
    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->onRtlPropertiesChanged$dpadrecyclerview_release(I)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    .line 418
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onScrollStateChanged(I)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->startedTouchScroll:Z

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->pivotLayoutManager:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    if-eqz p0, :cond_1

    .line 421
    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->setScrollingFromTouchEvent$dpadrecyclerview_release(Z)V

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->startedTouchScroll:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->pivotLayoutManager:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    .line 423
    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->setScrollingFromTouchEvent$dpadrecyclerview_release(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6

    .line 428
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->fadingEdge:Lcom/rubensousa/dpadrecyclerview/FadingEdge;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p0

    .line 429
    invoke-virtual/range {v0 .. v5}, Lcom/rubensousa/dpadrecyclerview/FadingEdge;->onSizeChanged(IIIILcom/rubensousa/dpadrecyclerview/DpadRecyclerView;)V

    return-void
.end method

.method public final removeOnLayoutCompletedListener(Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnLayoutCompletedListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1189
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->removeOnLayoutCompletedListener(Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnLayoutCompletedListener;)V

    return-void
.end method

.method public final removeOnViewHolderSelectedListener(Lcom/rubensousa/dpadrecyclerview/OnViewHolderSelectedListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1129
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->removeOnViewHolderSelectedListener(Lcom/rubensousa/dpadrecyclerview/OnViewHolderSelectedListener;)V

    return-void
.end method

.method public final removeView(Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->isRetainingFocus:Z

    if-eqz v0, :cond_1

    .line 357
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requestFocus()Z

    .line 359
    :cond_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->removeView(Landroid/view/View;)V

    iput-boolean v1, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->isRetainingFocus:Z

    return-void
.end method

.method public final removeViewAt(I)V
    .locals 2

    .line 364
    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->isRetainingFocus:Z

    if-eqz v0, :cond_1

    .line 367
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requestFocus()Z

    .line 369
    :cond_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->removeViewAt(I)V

    iput-boolean v1, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->isRetainingFocus:Z

    return-void
.end method

.method public final setAlignments(Lcom/rubensousa/dpadrecyclerview/ParentAlignment;Lcom/rubensousa/dpadrecyclerview/ChildAlignment;Z)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 858
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->setAlignments(Lcom/rubensousa/dpadrecyclerview/ParentAlignment;Lcom/rubensousa/dpadrecyclerview/ChildAlignment;Z)V

    return-void
.end method

.method public final setChildAlignment(Lcom/rubensousa/dpadrecyclerview/ChildAlignment;Z)V
    .locals 1

    const-string v0, "alignment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 843
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->setChildAlignment(Lcom/rubensousa/dpadrecyclerview/ChildAlignment;Z)V

    return-void
.end method

.method public final setChildDrawingOrderCallback(Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;)V
    .locals 0

    .line 376
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setChildDrawingOrderCallback(Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;)V

    return-void
.end method

.method public final setExtraLayoutSpaceStrategy(Lcom/rubensousa/dpadrecyclerview/ExtraLayoutSpaceStrategy;)V
    .locals 0

    .line 475
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->setExtraLayoutSpaceStrategy(Lcom/rubensousa/dpadrecyclerview/ExtraLayoutSpaceStrategy;)V

    return-void
.end method

.method public final setFadingEdgeLength(I)V
    .locals 1

    .line 433
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setFadingEdgeLength(I)V

    .line 434
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 435
    invoke-virtual {p0, v0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->enableMinEdgeFading(Z)V

    .line 436
    invoke-virtual {p0, v0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->enableMaxEdgeFading(Z)V

    .line 437
    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->setMaxEdgeFadingLength(I)V

    .line 438
    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->setMinEdgeFadingLength(I)V

    :cond_0
    return-void
.end method

.method public final setFocusDrawingOrderEnabled(Z)V
    .locals 0

    .line 611
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setChildrenDrawingOrderEnabled(Z)V

    .line 612
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->setChildrenDrawingOrderEnabled(Z)V

    return-void
.end method

.method public final setFocusOutAllowed(ZZ)V
    .locals 0

    .line 686
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->setFocusOutAllowed(ZZ)V

    return-void
.end method

.method public final setFocusOutSideAllowed(ZZ)V
    .locals 0

    .line 701
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->setFocusOutSideAllowed(ZZ)V

    return-void
.end method

.method public final setFocusSearchDisabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/high16 v0, 0x60000

    goto :goto_0

    :cond_0
    const/high16 v0, 0x40000

    .line 628
    :goto_0
    invoke-virtual {p0, v0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->setDescendantFocusability(I)V

    .line 633
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->setFocusSearchDisabled(Z)V

    return-void
.end method

.method public final setFocusSearchEnabledDuringAnimations(Z)V
    .locals 0

    .line 669
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->setFocusSearchEnabledDuringAnimations(Z)V

    return-void
.end method

.method public final setFocusableDirection(Lcom/rubensousa/dpadrecyclerview/FocusableDirection;)V
    .locals 1

    const-string v0, "direction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 649
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->setFocusableDirection(Lcom/rubensousa/dpadrecyclerview/FocusableDirection;)V

    return-void
.end method

.method public final setGravity(I)V
    .locals 0

    .line 820
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->setGravity(I)V

    return-void
.end method

.method public final setHasFixedSize(Z)V
    .locals 0

    .line 280
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    return-void
.end method

.method public final setHasOverlappingRendering(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->isOverlappingRenderingEnabled:Z

    return-void
.end method

.method public final setInitialPrefetchItemCount(I)V
    .locals 0

    .line 732
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->getConfig$dpadrecyclerview_release()Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->setInitialPrefetchItemCount(I)V

    return-void
.end method

.method public final setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V
    .locals 0

    .line 264
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 270
    instance-of p0, p1, Landroidx/recyclerview/widget/SimpleItemAnimator;

    if-eqz p0, :cond_0

    .line 271
    check-cast p1, Landroidx/recyclerview/widget/SimpleItemAnimator;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    :cond_0
    return-void
.end method

.method public final setItemPrefetchEnabled(Z)V
    .locals 0

    .line 710
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->setItemPrefetchEnabled(Z)V

    return-void
.end method

.method public final setLayoutEnabled(Z)V
    .locals 0

    .line 506
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->setLayoutEnabled(Z)V

    return-void
.end method

.method public final setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 2

    .line 208
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->pivotLayoutManager:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->viewHolderTaskExecutor:Lcom/rubensousa/dpadrecyclerview/ViewHolderTaskExecutor;

    .line 209
    check-cast v1, Lcom/rubensousa/dpadrecyclerview/OnViewHolderSelectedListener;

    invoke-virtual {v0, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->removeOnViewHolderSelectedListener(Lcom/rubensousa/dpadrecyclerview/OnViewHolderSelectedListener;)V

    :cond_0
    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->pivotLayoutManager:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 210
    invoke-virtual {v0, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->updateRecyclerView$dpadrecyclerview_release(Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;)V

    :cond_1
    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->pivotLayoutManager:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    if-eq v0, p1, :cond_3

    if-eqz v0, :cond_2

    .line 212
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->clearOnLayoutCompletedListeners()V

    :cond_2
    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->pivotLayoutManager:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    if-eqz v0, :cond_3

    .line 213
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->clearOnViewHolderSelectedListeners()V

    :cond_3
    iput-object v1, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->pivotLayoutManager:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    if-eqz p1, :cond_5

    .line 217
    instance-of v0, p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    if-eqz v0, :cond_4

    goto :goto_0

    .line 218
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Only PivotLayoutManager is supported, but got "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 218
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 222
    :cond_5
    :goto_0
    instance-of v0, p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    if-eqz v0, :cond_6

    .line 223
    check-cast p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    invoke-virtual {p1, p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->updateRecyclerView$dpadrecyclerview_release(Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;)V

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->viewHolderTaskExecutor:Lcom/rubensousa/dpadrecyclerview/ViewHolderTaskExecutor;

    .line 224
    check-cast v0, Lcom/rubensousa/dpadrecyclerview/OnViewHolderSelectedListener;

    invoke-virtual {p1, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->addOnViewHolderSelectedListener(Lcom/rubensousa/dpadrecyclerview/OnViewHolderSelectedListener;)V

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->pivotLayoutManager:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    :cond_6
    return-void
.end method

.method public final setLoopDirection(Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;)V
    .locals 1

    const-string v0, "loopDirection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 521
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->setLoopDirection(Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;)V

    return-void
.end method

.method public final setMaxEdgeFadingLength(I)V
    .locals 1

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->fadingEdge:Lcom/rubensousa/dpadrecyclerview/FadingEdge;

    .line 584
    invoke-virtual {v0, p1, p0}, Lcom/rubensousa/dpadrecyclerview/FadingEdge;->setMaxEdgeFadingLength(ILcom/rubensousa/dpadrecyclerview/DpadRecyclerView;)V

    return-void
.end method

.method public final setMaxEdgeFadingOffset(I)V
    .locals 1

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->fadingEdge:Lcom/rubensousa/dpadrecyclerview/FadingEdge;

    .line 596
    invoke-virtual {v0, p1, p0}, Lcom/rubensousa/dpadrecyclerview/FadingEdge;->setMaxEdgeFadingOffset(ILcom/rubensousa/dpadrecyclerview/DpadRecyclerView;)V

    return-void
.end method

.method public final setMinEdgeFadingLength(I)V
    .locals 1

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->fadingEdge:Lcom/rubensousa/dpadrecyclerview/FadingEdge;

    .line 546
    invoke-virtual {v0, p1, p0}, Lcom/rubensousa/dpadrecyclerview/FadingEdge;->setMinEdgeFadingLength(ILcom/rubensousa/dpadrecyclerview/DpadRecyclerView;)V

    return-void
.end method

.method public final setMinEdgeFadingOffset(I)V
    .locals 1

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->fadingEdge:Lcom/rubensousa/dpadrecyclerview/FadingEdge;

    .line 559
    invoke-virtual {v0, p1, p0}, Lcom/rubensousa/dpadrecyclerview/FadingEdge;->setMinEdgeFadingOffset(ILcom/rubensousa/dpadrecyclerview/DpadRecyclerView;)V

    return-void
.end method

.method public final setOnChildLaidOutListener(Lcom/rubensousa/dpadrecyclerview/OnChildLaidOutListener;)V
    .locals 0

    .line 1205
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->setOnChildLaidOutListener(Lcom/rubensousa/dpadrecyclerview/OnChildLaidOutListener;)V

    return-void
.end method

.method public final setOnKeyInterceptListener(Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnKeyInterceptListener;)V
    .locals 0

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->keyInterceptListener:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnKeyInterceptListener;

    return-void
.end method

.method public final setOnMotionInterceptListener(Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnMotionInterceptListener;)V
    .locals 0

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->motionInterceptListener:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnMotionInterceptListener;

    return-void
.end method

.method public final setOnTouchInterceptListener(Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnTouchInterceptListener;)V
    .locals 0

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->touchInterceptListener:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnTouchInterceptListener;

    return-void
.end method

.method public final setOnUnhandledKeyListener(Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnUnhandledKeyListener;)V
    .locals 0

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->unhandledKeyListener:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnUnhandledKeyListener;

    return-void
.end method

.method public final setOrientation(I)V
    .locals 0

    .line 775
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->setOrientation(I)V

    return-void
.end method

.method public final setParentAlignment(Lcom/rubensousa/dpadrecyclerview/ParentAlignment;Z)V
    .locals 1

    const-string v0, "alignment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 829
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->setParentAlignment(Lcom/rubensousa/dpadrecyclerview/ParentAlignment;Z)V

    return-void
.end method

.method public final setRecycleChildrenOnDetach(Z)V
    .locals 0

    .line 489
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->setRecycleChildrenOnDetach(Z)V

    return-void
.end method

.method public final setReverseLayout(Z)V
    .locals 0

    .line 797
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->setReverseLayout(Z)V

    return-void
.end method

.method public final setScrollEnabled(Z)V
    .locals 0

    .line 956
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->setScrollEnabled(Z)V

    return-void
.end method

.method public final setSelectedPosition(I)V
    .locals 1

    .line 969
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->selectPosition(IIZ)V

    return-void
.end method

.method public final setSelectedPosition(ILcom/rubensousa/dpadrecyclerview/ViewHolderTask;)V
    .locals 1

    const-string v0, "task"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->viewHolderTaskExecutor:Lcom/rubensousa/dpadrecyclerview/ViewHolderTaskExecutor;

    .line 979
    invoke-virtual {v0, p1, p2}, Lcom/rubensousa/dpadrecyclerview/ViewHolderTaskExecutor;->schedule(ILcom/rubensousa/dpadrecyclerview/ViewHolderTask;)V

    .line 980
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->selectPosition(IIZ)V

    return-void
.end method

.method public final setSelectedPositionSmooth(I)V
    .locals 2

    .line 988
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->selectPosition(IIZ)V

    return-void
.end method

.method public final setSelectedPositionSmooth(ILcom/rubensousa/dpadrecyclerview/ViewHolderTask;)V
    .locals 1

    const-string v0, "task"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->viewHolderTaskExecutor:Lcom/rubensousa/dpadrecyclerview/ViewHolderTaskExecutor;

    .line 998
    invoke-virtual {v0, p1, p2}, Lcom/rubensousa/dpadrecyclerview/ViewHolderTaskExecutor;->schedule(ILcom/rubensousa/dpadrecyclerview/ViewHolderTask;)V

    .line 999
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->selectPosition(IIZ)V

    return-void
.end method

.method public final setSelectedSubPosition(I)V
    .locals 1

    .line 1028
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->selectSubPosition(IZ)V

    return-void
.end method

.method public final setSelectedSubPosition(II)V
    .locals 1

    .line 1008
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->selectPosition(IIZ)V

    return-void
.end method

.method public final setSelectedSubPosition(IILcom/rubensousa/dpadrecyclerview/ViewHolderTask;)V
    .locals 1

    const-string v0, "task"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->viewHolderTaskExecutor:Lcom/rubensousa/dpadrecyclerview/ViewHolderTaskExecutor;

    .line 1019
    invoke-virtual {v0, p1, p2, p3}, Lcom/rubensousa/dpadrecyclerview/ViewHolderTaskExecutor;->schedule(IILcom/rubensousa/dpadrecyclerview/ViewHolderTask;)V

    .line 1020
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->selectPosition(IIZ)V

    return-void
.end method

.method public final setSelectedSubPositionSmooth(I)V
    .locals 1

    .line 1036
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->selectSubPosition(IZ)V

    return-void
.end method

.method public final setSelectedSubPositionSmooth(II)V
    .locals 1

    .line 1045
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->selectPosition(IIZ)V

    return-void
.end method

.method public final setSelectedSubPositionSmooth(IILcom/rubensousa/dpadrecyclerview/ViewHolderTask;)V
    .locals 1

    const-string v0, "task"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->viewHolderTaskExecutor:Lcom/rubensousa/dpadrecyclerview/ViewHolderTaskExecutor;

    .line 1056
    invoke-virtual {v0, p1, p2, p3}, Lcom/rubensousa/dpadrecyclerview/ViewHolderTaskExecutor;->schedule(IILcom/rubensousa/dpadrecyclerview/ViewHolderTask;)V

    .line 1057
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->selectPosition(IIZ)V

    return-void
.end method

.method public final setSmoothFocusChangesEnabled(Z)V
    .locals 0

    .line 869
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->setSmoothFocusChangesEnabled(Z)V

    return-void
.end method

.method public final setSmoothScrollBehavior(Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$SmoothScrollByBehavior;)V
    .locals 0

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->smoothScrollByBehavior:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$SmoothScrollByBehavior;

    return-void
.end method

.method public final setSmoothScrollMaxPendingAlignments(I)V
    .locals 0

    .line 889
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->setMaxPendingAlignments(I)V

    return-void
.end method

.method public final setSmoothScrollMaxPendingMoves(I)V
    .locals 0

    .line 915
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->setMaxPendingMoves(I)V

    return-void
.end method

.method public final setSmoothScrollSpeedFactor(F)V
    .locals 0

    .line 936
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->setSmoothScrollSpeedFactor(F)V

    return-void
.end method

.method public final setSpanCount(I)V
    .locals 0

    .line 762
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->setSpanCount(I)V

    return-void
.end method

.method public final setSpanSizeLookup(Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;)V
    .locals 1

    const-string v0, "spanSizeLookup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 748
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requireLayout()Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->setSpanSizeLookup(Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;)V

    return-void
.end method

.method public final setWillNotDraw(Z)V
    .locals 0

    .line 276
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setWillNotDraw(Z)V

    return-void
.end method

.method public final smoothScrollBy(II)V
    .locals 3

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->smoothScrollByBehavior:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$SmoothScrollByBehavior;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 388
    invoke-interface {v0, p1, p2}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$SmoothScrollByBehavior;->configSmoothScrollByInterpolator(II)Landroid/view/animation/Interpolator;

    move-result-object v2

    .line 389
    invoke-interface {v0, p1, p2}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$SmoothScrollByBehavior;->configSmoothScrollByDuration(II)I

    move-result v0

    .line 386
    invoke-virtual {p0, p1, p2, v2, v0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;I)V

    .line 385
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    const/high16 v0, -0x80000000

    .line 391
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;I)V

    :cond_1
    return-void
.end method

.method public final smoothScrollBy(IILandroid/view/animation/Interpolator;)V
    .locals 1

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->smoothScrollByBehavior:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$SmoothScrollByBehavior;

    if-eqz v0, :cond_0

    .line 399
    invoke-interface {v0, p1, p2}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$SmoothScrollByBehavior;->configSmoothScrollByDuration(II)I

    move-result v0

    .line 396
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;I)V

    .line 395
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/high16 v0, -0x80000000

    .line 401
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;I)V

    :cond_1
    return-void
.end method

.method public startNestedScroll(II)Z
    .locals 0

    .line 405
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    move-result p1

    if-nez p2, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->startedTouchScroll:Z

    :cond_0
    return p1
.end method

.method public stopNestedScroll()V
    .locals 1

    .line 413
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->startedTouchScroll:Z

    return-void
.end method
