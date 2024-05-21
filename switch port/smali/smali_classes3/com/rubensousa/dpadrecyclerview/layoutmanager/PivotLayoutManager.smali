.class public final Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "PivotLayoutManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a8\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#J\u000e\u0010$\u001a\u00020!2\u0006\u0010\"\u001a\u00020%J\u0008\u0010&\u001a\u00020\u000cH\u0016J\u0008\u0010\'\u001a\u00020\u000cH\u0016J\u0012\u0010(\u001a\u00020\u000c2\u0008\u0010)\u001a\u0004\u0018\u00010*H\u0016J\u0006\u0010+\u001a\u00020!J\u0006\u0010,\u001a\u00020!J(\u0010-\u001a\u00020!2\u0006\u0010.\u001a\u00020\u00112\u0006\u0010/\u001a\u00020\u00112\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u000203H\u0016J\u0018\u00104\u001a\u00020!2\u0006\u00105\u001a\u00020\u00112\u0006\u00102\u001a\u000203H\u0016J\u0010\u00106\u001a\u00020\u00112\u0006\u00100\u001a\u000201H\u0016J\u0010\u00107\u001a\u00020\u00112\u0006\u00100\u001a\u000201H\u0016J\u0010\u00108\u001a\u00020\u00112\u0006\u00100\u001a\u000201H\u0016J\u0010\u00109\u001a\u00020\u00112\u0006\u00100\u001a\u000201H\u0002J\u0010\u0010:\u001a\u00020\u00112\u0006\u00100\u001a\u000201H\u0002J\u0010\u0010;\u001a\u00020\u00112\u0006\u00100\u001a\u000201H\u0002J\u0010\u0010<\u001a\u00020\u00112\u0006\u00100\u001a\u000201H\u0016J\u0010\u0010=\u001a\u00020\u00112\u0006\u00100\u001a\u000201H\u0016J\u0010\u0010>\u001a\u00020\u00112\u0006\u00100\u001a\u000201H\u0016J\u0006\u0010?\u001a\u00020\u0011J\u0006\u0010@\u001a\u00020\u0011J\u0006\u0010A\u001a\u00020\u0011J\u0006\u0010B\u001a\u00020\u0011J\u0008\u0010C\u001a\u00020*H\u0016J\u0018\u0010D\u001a\u00020*2\u0006\u0010E\u001a\u00020F2\u0006\u0010G\u001a\u00020HH\u0016J\u0010\u0010D\u001a\u00020*2\u0006\u0010)\u001a\u00020IH\u0016J\u0006\u0010J\u001a\u00020KJ\u001c\u0010L\u001a\u00020\u00112\n\u0010M\u001a\u00060NR\u00020\u001b2\u0006\u00100\u001a\u000201H\u0016J\r\u0010O\u001a\u00020\u0008H\u0000\u00a2\u0006\u0002\u0008PJ\u0006\u0010Q\u001a\u00020\u0011J\u0006\u0010R\u001a\u00020SJ\u0006\u0010T\u001a\u00020UJ\u0006\u0010V\u001a\u00020\u0011J\u0006\u0010W\u001a\u00020\u0011J\u0006\u0010X\u001a\u00020YJ\u001c\u0010Z\u001a\u00020\u00112\n\u0010M\u001a\u00060NR\u00020\u001b2\u0006\u00100\u001a\u000201H\u0016J\u0006\u0010[\u001a\u00020\u0011J\u0006\u0010\\\u001a\u00020\u0011J\u0006\u0010]\u001a\u00020^J\u0006\u0010_\u001a\u00020\u0011J\u0006\u0010`\u001a\u00020aJ\u0008\u0010b\u001a\u00020\u000cH\u0016J\u0006\u0010c\u001a\u00020\u000cJ\u0006\u0010d\u001a\u00020\u000cJ$\u0010e\u001a\u00020!2\u000c\u0010f\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010g2\u000c\u0010h\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010gH\u0016J8\u0010i\u001a\u00020\u000c2\u0006\u0010\u001a\u001a\u00020\u001b2\u0016\u0010j\u001a\u0012\u0012\u0004\u0012\u00020l0kj\u0008\u0012\u0004\u0012\u00020l`m2\u0006\u0010n\u001a\u00020\u00112\u0006\u0010o\u001a\u00020\u0011H\u0016J\u0010\u0010p\u001a\u00020!2\u0006\u0010q\u001a\u00020\u001bH\u0016J\u001c\u0010r\u001a\u00020!2\u0006\u0010q\u001a\u00020\u001b2\n\u0010M\u001a\u00060NR\u00020\u001bH\u0016J\u0015\u0010s\u001a\u00020!2\u0006\u0010t\u001a\u00020\u000cH\u0000\u00a2\u0006\u0002\u0008uJ$\u0010v\u001a\u00020!2\n\u0010M\u001a\u00060NR\u00020\u001b2\u0006\u00100\u001a\u0002012\u0006\u0010w\u001a\u00020xH\u0016J,\u0010y\u001a\u00020!2\n\u0010M\u001a\u00060NR\u00020\u001b2\u0006\u00100\u001a\u0002012\u0006\u0010z\u001a\u00020l2\u0006\u0010w\u001a\u00020xH\u0016J\u001a\u0010{\u001a\u0004\u0018\u00010l2\u0006\u0010|\u001a\u00020l2\u0006\u0010n\u001a\u00020\u0011H\u0016J \u0010}\u001a\u00020!2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010~\u001a\u00020\u00112\u0006\u0010\u007f\u001a\u00020\u0011H\u0016J\u0011\u0010\u0080\u0001\u001a\u00020!2\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J+\u0010\u0081\u0001\u001a\u00020!2\u0006\u0010\u001a\u001a\u00020\u001b2\u0007\u0010\u0082\u0001\u001a\u00020\u00112\u0007\u0010\u0083\u0001\u001a\u00020\u00112\u0006\u0010\u007f\u001a\u00020\u0011H\u0016J!\u0010\u0084\u0001\u001a\u00020!2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010~\u001a\u00020\u00112\u0006\u0010\u007f\u001a\u00020\u0011H\u0016J\u001d\u0010\u0085\u0001\u001a\u00020!2\n\u0010M\u001a\u00060NR\u00020\u001b2\u0006\u00100\u001a\u000201H\u0016J\u0011\u0010\u0086\u0001\u001a\u00020!2\u0006\u00100\u001a\u000201H\u0016J-\u0010\u0087\u0001\u001a\u00020\u000c2\u0007\u0010\u0088\u0001\u001a\u00020\u001b2\u0006\u00100\u001a\u0002012\u0007\u0010\u0089\u0001\u001a\u00020l2\u0008\u0010|\u001a\u0004\u0018\u00010lH\u0016J\u001b\u0010\u008a\u0001\u001a\u00020\u000c2\u0006\u0010n\u001a\u00020\u00112\n\u0010\u008b\u0001\u001a\u0005\u0018\u00010\u008c\u0001J\u0014\u0010\u008d\u0001\u001a\u00020!2\t\u00100\u001a\u0005\u0018\u00010\u008e\u0001H\u0016J\u0017\u0010\u008f\u0001\u001a\u00020!2\u0006\u0010\u0010\u001a\u00020\u0011H\u0000\u00a2\u0006\u0003\u0008\u0090\u0001J\n\u0010\u0091\u0001\u001a\u00030\u008e\u0001H\u0016J2\u0010\u0092\u0001\u001a\u00020\u000c2\n\u0010M\u001a\u00060NR\u00020\u001b2\u0006\u00100\u001a\u0002012\u0007\u0010\u0093\u0001\u001a\u00020\u00112\n\u0010\u0094\u0001\u001a\u0005\u0018\u00010\u0095\u0001H\u0016J\u000f\u0010\u0096\u0001\u001a\u00020!H\u0000\u00a2\u0006\u0003\u0008\u0097\u0001J\u000f\u0010\u0098\u0001\u001a\u00020!2\u0006\u0010\"\u001a\u00020#J\u000f\u0010\u0099\u0001\u001a\u00020!2\u0006\u0010\"\u001a\u00020%J.\u0010\u009a\u0001\u001a\u00020\u000c2\u0007\u0010\u0088\u0001\u001a\u00020\u001b2\u0007\u0010\u0089\u0001\u001a\u00020l2\u0008\u0010\u009b\u0001\u001a\u00030\u008c\u00012\u0007\u0010\u009c\u0001\u001a\u00020\u000cH\u0016J%\u0010\u009d\u0001\u001a\u00020\u00112\u0006\u0010.\u001a\u00020\u00112\n\u0010M\u001a\u00060NR\u00020\u001b2\u0006\u00100\u001a\u000201H\u0016J\u0012\u0010\u009e\u0001\u001a\u00020!2\u0007\u0010\u009f\u0001\u001a\u00020\u0011H\u0016J\u0012\u0010\u00a0\u0001\u001a\u00020!2\u0007\u0010\u00a1\u0001\u001a\u00020\u000cH\u0002J%\u0010\u00a2\u0001\u001a\u00020\u00112\u0006\u0010/\u001a\u00020\u00112\n\u0010M\u001a\u00060NR\u00020\u001b2\u0006\u00100\u001a\u000201H\u0016J\"\u0010\u00a3\u0001\u001a\u00020!2\u0007\u0010\u009f\u0001\u001a\u00020\u00112\u0007\u0010\u00a4\u0001\u001a\u00020\u00112\u0007\u0010\u00a1\u0001\u001a\u00020\u000cJ\u0019\u0010\u00a5\u0001\u001a\u00020!2\u0007\u0010\u00a4\u0001\u001a\u00020\u00112\u0007\u0010\u00a1\u0001\u001a\u00020\u000cJ\"\u0010\u00a6\u0001\u001a\u00020!2\u0007\u0010\u0088\u0001\u001a\u00020Y2\u0007\u0010\u0089\u0001\u001a\u00020K2\u0007\u0010\u00a1\u0001\u001a\u00020\u000cJ\u0019\u0010\u00a7\u0001\u001a\u00020!2\u0007\u0010\u00a8\u0001\u001a\u00020K2\u0007\u0010\u00a1\u0001\u001a\u00020\u000cJ\u0010\u0010\u00a9\u0001\u001a\u00020!2\u0007\u0010\u00aa\u0001\u001a\u00020\u000cJ\u0013\u0010\u00ab\u0001\u001a\u00020!2\n\u0010\u00ac\u0001\u001a\u0005\u0018\u00010\u00ad\u0001J\u0019\u0010\u00ae\u0001\u001a\u00020!2\u0007\u0010\u00af\u0001\u001a\u00020\u000c2\u0007\u0010\u00b0\u0001\u001a\u00020\u000cJ\u0019\u0010\u00b1\u0001\u001a\u00020!2\u0007\u0010\u00af\u0001\u001a\u00020\u000c2\u0007\u0010\u00b0\u0001\u001a\u00020\u000cJ\u0010\u0010\u00b2\u0001\u001a\u00020!2\u0007\u0010\u00b3\u0001\u001a\u00020\u000cJ\u0010\u0010\u00b4\u0001\u001a\u00020!2\u0007\u0010\u00b3\u0001\u001a\u00020\u000cJ\u000f\u0010\u00b5\u0001\u001a\u00020!2\u0006\u0010n\u001a\u00020SJ\u0010\u0010\u00b6\u0001\u001a\u00020!2\u0007\u0010\u00b7\u0001\u001a\u00020\u0011J\u0010\u0010\u00b8\u0001\u001a\u00020!2\u0007\u0010\u00aa\u0001\u001a\u00020\u000cJ\u0010\u0010\u00b9\u0001\u001a\u00020!2\u0007\u0010\u00ba\u0001\u001a\u00020UJ\u0010\u0010\u00bb\u0001\u001a\u00020!2\u0007\u0010\u00bc\u0001\u001a\u00020\u0011J\u0010\u0010\u00bd\u0001\u001a\u00020!2\u0007\u0010\u00bc\u0001\u001a\u00020\u0011J\u0012\u0010\u00be\u0001\u001a\u00020!2\t\u0010\"\u001a\u0005\u0018\u00010\u00bf\u0001J\u0010\u0010\u00c0\u0001\u001a\u00020!2\u0007\u0010\u00c1\u0001\u001a\u00020\u0011J\u0019\u0010\u00c2\u0001\u001a\u00020!2\u0007\u0010\u00a8\u0001\u001a\u00020Y2\u0007\u0010\u00a1\u0001\u001a\u00020\u000cJ\u0010\u0010\u00c3\u0001\u001a\u00020!2\u0007\u0010\u00c4\u0001\u001a\u00020\u000cJ\u0010\u0010\u00c5\u0001\u001a\u00020!2\u0007\u0010\u00c6\u0001\u001a\u00020\u000cJ\u0010\u0010\u00c7\u0001\u001a\u00020!2\u0007\u0010\u00aa\u0001\u001a\u00020\u000cJ\u0018\u0010\u00c8\u0001\u001a\u00020!2\u0007\u0010\u00c9\u0001\u001a\u00020\u000cH\u0000\u00a2\u0006\u0003\u0008\u00ca\u0001J\u0010\u0010\u00cb\u0001\u001a\u00020!2\u0007\u0010\u00cc\u0001\u001a\u00020\u000cJ\u0010\u0010\u00cd\u0001\u001a\u00020!2\u0007\u0010\u00ce\u0001\u001a\u00020^J\u0010\u0010\u00cf\u0001\u001a\u00020!2\u0007\u0010\u00d0\u0001\u001a\u00020\u0011J\u0010\u0010\u00d1\u0001\u001a\u00020!2\u0007\u0010\u00d2\u0001\u001a\u00020aJ\"\u0010\u00d3\u0001\u001a\u00020!2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u00100\u001a\u0002012\u0007\u0010\u009f\u0001\u001a\u00020\u0011H\u0016J\u0013\u0010\u00d4\u0001\u001a\u00020!2\u0008\u0010\u00d5\u0001\u001a\u00030\u00d6\u0001H\u0016J\t\u0010\u00d7\u0001\u001a\u00020\u000cH\u0016J\u001a\u0010\u00d8\u0001\u001a\u00020!2\t\u0010\u001a\u001a\u0005\u0018\u00010\u00d9\u0001H\u0000\u00a2\u0006\u0003\u0008\u00da\u0001R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00db\u0001"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;",
        "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;",
        "properties",
        "Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;",
        "(Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;)V",
        "accessibilityHelper",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;",
        "configuration",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;",
        "focusDispatcher",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher;",
        "hadFocusBeforeLayout",
        "",
        "isScrollingFromTouchEvent",
        "layoutAlignment",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;",
        "layoutDirection",
        "",
        "layoutInfo",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;",
        "pivotLayout",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;",
        "pivotSelector",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;",
        "prefetchCollector",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutPrefetchCollector;",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "scroller",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;",
        "spanFocusFinder",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;",
        "addOnLayoutCompletedListener",
        "",
        "listener",
        "Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnLayoutCompletedListener;",
        "addOnViewHolderSelectedListener",
        "Lcom/rubensousa/dpadrecyclerview/OnViewHolderSelectedListener;",
        "canScrollHorizontally",
        "canScrollVertically",
        "checkLayoutParams",
        "layoutParams",
        "Landroidx/recyclerview/widget/RecyclerView$LayoutParams;",
        "clearOnLayoutCompletedListeners",
        "clearOnViewHolderSelectedListeners",
        "collectAdjacentPrefetchPositions",
        "dx",
        "dy",
        "state",
        "Landroidx/recyclerview/widget/RecyclerView$State;",
        "layoutPrefetchRegistry",
        "Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;",
        "collectInitialPrefetchPositions",
        "adapterItemCount",
        "computeHorizontalScrollExtent",
        "computeHorizontalScrollOffset",
        "computeHorizontalScrollRange",
        "computeScrollExtent",
        "computeScrollOffset",
        "computeScrollRange",
        "computeVerticalScrollExtent",
        "computeVerticalScrollOffset",
        "computeVerticalScrollRange",
        "findFirstCompletelyVisibleItemPosition",
        "findFirstVisibleItemPosition",
        "findLastCompletelyVisibleItemPosition",
        "findLastVisibleItemPosition",
        "generateDefaultLayoutParams",
        "generateLayoutParams",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "Landroid/view/ViewGroup$LayoutParams;",
        "getChildAlignment",
        "Lcom/rubensousa/dpadrecyclerview/ChildAlignment;",
        "getColumnCountForAccessibility",
        "recycler",
        "Landroidx/recyclerview/widget/RecyclerView$Recycler;",
        "getConfig",
        "getConfig$dpadrecyclerview_release",
        "getCurrentSubPositions",
        "getFocusableDirection",
        "Lcom/rubensousa/dpadrecyclerview/FocusableDirection;",
        "getLoopDirection",
        "Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;",
        "getMaxPendingAlignments",
        "getMaxPendingMoves",
        "getParentAlignment",
        "Lcom/rubensousa/dpadrecyclerview/ParentAlignment;",
        "getRowCountForAccessibility",
        "getSelectedPosition",
        "getSelectedSubPosition",
        "getSmoothScrollSpeedFactor",
        "",
        "getSpanCount",
        "getSpanSizeLookup",
        "Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;",
        "isAutoMeasureEnabled",
        "isFocusSearchDisabled",
        "isLayoutEnabled",
        "onAdapterChanged",
        "oldAdapter",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "newAdapter",
        "onAddFocusables",
        "views",
        "Ljava/util/ArrayList;",
        "Landroid/view/View;",
        "Lkotlin/collections/ArrayList;",
        "direction",
        "focusableMode",
        "onAttachedToWindow",
        "view",
        "onDetachedFromWindow",
        "onFocusChanged",
        "gainFocus",
        "onFocusChanged$dpadrecyclerview_release",
        "onInitializeAccessibilityNodeInfo",
        "info",
        "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;",
        "onInitializeAccessibilityNodeInfoForItem",
        "host",
        "onInterceptFocusSearch",
        "focused",
        "onItemsAdded",
        "positionStart",
        "itemCount",
        "onItemsChanged",
        "onItemsMoved",
        "from",
        "to",
        "onItemsRemoved",
        "onLayoutChildren",
        "onLayoutCompleted",
        "onRequestChildFocus",
        "parent",
        "child",
        "onRequestFocusInDescendants",
        "previouslyFocusedRect",
        "Landroid/graphics/Rect;",
        "onRestoreInstanceState",
        "Landroid/os/Parcelable;",
        "onRtlPropertiesChanged",
        "onRtlPropertiesChanged$dpadrecyclerview_release",
        "onSaveInstanceState",
        "performAccessibilityAction",
        "action",
        "args",
        "Landroid/os/Bundle;",
        "removeCurrentViewHolderSelection",
        "removeCurrentViewHolderSelection$dpadrecyclerview_release",
        "removeOnLayoutCompletedListener",
        "removeOnViewHolderSelectedListener",
        "requestChildRectangleOnScreen",
        "rect",
        "immediate",
        "scrollHorizontallyBy",
        "scrollToPosition",
        "position",
        "scrollToSelectedPositionOrRequestLayout",
        "smooth",
        "scrollVerticallyBy",
        "selectPosition",
        "subPosition",
        "selectSubPosition",
        "setAlignments",
        "setChildAlignment",
        "alignment",
        "setChildrenDrawingOrderEnabled",
        "enabled",
        "setExtraLayoutSpaceStrategy",
        "strategy",
        "Lcom/rubensousa/dpadrecyclerview/ExtraLayoutSpaceStrategy;",
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
        "setLayoutEnabled",
        "setLoopDirection",
        "loopDirection",
        "setMaxPendingAlignments",
        "max",
        "setMaxPendingMoves",
        "setOnChildLaidOutListener",
        "Lcom/rubensousa/dpadrecyclerview/OnChildLaidOutListener;",
        "setOrientation",
        "orientation",
        "setParentAlignment",
        "setRecycleChildrenOnDetach",
        "recycle",
        "setReverseLayout",
        "reverseLayout",
        "setScrollEnabled",
        "setScrollingFromTouchEvent",
        "isTouching",
        "setScrollingFromTouchEvent$dpadrecyclerview_release",
        "setSmoothFocusChangesEnabled",
        "isEnabled",
        "setSmoothScrollSpeedFactor",
        "speedFactor",
        "setSpanCount",
        "spanCount",
        "setSpanSizeLookup",
        "spanSizeLookup",
        "smoothScrollToPosition",
        "startSmoothScroll",
        "smoothScroller",
        "Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;",
        "supportsPredictiveItemAnimations",
        "updateRecyclerView",
        "Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;",
        "updateRecyclerView$dpadrecyclerview_release",
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


# instance fields
.field private final accessibilityHelper:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;

.field private final configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

.field private final focusDispatcher:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher;

.field private hadFocusBeforeLayout:Z

.field private isScrollingFromTouchEvent:Z

.field private final layoutAlignment:Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;

.field private layoutDirection:I

.field private final layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

.field private final pivotLayout:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;

.field private final pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

.field private final prefetchCollector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutPrefetchCollector;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final scroller:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;

.field private final spanFocusFinder:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;)V
    .locals 14

    const-string v0, "properties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    .line 54
    new-instance v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    invoke-direct {v0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;)V

    iput-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 55
    new-instance p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-object v8, p0

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-direct {p1, v8, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;)V

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 56
    new-instance v9, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    invoke-direct {v9, v8, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;)V

    iput-object v9, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    .line 57
    new-instance v10, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;

    invoke-direct {v10, v8, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;)V

    iput-object v10, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->layoutAlignment:Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;

    .line 58
    new-instance v11, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;

    invoke-direct {v11, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;-><init>(Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;)V

    iput-object v11, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->spanFocusFinder:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;

    .line 59
    new-instance v12, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;

    move-object v1, v12

    move-object v2, v8

    move-object v3, p1

    move-object v4, v10

    move-object v5, v0

    move-object v6, v9

    move-object v7, v11

    invoke-direct/range {v1 .. v7}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;)V

    iput-object v12, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->scroller:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;

    .line 62
    new-instance v13, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;

    move-object v1, v13

    move-object v3, v10

    move-object v4, v0

    move-object v5, v9

    move-object v6, v12

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;)V

    iput-object v13, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->pivotLayout:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;

    .line 65
    new-instance v1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutPrefetchCollector;

    invoke-direct {v1, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutPrefetchCollector;-><init>(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;)V

    iput-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->prefetchCollector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutPrefetchCollector;

    .line 67
    new-instance v10, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher;

    move-object v1, v10

    move-object v3, v0

    move-object v4, v12

    move-object v5, p1

    move-object v6, v9

    move-object v7, v11

    invoke-direct/range {v1 .. v7}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;)V

    iput-object v10, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->focusDispatcher:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher;

    .line 70
    new-instance v7, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;

    move-object v1, v7

    move-object v4, p1

    move-object v5, v9

    move-object v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;)V

    iput-object v7, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->accessibilityHelper:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;

    return-void
.end method

.method private final computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 7

    .line 214
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 217
    :cond_0
    sget-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/DpadScrollbarHelper;->INSTANCE:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/DpadScrollbarHelper;

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 219
    invoke-virtual {v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getOrientationHelper()Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v2

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 220
    invoke-virtual {v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->findFirstVisibleChild()Landroid/view/View;

    move-result-object v3

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 221
    invoke-virtual {v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->findLastVisibleChild()Landroid/view/View;

    move-result-object v4

    .line 222
    move-object v5, p0

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v6, 0x1

    move-object v1, p1

    .line 217
    invoke-virtual/range {v0 .. v6}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/DpadScrollbarHelper;->computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Z)I

    move-result p0

    return p0
.end method

.method private final computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 8

    .line 199
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 202
    :cond_0
    sget-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/DpadScrollbarHelper;->INSTANCE:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/DpadScrollbarHelper;

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 204
    invoke-virtual {v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getOrientationHelper()Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v2

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 205
    invoke-virtual {v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->findFirstVisibleChild()Landroid/view/View;

    move-result-object v3

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 206
    invoke-virtual {v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->findLastVisibleChild()Landroid/view/View;

    move-result-object v4

    .line 207
    move-object v5, p0

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v6, 0x1

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 209
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->getReverseLayout()Z

    move-result v7

    move-object v1, p1

    .line 202
    invoke-virtual/range {v0 .. v7}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/DpadScrollbarHelper;->computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;ZZ)I

    move-result p0

    return p0
.end method

.method private final computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 7

    .line 228
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 231
    :cond_0
    sget-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/DpadScrollbarHelper;->INSTANCE:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/DpadScrollbarHelper;

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 233
    invoke-virtual {v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getOrientationHelper()Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v2

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 234
    invoke-virtual {v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->findFirstVisibleChild()Landroid/view/View;

    move-result-object v3

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 235
    invoke-virtual {v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->findLastVisibleChild()Landroid/view/View;

    move-result-object v4

    .line 236
    move-object v5, p0

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v6, 0x1

    move-object v1, p1

    .line 231
    invoke-virtual/range {v0 .. v6}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/DpadScrollbarHelper;->computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Z)I

    move-result p0

    return p0
.end method

.method private final scrollToSelectedPositionOrRequestLayout(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->scroller:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 645
    invoke-virtual {p0, p1, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->scrollToSelectedPosition(ZZ)V

    goto :goto_0

    .line 647
    :cond_0
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->requestLayout()V

    :goto_0
    return-void
.end method


# virtual methods
.method public final addOnLayoutCompletedListener(Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnLayoutCompletedListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->pivotLayout:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;

    .line 630
    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->addOnLayoutCompletedListener(Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnLayoutCompletedListener;)V

    return-void
.end method

.method public final addOnViewHolderSelectedListener(Lcom/rubensousa/dpadrecyclerview/OnViewHolderSelectedListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    .line 582
    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->addOnViewHolderSelectedListener(Lcom/rubensousa/dpadrecyclerview/OnViewHolderSelectedListener;)V

    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 116
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->isHorizontal()Z

    move-result p0

    return p0
.end method

.method public canScrollVertically()Z
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 118
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->isVertical()Z

    move-result p0

    return p0
.end method

.method public checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 0

    .line 78
    instance-of p0, p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;

    return p0
.end method

.method public final clearOnLayoutCompletedListeners()V
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->pivotLayout:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;

    .line 640
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->clearOnLayoutCompletedListeners()V

    return-void
.end method

.method public final clearOnViewHolderSelectedListeners()V
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    .line 590
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->clearOnViewHolderSelectedListeners()V

    return-void
.end method

.method public collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutPrefetchRegistry"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->prefetchCollector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutPrefetchCollector;

    .line 147
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutPrefetchCollector;->collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    return-void
.end method

.method public collectInitialPrefetchPositions(ILandroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 2

    const-string v0, "layoutPrefetchRegistry"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->prefetchCollector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutPrefetchCollector;

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 156
    invoke-virtual {v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->getInitialPrefetchItemCount()I

    move-result v1

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    .line 157
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->getPosition()I

    move-result p0

    .line 154
    invoke-virtual {v0, p1, v1, p0, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutPrefetchCollector;->collectInitialPrefetchPositions(IIILandroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    return-void
.end method

.method public computeHorizontalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    invoke-direct {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-direct {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    invoke-direct {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    invoke-direct {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-direct {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    invoke-direct {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public final findFirstCompletelyVisibleItemPosition()I
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 612
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->findFirstCompletelyVisiblePosition()I

    move-result p0

    return p0
.end method

.method public final findFirstVisibleItemPosition()I
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 608
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->findFirstVisiblePosition()I

    move-result p0

    return p0
.end method

.method public final findLastCompletelyVisibleItemPosition()I
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 620
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->findLastCompletelyVisiblePosition()I

    move-result p0

    return p0
.end method

.method public final findLastVisibleItemPosition()I
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 616
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->findLastVisiblePosition()I

    move-result p0

    return p0
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 3

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 98
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->getSpanCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x2

    if-ne v0, v1, :cond_0

    .line 99
    new-instance p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;

    invoke-direct {p0, v2, v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;-><init>(II)V

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 103
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->isVertical()Z

    move-result p0

    const/4 v0, -0x1

    if-eqz p0, :cond_1

    .line 104
    new-instance p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;

    invoke-direct {p0, v0, v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;-><init>(II)V

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    goto :goto_0

    .line 109
    :cond_1
    new-instance p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;

    invoke-direct {p0, v2, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;-><init>(II)V

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    :goto_0
    return-object p0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "attrs"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    new-instance p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;

    invoke-direct {p0, p1, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    return-object p0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 0

    const-string p0, "layoutParams"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    instance-of p0, p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;

    if-eqz p0, :cond_0

    new-instance p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;

    check-cast p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;

    invoke-direct {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;-><init>(Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;)V

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    goto :goto_0

    .line 91
    :cond_0
    instance-of p0, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz p0, :cond_1

    new-instance p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    goto :goto_0

    .line 92
    :cond_1
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_2

    new-instance p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    goto :goto_0

    .line 93
    :cond_2
    new-instance p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;

    invoke-direct {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    :goto_0
    return-object p0
.end method

.method public final getChildAlignment()Lcom/rubensousa/dpadrecyclerview/ChildAlignment;
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->layoutAlignment:Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;

    .line 579
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;->getChildAlignment()Lcom/rubensousa/dpadrecyclerview/ChildAlignment;

    move-result-object p0

    return-object p0
.end method

.method public getColumnCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    const-string v0, "recycler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "state"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->accessibilityHelper:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;

    .line 362
    invoke-virtual {p0, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;->getColumnCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public final getConfig$dpadrecyclerview_release()Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    return-object p0
.end method

.method public final getCurrentSubPositions()I
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    .line 605
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->getCurrentSubPositions()I

    move-result p0

    return p0
.end method

.method public final getFocusableDirection()Lcom/rubensousa/dpadrecyclerview/FocusableDirection;
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 505
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->getFocusableDirection()Lcom/rubensousa/dpadrecyclerview/FocusableDirection;

    move-result-object p0

    return-object p0
.end method

.method public final getLoopDirection()Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 450
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->getLoopDirection()Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;

    move-result-object p0

    return-object p0
.end method

.method public final getMaxPendingAlignments()I
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 524
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->getMaxPendingAlignments()I

    move-result p0

    return p0
.end method

.method public final getMaxPendingMoves()I
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 532
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->getMaxPendingMoves()I

    move-result p0

    return p0
.end method

.method public final getParentAlignment()Lcom/rubensousa/dpadrecyclerview/ParentAlignment;
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->layoutAlignment:Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;

    .line 572
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;->getParentAlignment()Lcom/rubensousa/dpadrecyclerview/ParentAlignment;

    move-result-object p0

    return-object p0
.end method

.method public getRowCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    const-string v0, "recycler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "state"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->accessibilityHelper:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;

    .line 355
    invoke-virtual {p0, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;->getRowCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public final getSelectedPosition()I
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    .line 601
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->getPosition()I

    move-result p0

    return p0
.end method

.method public final getSelectedSubPosition()I
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    .line 603
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->getSubPosition()I

    move-result p0

    return p0
.end method

.method public final getSmoothScrollSpeedFactor()F
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 539
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->getSmoothScrollSpeedFactor()F

    move-result p0

    return p0
.end method

.method public final getSpanCount()I
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 483
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->getSpanCount()I

    move-result p0

    return p0
.end method

.method public final getSpanSizeLookup()Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 493
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->getSpanSizeLookup()Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;

    move-result-object p0

    return-object p0
.end method

.method public isAutoMeasureEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isFocusSearchDisabled()Z
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 559
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->isFocusSearchDisabled()Z

    move-result p0

    return p0
.end method

.method public final isLayoutEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 441
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->isLayoutEnabled()Z

    move-result p0

    return p0
.end method

.method public onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->pivotLayout:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;

    .line 287
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->reset()V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    .line 288
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->clear()V

    :cond_0
    return-void
.end method

.method public onAddFocusables(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "views"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->focusDispatcher:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher;

    .line 309
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher;->onAddFocusables(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;II)Z

    move-result p0

    return p0
.end method

.method public onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->focusDispatcher:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher;

    .line 336
    invoke-virtual {v0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher;->updateParentRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 337
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->getRecycleChildrenOnDetach()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 338
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recycler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->focusDispatcher:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher;

    .line 344
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher;->clearParentRecyclerView()V

    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 345
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->getRecycleChildrenOnDetach()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 346
    invoke-virtual {p0, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 347
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->clear()V

    :cond_0
    return-void
.end method

.method public final onFocusChanged$dpadrecyclerview_release(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->isScrollingFromTouchEvent:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->focusDispatcher:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher;

    .line 295
    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher;->onFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    const-string v0, "recycler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->accessibilityHelper:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;

    .line 370
    invoke-virtual {p0, p1, p2, p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;->onInitializeAccessibilityNodeInfo(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    const-string v0, "recycler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "state"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "host"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "info"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->accessibilityHelper:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;

    .line 379
    invoke-virtual {p0, p3, p4}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    return-void
.end method

.method public onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 1

    const-string v0, "focused"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->focusDispatcher:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher;

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 300
    invoke-virtual {v0, p0, p1, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher;->onInterceptFocusSearch(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 260
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->getSpanSizeLookup()Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;

    move-result-object p1

    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->invalidateCache()V

    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->pivotLayout:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;

    .line 261
    invoke-virtual {p1, p2, p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->onItemsAdded(II)V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    .line 262
    invoke-virtual {p0, p2, p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->onItemsAdded(II)V

    return-void
.end method

.method public onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 266
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->getSpanSizeLookup()Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;

    move-result-object p1

    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->invalidateCache()V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    .line 267
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->onItemsChanged()V

    return-void
.end method

.method public onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 277
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->getSpanSizeLookup()Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;

    move-result-object p1

    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->invalidateCache()V

    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->pivotLayout:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;

    .line 278
    invoke-virtual {p1, p2, p3, p4}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->onItemsMoved(III)V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    .line 279
    invoke-virtual {p0, p2, p3, p4}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->onItemsMoved(III)V

    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 271
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->getSpanSizeLookup()Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;

    move-result-object p1

    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->invalidateCache()V

    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->pivotLayout:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;

    .line 272
    invoke-virtual {p1, p2, p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->onItemsRemoved(II)V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    .line 273
    invoke-virtual {p0, p2, p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->onItemsRemoved(II)V

    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    const-string v0, "recycler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->hasFocus()Z

    move-result v0

    iput-boolean v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->hadFocusBeforeLayout:Z

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->scroller:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;

    .line 127
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->cancelSmoothScroller()V

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    .line 128
    invoke-virtual {v0, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$State;)V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->pivotLayout:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;

    .line 129
    invoke-virtual {p0, p1, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->pivotLayout:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;

    .line 133
    invoke-virtual {v0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    iget-boolean p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->hadFocusBeforeLayout:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->focusDispatcher:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher;

    .line 135
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher;->focusSelectedView()V

    :cond_0
    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    .line 137
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->onLayoutCompleted()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->hadFocusBeforeLayout:Z

    return-void
.end method

.method public onRequestChildFocus(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "child"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->focusDispatcher:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher;

    .line 323
    invoke-virtual {p0, p1, p3, p4}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher;->onRequestChildFocus(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public final onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->focusDispatcher:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher;

    .line 315
    invoke-virtual {p0, p1, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->pivotLayout:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;

    .line 394
    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public final onRtlPropertiesChanged$dpadrecyclerview_release(I)V
    .locals 1

    iget v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->layoutDirection:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->layoutDirection:I

    .line 402
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->pivotLayout:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;

    .line 390
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method public performAccessibilityAction(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;ILandroid/os/Bundle;)Z
    .locals 0

    const-string p4, "recycler"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "state"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->accessibilityHelper:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 387
    invoke-virtual {p1, p0, p2, p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;->performAccessibilityAction(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)Z

    move-result p0

    return p0
.end method

.method public final removeCurrentViewHolderSelection$dpadrecyclerview_release()V
    .locals 1

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    iget-boolean p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->isScrollingFromTouchEvent:Z

    .line 423
    invoke-virtual {v0, p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->removeCurrentViewHolderSelection(Z)V

    return-void
.end method

.method public final removeOnLayoutCompletedListener(Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnLayoutCompletedListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->pivotLayout:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;

    .line 636
    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->removeOnLayoutCompletedListener(Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnLayoutCompletedListener;)V

    return-void
.end method

.method public final removeOnViewHolderSelectedListener(Lcom/rubensousa/dpadrecyclerview/OnViewHolderSelectedListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    .line 586
    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->removeOnViewHolderSelectedListener(Lcom/rubensousa/dpadrecyclerview/OnViewHolderSelectedListener;)V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 0

    const-string p0, "parent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "child"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "rect"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    const-string v0, "recycler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->pivotLayout:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;

    .line 166
    invoke-virtual {p0, p1, p2, p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public scrollToPosition(I)V
    .locals 3

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->scroller:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 242
    invoke-static {p0, p1, v2, v0, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->scrollToPosition$default(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;IIILjava/lang/Object;)V

    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    const-string v0, "recycler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->pivotLayout:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;

    .line 172
    invoke-virtual {p0, p1, p2, p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public final selectPosition(IIZ)V
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->scroller:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;

    .line 594
    invoke-virtual {p0, p1, p2, p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->scrollToPosition(IIZ)V

    return-void
.end method

.method public final selectSubPosition(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    .line 598
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->selectPosition(IIZ)V

    return-void
.end method

.method public final setAlignments(Lcom/rubensousa/dpadrecyclerview/ParentAlignment;Lcom/rubensousa/dpadrecyclerview/ChildAlignment;Z)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->layoutAlignment:Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;

    .line 562
    invoke-virtual {v0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;->setParentAlignment(Lcom/rubensousa/dpadrecyclerview/ParentAlignment;)V

    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->layoutAlignment:Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;

    .line 563
    invoke-virtual {p1, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;->setChildAlignment(Lcom/rubensousa/dpadrecyclerview/ChildAlignment;)V

    .line 564
    invoke-direct {p0, p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->scrollToSelectedPositionOrRequestLayout(Z)V

    return-void
.end method

.method public final setChildAlignment(Lcom/rubensousa/dpadrecyclerview/ChildAlignment;Z)V
    .locals 1

    const-string v0, "alignment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->layoutAlignment:Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;

    .line 575
    invoke-virtual {v0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;->setChildAlignment(Lcom/rubensousa/dpadrecyclerview/ChildAlignment;)V

    .line 576
    invoke-direct {p0, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->scrollToSelectedPositionOrRequestLayout(Z)V

    return-void
.end method

.method public final setChildrenDrawingOrderEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 427
    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->setChildDrawingOrderEnabled(Z)V

    return-void
.end method

.method public final setExtraLayoutSpaceStrategy(Lcom/rubensousa/dpadrecyclerview/ExtraLayoutSpaceStrategy;)V
    .locals 1

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 496
    invoke-virtual {v0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->setExtraLayoutSpaceStrategy(Lcom/rubensousa/dpadrecyclerview/ExtraLayoutSpaceStrategy;)V

    .line 497
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->requestLayout()V

    return-void
.end method

.method public final setFocusOutAllowed(ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 508
    invoke-virtual {p0, p1, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->setFocusOutAllowed(ZZ)V

    return-void
.end method

.method public final setFocusOutSideAllowed(ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 512
    invoke-virtual {p0, p1, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->setFocusOutSideAllowed(ZZ)V

    return-void
.end method

.method public final setFocusSearchDisabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 552
    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->setFocusSearchDisabled(Z)V

    return-void
.end method

.method public final setFocusSearchEnabledDuringAnimations(Z)V
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 556
    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->setFocusSearchEnabledDuringAnimations(Z)V

    return-void
.end method

.method public final setFocusableDirection(Lcom/rubensousa/dpadrecyclerview/FocusableDirection;)V
    .locals 1

    const-string v0, "direction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 501
    invoke-virtual {v0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->setFocusableDirection(Lcom/rubensousa/dpadrecyclerview/FocusableDirection;)V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->focusDispatcher:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher;

    .line 502
    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher;->updateFocusableDirection(Lcom/rubensousa/dpadrecyclerview/FocusableDirection;)V

    return-void
.end method

.method public final setGravity(I)V
    .locals 1

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 453
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->getGravity()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 454
    invoke-virtual {v0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->setGravity(I)V

    .line 455
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final setLayoutEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 435
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->isLayoutEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 436
    invoke-virtual {v0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->setLayoutEnabled(Z)V

    .line 437
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final setLoopDirection(Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;)V
    .locals 1

    const-string v0, "loopDirection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 444
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->getLoopDirection()Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;

    move-result-object v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 445
    invoke-virtual {v0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->setLoopDirection(Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;)V

    .line 446
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final setMaxPendingAlignments(I)V
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 520
    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->setMaxPendingAlignments(I)V

    return-void
.end method

.method public final setMaxPendingMoves(I)V
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 528
    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->setMaxPendingMoves(I)V

    return-void
.end method

.method public final setOnChildLaidOutListener(Lcom/rubensousa/dpadrecyclerview/OnChildLaidOutListener;)V
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->pivotLayout:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;

    .line 624
    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->setOnChildLaidOutListener(Lcom/rubensousa/dpadrecyclerview/OnChildLaidOutListener;)V

    return-void
.end method

.method public final setOrientation(I)V
    .locals 1

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 460
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->getOrientation()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 461
    invoke-virtual {v0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->setOrientation(I)V

    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 462
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->updateOrientation()V

    .line 463
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final setParentAlignment(Lcom/rubensousa/dpadrecyclerview/ParentAlignment;Z)V
    .locals 1

    const-string v0, "alignment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->layoutAlignment:Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;

    .line 568
    invoke-virtual {v0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;->setParentAlignment(Lcom/rubensousa/dpadrecyclerview/ParentAlignment;)V

    .line 569
    invoke-direct {p0, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->scrollToSelectedPositionOrRequestLayout(Z)V

    return-void
.end method

.method public final setRecycleChildrenOnDetach(Z)V
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 431
    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->setRecycleChildrenOnDetach(Z)V

    return-void
.end method

.method public final setReverseLayout(Z)V
    .locals 1

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 468
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->getReverseLayout()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 469
    invoke-virtual {v0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->setReverseLayout(Z)V

    .line 470
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final setScrollEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 542
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->isScrollEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 545
    invoke-virtual {v0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->setScrollEnabled(Z)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->scroller:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 547
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->isSmoothFocusChangesEnabled()Z

    move-result p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, p0, v2, v0, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->scrollToSelectedPosition$default(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;ZZILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final setScrollingFromTouchEvent$dpadrecyclerview_release(Z)V
    .locals 1

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 418
    invoke-virtual {v0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->setKeepLayoutAnchor(Z)V

    iput-boolean p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->isScrollingFromTouchEvent:Z

    return-void
.end method

.method public final setSmoothFocusChangesEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 516
    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->setSmoothFocusChangesEnabled(Z)V

    return-void
.end method

.method public final setSmoothScrollSpeedFactor(F)V
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 536
    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->setSmoothScrollSpeedFactor(F)V

    return-void
.end method

.method public final setSpanCount(I)V
    .locals 1

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 475
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->getSpanCount()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 476
    invoke-virtual {v0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->setSpanCount(I)V

    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->spanFocusFinder:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;

    .line 477
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;->clearSpanCache()V

    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->pivotLayout:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;

    .line 478
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->updateStructure()V

    .line 479
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final setSpanSizeLookup(Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;)V
    .locals 1

    const-string v0, "spanSizeLookup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 486
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->getSpanSizeLookup()Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 487
    invoke-virtual {v0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->setSpanSizeLookup(Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;)V

    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->spanFocusFinder:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;

    .line 488
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;->clearSpanCache()V

    .line 489
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "state"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->scroller:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 250
    invoke-virtual {p0, p3, p1, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->scrollToPosition(IIZ)V

    return-void
.end method

.method public startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V
    .locals 1

    const-string v0, "smoothScroller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->scroller:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;

    .line 254
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->cancelSmoothScroller()V

    .line 255
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->scroller:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;

    .line 256
    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->setSmoothScroller(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 122
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->isLoopingAllowed()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final updateRecyclerView$dpadrecyclerview_release(Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->focusDispatcher:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher;

    .line 407
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher;->clearParentRecyclerView()V

    .line 409
    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 410
    invoke-virtual {v1, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->scroller:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;

    .line 411
    invoke-virtual {v1, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->setRecyclerView(Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;)V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    .line 412
    invoke-virtual {p0, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method
