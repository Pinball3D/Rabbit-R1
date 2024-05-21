.class public final Landroidx/compose/runtime/SlotWriter;
.super Ljava/lang/Object;
.source "SlotTable.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/SlotWriter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlotTable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotWriter\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 SlotTable.kt\nandroidx/compose/runtime/SlotTable\n+ 5 SlotTable.kt\nandroidx/compose/runtime/SlotTableKt\n+ 6 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n*L\n1#1,3471:1\n4548#2,5:3472\n4548#2,5:3477\n4548#2,5:3482\n4548#2,5:3487\n4548#2,5:3493\n4548#2,5:3498\n4548#2,5:3503\n4548#2,5:3508\n4548#2,5:3513\n4548#2,5:3518\n4548#2,5:3523\n4548#2,5:3528\n4548#2,5:3533\n4548#2,5:3538\n4548#2,5:3543\n4548#2,5:3548\n4548#2,5:3553\n4548#2,5:3558\n4548#2,5:3571\n4548#2,5:3590\n4548#2,5:3595\n4548#2,5:3600\n1#3:3492\n162#4,8:3563\n162#4,8:3576\n3351#5,6:3584\n33#6,6:3605\n82#6,3:3611\n33#6,4:3614\n85#6,2:3618\n38#6:3620\n87#6:3621\n231#6,3:3622\n64#6,4:3625\n234#6,2:3629\n69#6:3631\n236#6:3632\n*S KotlinDebug\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotWriter\n*L\n1361#1:3472,5\n1385#1:3477,5\n1398#1:3482,5\n1401#1:3487,5\n1441#1:3493,5\n1456#1:3498,5\n1503#1:3503,5\n1508#1:3508,5\n1548#1:3513,5\n1559#1:3518,5\n1686#1:3523,5\n1762#1:3528,5\n1767#1:3533,5\n1799#1:3538,5\n1842#1:3543,5\n1843#1:3548,5\n1856#1:3553,5\n1950#1:3558,5\n2235#1:3571,5\n2522#1:3590,5\n2534#1:3595,5\n2731#1:3600,5\n2217#1:3563,8\n2307#1:3576,8\n2327#1:3584,6\n2827#1:3605,6\n2997#1:3611,3\n2997#1:3614,4\n2997#1:3618,2\n2997#1:3620\n2997#1:3621\n3000#1:3622,3\n3000#1:3625,4\n3000#1:3629,2\n3000#1:3631\n3000#1:3632\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008 \n\u0002\u0010(\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0010 \n\u0002\u00089\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000 \u009f\u00012\u00020\u0001:\u0002\u009f\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u00101\u001a\u0002022\u0006\u00103\u001a\u00020\n2\u0006\u00104\u001a\u00020\nJ\u000e\u00105\u001a\u0002022\u0006\u00104\u001a\u00020\nJ\u0010\u00106\u001a\u00020\u00072\u0008\u0008\u0002\u00107\u001a\u00020\nJ\u000e\u00108\u001a\u00020\n2\u0006\u00106\u001a\u00020\u0007J\r\u00109\u001a\u000202H\u0000\u00a2\u0006\u0002\u0008:J\u0006\u0010;\u001a\u000202J\u0010\u0010<\u001a\u00020\u000e2\u0006\u0010=\u001a\u00020\nH\u0002J\u0008\u0010>\u001a\u000202H\u0002J\u0006\u0010?\u001a\u000202J\u0010\u0010@\u001a\u00020\u000e2\u0006\u0010=\u001a\u00020\nH\u0002J\u0010\u0010A\u001a\u00020\u000e2\u0006\u0010=\u001a\u00020\nH\u0002J \u0010B\u001a\u00020\n2\u0006\u00106\u001a\u00020\n2\u0006\u0010C\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010D\u001a\u00020\n2\u0006\u00107\u001a\u00020\nH\u0002J\u0010\u0010E\u001a\u00020\n2\u0006\u0010D\u001a\u00020\nH\u0002J(\u0010F\u001a\u00020\n2\u0006\u00107\u001a\u00020\n2\u0006\u0010G\u001a\u00020\n2\u0006\u0010C\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0006\u0010H\u001a\u00020\nJ\u0006\u0010I\u001a\u000202J\u000e\u0010J\u001a\u0002022\u0006\u00106\u001a\u00020\u0007J\u000e\u0010J\u001a\u0002022\u0006\u00107\u001a\u00020\nJ \u0010K\u001a\u0002022\u0006\u0010\"\u001a\u00020\n2\u0006\u0010H\u001a\u00020\n2\u0006\u0010L\u001a\u00020\nH\u0002J\u0010\u0010M\u001a\u0004\u0018\u00010\u00012\u0006\u00107\u001a\u00020\nJ\u0010\u0010N\u001a\u00020\n2\u0006\u00107\u001a\u00020\nH\u0002J\u000e\u0010O\u001a\u00020\n2\u0006\u00107\u001a\u00020\nJ\u0010\u0010P\u001a\u0004\u0018\u00010\u00012\u0006\u00107\u001a\u00020\nJ\u000e\u0010Q\u001a\u00020\n2\u0006\u00107\u001a\u00020\nJ\u000e\u0010R\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010SJ\u0006\u0010T\u001a\u00020UJ\u000e\u0010V\u001a\u00020\u000e2\u0006\u00107\u001a\u00020\nJ\u0016\u0010W\u001a\u00020\u000e2\u0006\u00107\u001a\u00020\n2\u0006\u0010=\u001a\u00020\nJ\u000e\u0010X\u001a\u00020\u000e2\u0006\u00107\u001a\u00020\nJ\u0010\u0010Y\u001a\u0002022\u0008\u0010Z\u001a\u0004\u0018\u00010\u0001J\u0010\u0010[\u001a\u0002022\u0006\u0010&\u001a\u00020\nH\u0002J\u000e\u0010\\\u001a\u0002022\u0006\u0010]\u001a\u00020\nJ\u0018\u0010^\u001a\u0002022\u0006\u0010&\u001a\u00020\n2\u0006\u0010=\u001a\u00020\nH\u0002J\u000e\u0010\u001f\u001a\u00020\u000e2\u0006\u00107\u001a\u00020\nJ\u000e\u0010_\u001a\u0008\u0012\u0004\u0012\u00020\n0`H\u0002J\u0010\u0010a\u001a\u0002022\u0008\u0008\u0002\u0010=\u001a\u00020\nJ \u0010b\u001a\u0002022\u0006\u0010c\u001a\u00020\n2\u0006\u0010d\u001a\u00020\n2\u0006\u0010&\u001a\u00020\nH\u0002J&\u0010e\u001a\u0008\u0012\u0004\u0012\u00020\u00070`2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u00107\u001a\u00020\n2\u0008\u0008\u0002\u0010f\u001a\u00020\u000eJ\u000e\u0010g\u001a\u0002022\u0006\u0010h\u001a\u00020\nJ\u0010\u0010i\u001a\u0002022\u0006\u00107\u001a\u00020\nH\u0002J$\u0010j\u001a\u0008\u0012\u0004\u0012\u00020\u00070`2\u0006\u0010h\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u00107\u001a\u00020\nJ\u0018\u0010k\u001a\u0002022\u0006\u00107\u001a\u00020\n2\u0006\u0010=\u001a\u00020\nH\u0002J$\u0010l\u001a\u0008\u0012\u0004\u0012\u00020\u00070`2\u0006\u00106\u001a\u00020\u00072\u0006\u0010h\u001a\u00020\n2\u0006\u0010m\u001a\u00020\u0000J\u0010\u0010n\u001a\u0004\u0018\u00010\u00012\u0006\u00106\u001a\u00020\u0007J\u0010\u0010n\u001a\u0004\u0018\u00010\u00012\u0006\u00107\u001a\u00020\nJ\u000e\u0010 \u001a\u00020\n2\u0006\u00107\u001a\u00020\nJ\u000e\u0010\"\u001a\u00020\n2\u0006\u00106\u001a\u00020\u0007J\u000e\u0010\"\u001a\u00020\n2\u0006\u00107\u001a\u00020\nJ\u0010\u0010o\u001a\u00020\n2\u0006\u00107\u001a\u00020\nH\u0002J\u0018\u0010p\u001a\u00020\n2\u0006\u00107\u001a\u00020\n2\u0006\u0010G\u001a\u00020\nH\u0002J\u0008\u0010q\u001a\u000202H\u0002J\u0018\u0010r\u001a\u00020\u000e2\u0006\u0010G\u001a\u00020\n2\u0006\u0010&\u001a\u00020\nH\u0002J\u0006\u0010s\u001a\u00020\u000eJ\u0018\u0010t\u001a\u00020\u000e2\u0006\u0010u\u001a\u00020\n2\u0006\u0010v\u001a\u00020\nH\u0002J \u0010w\u001a\u0002022\u0006\u0010u\u001a\u00020\n2\u0006\u0010v\u001a\u00020\n2\u0006\u0010=\u001a\u00020\nH\u0002J\u0006\u0010x\u001a\u000202J\u0008\u0010y\u001a\u00020\nH\u0002J\u0008\u0010z\u001a\u000202H\u0002J\u000e\u0010{\u001a\u0002022\u0006\u00106\u001a\u00020\u0007J\u0010\u0010|\u001a\u0002022\u0008\u0010Z\u001a\u0004\u0018\u00010\u0001J\u001a\u0010|\u001a\u0004\u0018\u00010\u00012\u0006\u00107\u001a\u00020\n2\u0008\u0010Z\u001a\u0004\u0018\u00010\u0001J\u0008\u0010}\u001a\u0004\u0018\u00010\u0001J\u0006\u0010~\u001a\u00020\nJ\u0006\u0010\u007f\u001a\u000202J\u0019\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u00012\u0006\u00106\u001a\u00020\u00072\u0006\u00107\u001a\u00020\nJ\u001a\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u00012\u0007\u0010\u0081\u0001\u001a\u00020\n2\u0006\u00107\u001a\u00020\nJ\u001a\u0010\u0082\u0001\u001a\u0002022\u0006\u0010]\u001a\u00020\n2\t\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u0001J%\u0010\u0082\u0001\u001a\u0002022\u0006\u0010]\u001a\u00020\n2\t\u0010\u0084\u0001\u001a\u0004\u0018\u00010\u00012\t\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u0001J\u0007\u0010\u0085\u0001\u001a\u000202J\u000f\u0010\u0085\u0001\u001a\u0002022\u0006\u0010]\u001a\u00020\nJ\u001a\u0010\u0085\u0001\u001a\u0002022\u0006\u0010]\u001a\u00020\n2\t\u0010\u0086\u0001\u001a\u0004\u0018\u00010\u0001J/\u0010\u0085\u0001\u001a\u0002022\u0006\u0010]\u001a\u00020\n2\t\u0010\u0084\u0001\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u001f\u001a\u00020\u000e2\t\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u0001H\u0002J\u001a\u0010\u0087\u0001\u001a\u0002022\u0006\u0010]\u001a\u00020\n2\t\u0010\u0084\u0001\u001a\u0004\u0018\u00010\u0001J$\u0010\u0087\u0001\u001a\u0002022\u0006\u0010]\u001a\u00020\n2\t\u0010\u0084\u0001\u001a\u0004\u0018\u00010\u00012\u0008\u0010n\u001a\u0004\u0018\u00010\u0001J\t\u0010\u0088\u0001\u001a\u00020UH\u0016J\u0013\u0010\u0089\u0001\u001a\u0004\u0018\u00010\u00012\u0008\u0010Z\u001a\u0004\u0018\u00010\u0001J\u001b\u0010\u008a\u0001\u001a\u0002022\u0007\u0010\u008b\u0001\u001a\u00020\n2\u0007\u0010\u008c\u0001\u001a\u00020\nH\u0002J\u0011\u0010\u008d\u0001\u001a\u0002022\u0008\u0010Z\u001a\u0004\u0018\u00010\u0001J\u0011\u0010\u008e\u0001\u001a\u0002022\u0006\u0010=\u001a\u00020\nH\u0002J\u0019\u0010\u008f\u0001\u001a\u0002022\u0006\u0010=\u001a\u00020\n2\u0006\u0010|\u001a\u00020%H\u0002J\u0019\u0010\u0090\u0001\u001a\u0002022\u0006\u00106\u001a\u00020\u00072\u0008\u0010Z\u001a\u0004\u0018\u00010\u0001J\u0011\u0010\u0090\u0001\u001a\u0002022\u0008\u0010Z\u001a\u0004\u0018\u00010\u0001J\u001b\u0010\u0091\u0001\u001a\u0002022\u0006\u00107\u001a\u00020\n2\u0008\u0010Z\u001a\u0004\u0018\u00010\u0001H\u0002J\u0011\u0010\u0092\u0001\u001a\u0002022\u0008\u0010Z\u001a\u0004\u0018\u00010\u0001J\u000f\u0010\u0093\u0001\u001a\u000202H\u0000\u00a2\u0006\u0003\u0008\u0094\u0001J\u000f\u0010\u0095\u0001\u001a\u000202H\u0000\u00a2\u0006\u0003\u0008\u0096\u0001J\u0015\u0010\u0097\u0001\u001a\u00020\n*\u00020\u001c2\u0006\u00103\u001a\u00020\nH\u0002J\u0014\u0010D\u001a\u00020\n*\u00020\u001c2\u0006\u00103\u001a\u00020\nH\u0002J\u0013\u0010\u0098\u0001\u001a\u0008\u0012\u0004\u0012\u00020\n0`*\u00020\u001cH\u0002J\u001b\u0010\u0099\u0001\u001a\u000202*\u00080\u009a\u0001j\u0003`\u009b\u00012\u0006\u00107\u001a\u00020\nH\u0002J\u0015\u0010\u009c\u0001\u001a\u00020\n*\u00020\u001c2\u0006\u00103\u001a\u00020\nH\u0002J\u0014\u0010\"\u001a\u00020\n*\u00020\u001c2\u0006\u00107\u001a\u00020\nH\u0002J\u0015\u0010\u009d\u0001\u001a\u00020\n*\u00020\u001c2\u0006\u00103\u001a\u00020\nH\u0002J\u001d\u0010\u009e\u0001\u001a\u000202*\u00020\u001c2\u0006\u00103\u001a\u00020\n2\u0006\u0010D\u001a\u00020\nH\u0002R\u001e\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0006j\u0008\u0012\u0004\u0012\u00020\u0007`\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\n8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u001e\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000e@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u001e\u0010\u0012\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\n@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000cR\u000e\u0010\u0014\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u001e\u001a\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u0011R\u0011\u0010\u001f\u001a\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\u0011R\u000e\u0010 \u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\"\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\n@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u000cR\u0010\u0010$\u001a\u0004\u0018\u00010%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010&\u001a\u00020\n8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010\u000cR\u0018\u0010(\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010)X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010*R\u000e\u0010+\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u00100\u00a8\u0006\u00a0\u0001"
    }
    d2 = {
        "Landroidx/compose/runtime/SlotWriter;",
        "",
        "table",
        "Landroidx/compose/runtime/SlotTable;",
        "(Landroidx/compose/runtime/SlotTable;)V",
        "anchors",
        "Ljava/util/ArrayList;",
        "Landroidx/compose/runtime/Anchor;",
        "Lkotlin/collections/ArrayList;",
        "capacity",
        "",
        "getCapacity",
        "()I",
        "<set-?>",
        "",
        "closed",
        "getClosed",
        "()Z",
        "currentGroup",
        "getCurrentGroup",
        "currentGroupEnd",
        "currentSlot",
        "currentSlotEnd",
        "endStack",
        "Landroidx/compose/runtime/IntStack;",
        "groupGapLen",
        "groupGapStart",
        "groups",
        "",
        "insertCount",
        "isGroupEnd",
        "isNode",
        "nodeCount",
        "nodeCountStack",
        "parent",
        "getParent",
        "pendingRecalculateMarks",
        "Landroidx/compose/runtime/PrioritySet;",
        "size",
        "getSize$runtime_release",
        "slots",
        "",
        "[Ljava/lang/Object;",
        "slotsGapLen",
        "slotsGapOwner",
        "slotsGapStart",
        "startStack",
        "getTable$runtime_release",
        "()Landroidx/compose/runtime/SlotTable;",
        "addToGroupSizeAlongSpine",
        "",
        "address",
        "amount",
        "advanceBy",
        "anchor",
        "index",
        "anchorIndex",
        "bashGroup",
        "bashGroup$runtime_release",
        "beginInsert",
        "childContainsAnyMarks",
        "group",
        "clearSlotGap",
        "close",
        "containsAnyGroupMarks",
        "containsGroupMark",
        "dataAnchorToDataIndex",
        "gapLen",
        "dataIndex",
        "dataIndexToDataAddress",
        "dataIndexToDataAnchor",
        "gapStart",
        "endGroup",
        "endInsert",
        "ensureStarted",
        "fixParentAnchorsFor",
        "firstChild",
        "groupAux",
        "groupIndexToAddress",
        "groupKey",
        "groupObjectKey",
        "groupSize",
        "groupSlots",
        "",
        "groupsAsString",
        "",
        "indexInCurrentGroup",
        "indexInGroup",
        "indexInParent",
        "insertAux",
        "value",
        "insertGroups",
        "insertParentGroup",
        "key",
        "insertSlots",
        "keys",
        "",
        "markGroup",
        "moveAnchors",
        "originalLocation",
        "newLocation",
        "moveFrom",
        "removeSourceGroup",
        "moveGroup",
        "offset",
        "moveGroupGapTo",
        "moveIntoGroupFrom",
        "moveSlotGapTo",
        "moveTo",
        "writer",
        "node",
        "parentAnchorToIndex",
        "parentIndexToAnchor",
        "recalculateMarks",
        "removeAnchors",
        "removeGroup",
        "removeGroups",
        "start",
        "len",
        "removeSlots",
        "reset",
        "restoreCurrentGroupEnd",
        "saveCurrentGroupEnd",
        "seek",
        "set",
        "skip",
        "skipGroup",
        "skipToGroupEnd",
        "slot",
        "groupIndex",
        "startData",
        "aux",
        "objectKey",
        "startGroup",
        "dataKey",
        "startNode",
        "toString",
        "update",
        "updateAnchors",
        "previousGapStart",
        "newGapStart",
        "updateAux",
        "updateContainsMark",
        "updateContainsMarkNow",
        "updateNode",
        "updateNodeOfGroup",
        "updateParentNode",
        "verifyDataAnchors",
        "verifyDataAnchors$runtime_release",
        "verifyParentAnchors",
        "verifyParentAnchors$runtime_release",
        "auxIndex",
        "dataIndexes",
        "groupAsString",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "nodeIndex",
        "slotIndex",
        "updateDataIndex",
        "Companion",
        "runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/runtime/SlotWriter$Companion;


# instance fields
.field private anchors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/compose/runtime/Anchor;",
            ">;"
        }
    .end annotation
.end field

.field private closed:Z

.field private currentGroup:I

.field private currentGroupEnd:I

.field private currentSlot:I

.field private currentSlotEnd:I

.field private final endStack:Landroidx/compose/runtime/IntStack;

.field private groupGapLen:I

.field private groupGapStart:I

.field private groups:[I

.field private insertCount:I

.field private nodeCount:I

.field private final nodeCountStack:Landroidx/compose/runtime/IntStack;

.field private parent:I

.field private pendingRecalculateMarks:Landroidx/compose/runtime/PrioritySet;

.field private slots:[Ljava/lang/Object;

.field private slotsGapLen:I

.field private slotsGapOwner:I

.field private slotsGapStart:I

.field private final startStack:Landroidx/compose/runtime/IntStack;

.field private final table:Landroidx/compose/runtime/SlotTable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/runtime/SlotWriter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/runtime/SlotWriter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/runtime/SlotWriter;->Companion:Landroidx/compose/runtime/SlotWriter$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/SlotTable;)V
    .locals 2

    const-string/jumbo v0, "table"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/SlotWriter;->table:Landroidx/compose/runtime/SlotTable;

    .line 1127
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getGroups()[I

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1135
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getSlots()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 1140
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getAnchors$runtime_release()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 1145
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getGroupsSize()I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1150
    array-length v0, v0

    div-int/lit8 v0, v0, 0x5

    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getGroupsSize()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    .line 1155
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getGroupsSize()I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    .line 1170
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getSlotsSize()I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 1175
    array-length v0, v0

    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getSlotsSize()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    .line 1180
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getGroupsSize()I

    move-result p1

    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    .line 1200
    new-instance p1, Landroidx/compose/runtime/IntStack;

    invoke-direct {p1}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/SlotWriter;->startStack:Landroidx/compose/runtime/IntStack;

    .line 1208
    new-instance p1, Landroidx/compose/runtime/IntStack;

    invoke-direct {p1}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/SlotWriter;->endStack:Landroidx/compose/runtime/IntStack;

    .line 1213
    new-instance p1, Landroidx/compose/runtime/IntStack;

    invoke-direct {p1}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/SlotWriter;->nodeCountStack:Landroidx/compose/runtime/IntStack;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    return-void
.end method

.method public static final synthetic access$containsAnyGroupMarks(Landroidx/compose/runtime/SlotWriter;I)Z
    .locals 0

    .line 1115
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->containsAnyGroupMarks(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$dataIndex(Landroidx/compose/runtime/SlotWriter;I)I
    .locals 0

    .line 1115
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->dataIndex(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$dataIndex(Landroidx/compose/runtime/SlotWriter;[II)I
    .locals 0

    .line 1115
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$dataIndexToDataAddress(Landroidx/compose/runtime/SlotWriter;I)I
    .locals 0

    .line 1115
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$dataIndexToDataAnchor(Landroidx/compose/runtime/SlotWriter;IIII)I
    .locals 0

    .line 1115
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAnchor(IIII)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getAnchors$p(Landroidx/compose/runtime/SlotWriter;)Ljava/util/ArrayList;
    .locals 0

    .line 1115
    iget-object p0, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getCurrentSlot$p(Landroidx/compose/runtime/SlotWriter;)I
    .locals 0

    .line 1115
    iget p0, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    return p0
.end method

.method public static final synthetic access$getGroupGapStart$p(Landroidx/compose/runtime/SlotWriter;)I
    .locals 0

    .line 1115
    iget p0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    return p0
.end method

.method public static final synthetic access$getGroups$p(Landroidx/compose/runtime/SlotWriter;)[I
    .locals 0

    .line 1115
    iget-object p0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    return-object p0
.end method

.method public static final synthetic access$getNodeCount$p(Landroidx/compose/runtime/SlotWriter;)I
    .locals 0

    .line 1115
    iget p0, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    return p0
.end method

.method public static final synthetic access$getSlots$p(Landroidx/compose/runtime/SlotWriter;)[Ljava/lang/Object;
    .locals 0

    .line 1115
    iget-object p0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$getSlotsGapLen$p(Landroidx/compose/runtime/SlotWriter;)I
    .locals 0

    .line 1115
    iget p0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    return p0
.end method

.method public static final synthetic access$getSlotsGapOwner$p(Landroidx/compose/runtime/SlotWriter;)I
    .locals 0

    .line 1115
    iget p0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    return p0
.end method

.method public static final synthetic access$getSlotsGapStart$p(Landroidx/compose/runtime/SlotWriter;)I
    .locals 0

    .line 1115
    iget p0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    return p0
.end method

.method public static final synthetic access$insertGroups(Landroidx/compose/runtime/SlotWriter;I)V
    .locals 0

    .line 1115
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->insertGroups(I)V

    return-void
.end method

.method public static final synthetic access$insertSlots(Landroidx/compose/runtime/SlotWriter;II)V
    .locals 0

    .line 1115
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/SlotWriter;->insertSlots(II)V

    return-void
.end method

.method public static final synthetic access$moveGroupGapTo(Landroidx/compose/runtime/SlotWriter;I)V
    .locals 0

    .line 1115
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->moveGroupGapTo(I)V

    return-void
.end method

.method public static final synthetic access$moveSlotGapTo(Landroidx/compose/runtime/SlotWriter;II)V
    .locals 0

    .line 1115
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/SlotWriter;->moveSlotGapTo(II)V

    return-void
.end method

.method public static final synthetic access$removeGroups(Landroidx/compose/runtime/SlotWriter;II)Z
    .locals 0

    .line 1115
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/SlotWriter;->removeGroups(II)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$removeSlots(Landroidx/compose/runtime/SlotWriter;III)V
    .locals 0

    .line 1115
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/runtime/SlotWriter;->removeSlots(III)V

    return-void
.end method

.method public static final synthetic access$setCurrentGroup$p(Landroidx/compose/runtime/SlotWriter;I)V
    .locals 0

    .line 1115
    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    return-void
.end method

.method public static final synthetic access$setCurrentSlot$p(Landroidx/compose/runtime/SlotWriter;I)V
    .locals 0

    .line 1115
    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    return-void
.end method

.method public static final synthetic access$setNodeCount$p(Landroidx/compose/runtime/SlotWriter;I)V
    .locals 0

    .line 1115
    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    return-void
.end method

.method public static final synthetic access$setSlotsGapOwner$p(Landroidx/compose/runtime/SlotWriter;I)V
    .locals 0

    .line 1115
    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    return-void
.end method

.method public static final synthetic access$updateContainsMark(Landroidx/compose/runtime/SlotWriter;I)V
    .locals 0

    .line 1115
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->updateContainsMark(I)V

    return-void
.end method

.method public static synthetic anchor$default(Landroidx/compose/runtime/SlotWriter;IILjava/lang/Object;)Landroidx/compose/runtime/Anchor;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 2327
    iget p1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object p0

    return-object p0
.end method

.method private final auxIndex([II)I
    .locals 0

    .line 2991
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result p0

    invoke-static {p1, p2}, Landroidx/compose/runtime/SlotTableKt;->access$groupInfo([II)I

    move-result p1

    shr-int/lit8 p1, p1, 0x1d

    invoke-static {p1}, Landroidx/compose/runtime/SlotTableKt;->access$countOneBits(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method private final childContainsAnyMarks(I)Z
    .locals 3

    add-int/lit8 v0, p1, 0x1

    .line 2378
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    move-result v1

    add-int/2addr p1, v1

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2380
    invoke-direct {p0, v0}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v2

    invoke-static {v1, v2}, Landroidx/compose/runtime/SlotTableKt;->access$containsAnyMark([II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2381
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private final clearSlotGap()V
    .locals 3

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    add-int/2addr v1, v0

    iget-object p0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    const/4 v2, 0x0

    .line 2550
    invoke-static {p0, v2, v0, v1}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    return-void
.end method

.method private final containsAnyGroupMarks(I)Z
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2346
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result p0

    invoke-static {v0, p0}, Landroidx/compose/runtime/SlotTableKt;->access$containsAnyMark([II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final containsGroupMark(I)Z
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2343
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result p0

    invoke-static {v0, p0}, Landroidx/compose/runtime/SlotTableKt;->access$containsMark([II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final dataAnchorToDataIndex(III)I
    .locals 0

    if-gez p1, :cond_0

    sub-int/2addr p3, p2

    add-int/2addr p3, p1

    add-int/lit8 p1, p3, 0x1

    :cond_0
    return p1
.end method

.method private final dataIndex(I)I
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2972
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result p0

    return p0
.end method

.method private final dataIndex([II)I
    .locals 1

    .line 2975
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->getCapacity()I

    move-result v0

    if-lt p2, v0, :cond_0

    iget-object p1, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    array-length p1, p1

    iget p0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    sub-int/2addr p1, p0

    goto :goto_0

    .line 2976
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchor([II)I

    move-result p1

    iget p2, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    array-length v0, v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/compose/runtime/SlotWriter;->dataAnchorToDataIndex(III)I

    move-result p1

    :goto_0
    return p1
.end method

.method private final dataIndexToDataAddress(I)I
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    add-int/2addr p1, p0

    :goto_0
    return p1
.end method

.method private final dataIndexToDataAnchor(IIII)I
    .locals 0

    if-le p1, p2, :cond_0

    sub-int/2addr p4, p3

    sub-int/2addr p4, p1

    add-int/lit8 p4, p4, 0x1

    neg-int p1, p4

    :cond_0
    return p1
.end method

.method private final dataIndexes([I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2994
    invoke-static {v0, v3, v1, v2}, Landroidx/compose/runtime/SlotTableKt;->dataAnchors$default([IIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    .line 2995
    invoke-static {v3, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->slice(Ljava/util/List;Lkotlin/ranges/IntRange;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    iget v4, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    add-int/2addr v2, v4

    .line 2996
    array-length p1, p1

    div-int/lit8 p1, p1, 0x5

    invoke-static {v2, p1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->slice(Ljava/util/List;Lkotlin/ranges/IntRange;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 2995
    invoke-static {v1, p1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 3612
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3615
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v3, v1, :cond_0

    .line 3616
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 3618
    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iget v5, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    iget-object v6, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 2997
    array-length v6, v6

    invoke-direct {p0, v2, v5, v6}, Landroidx/compose/runtime/SlotWriter;->dataAnchorToDataIndex(III)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3618
    invoke-interface {v4, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3621
    :cond_0
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final fixParentAnchorsFor(III)V
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    .line 2422
    invoke-direct {p0, p1, v0}, Landroidx/compose/runtime/SlotWriter;->parentIndexToAnchor(II)I

    move-result p1

    :goto_0
    if-ge p3, p2, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2425
    invoke-direct {p0, p3}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v1

    invoke-static {v0, v1, p1}, Landroidx/compose/runtime/SlotTableKt;->access$updateParentAnchor([III)V

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2426
    invoke-direct {p0, p3}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v0

    add-int/2addr v0, p3

    add-int/lit8 v1, p3, 0x1

    .line 2427
    invoke-direct {p0, p3, v0, v1}, Landroidx/compose/runtime/SlotWriter;->fixParentAnchorsFor(III)V

    move p3, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final getCapacity()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2961
    array-length p0, p0

    div-int/lit8 p0, p0, 0x5

    return p0
.end method

.method private final groupAsString(Ljava/lang/StringBuilder;I)V
    .locals 5

    .line 2855
    invoke-direct {p0, p2}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    const-string v1, "Group("

    .line 2856
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    const/16 v2, 0x20

    if-ge p2, v1, :cond_0

    .line 2857
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v1, 0x64

    if-ge p2, v1, :cond_1

    .line 2858
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v1, 0x3e8

    if-ge p2, v1, :cond_2

    .line 2859
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2860
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    if-eq v0, p2, :cond_3

    const-string v2, "("

    .line 2862
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2863
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2864
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const/16 v2, 0x23

    .line 2866
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2867
    invoke-static {v2, v0}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2871
    invoke-static {p0, p2}, Landroidx/compose/runtime/SlotWriter;->groupAsString$isStarted(Landroidx/compose/runtime/SlotWriter;I)Z

    move-result p2

    const/16 v2, 0x3f

    if-eqz p2, :cond_4

    .line 2872
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    const/16 v3, 0x5e

    .line 2873
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2874
    invoke-static {v3, v0}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor([II)I

    move-result v3

    invoke-direct {p0, v3}, Landroidx/compose/runtime/SlotWriter;->parentAnchorToIndex(I)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": key="

    .line 2875
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2876
    invoke-static {v3, v0}, Landroidx/compose/runtime/SlotTableKt;->access$key([II)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", nodes="

    .line 2877
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2878
    invoke-static {v3, v0}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount([II)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_5

    .line 2879
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    const-string p2, ", dataAnchor="

    .line 2880
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2881
    invoke-static {p2, v0}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchor([II)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", parentAnchor="

    .line 2882
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2883
    invoke-static {p2, v0}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor([II)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2884
    invoke-static {p2, v0}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 2886
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, ", node="

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2888
    invoke-direct {p0, v3, v0}, Landroidx/compose/runtime/SlotWriter;->nodeIndex([II)I

    move-result v3

    invoke-direct {p0, v3}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result v3

    aget-object v2, v2, v3

    .line 2886
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2885
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object p2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2894
    invoke-direct {p0, p2, v0}, Landroidx/compose/runtime/SlotWriter;->slotIndex([II)I

    move-result p2

    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    add-int/lit8 v0, v0, 0x1

    .line 2895
    invoke-direct {p0, v2, v0}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v0

    if-le v0, p2, :cond_9

    const-string v2, ", ["

    .line 2897
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p2

    :goto_0
    if-ge v2, v0, :cond_8

    if-eq v2, p2, :cond_7

    const-string v3, ", "

    .line 2899
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2900
    :cond_7
    invoke-direct {p0, v2}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result v3

    iget-object v4, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 2901
    aget-object v3, v4, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    const/16 p0, 0x5d

    .line 2903
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2905
    :cond_9
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static final groupAsString$isStarted(Landroidx/compose/runtime/SlotWriter;I)Z
    .locals 1

    .line 2869
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->startStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/IntStack;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 2870
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->parent(I)I

    move-result p1

    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupAsString$isStarted(Landroidx/compose/runtime/SlotWriter;I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final groupIndexToAddress(I)I
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    add-int/2addr p1, p0

    :goto_0
    return p1
.end method

.method private final insertGroups(I)V
    .locals 11

    if-lez p1, :cond_5

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 2560
    invoke-direct {p0, v0}, Landroidx/compose/runtime/SlotWriter;->moveGroupGapTo(I)V

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2563
    array-length v4, v3

    div-int/lit8 v4, v4, 0x5

    sub-int v5, v4, v2

    const/4 v6, 0x0

    if-ge v2, p1, :cond_0

    mul-int/lit8 v7, v4, 0x2

    add-int v8, v5, p1

    .line 2571
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/16 v8, 0x20

    .line 2572
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    mul-int/lit8 v8, v7, 0x5

    .line 2574
    new-array v8, v8, [I

    sub-int/2addr v7, v5

    add-int/2addr v2, v1

    add-int v9, v1, v7

    mul-int/lit8 v10, v1, 0x5

    .line 2580
    invoke-static {v3, v8, v6, v6, v10}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    mul-int/lit8 v9, v9, 0x5

    mul-int/lit8 v2, v2, 0x5

    mul-int/lit8 v4, v4, 0x5

    .line 2586
    invoke-static {v3, v8, v9, v2, v4}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    iput-object v8, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    move v2, v7

    :cond_0
    iget v3, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    if-lt v3, v1, :cond_1

    add-int/2addr v3, p1

    iput v3, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    :cond_1
    add-int v3, v1, p1

    iput v3, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    sub-int/2addr v2, p1

    iput v2, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    if-lez v5, :cond_2

    add-int/2addr v0, p1

    .line 2607
    invoke-direct {p0, v0}, Landroidx/compose/runtime/SlotWriter;->dataIndex(I)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v6

    :goto_0
    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    if-ge v2, v1, :cond_3

    goto :goto_1

    :cond_3
    iget v6, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    :goto_1
    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    iget-object v4, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 2614
    array-length v4, v4

    .line 2610
    invoke-direct {p0, v0, v6, v2, v4}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAnchor(IIII)I

    move-result v0

    move v2, v1

    :goto_2
    if-ge v2, v3, :cond_4

    iget-object v4, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2617
    invoke-static {v4, v2, v0}, Landroidx/compose/runtime/SlotTableKt;->access$updateDataAnchor([III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    if-lt v0, v1, :cond_5

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    :cond_5
    return-void
.end method

.method private final insertSlots(II)V
    .locals 9

    if-lez p1, :cond_3

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 2633
    invoke-direct {p0, v0, p2}, Landroidx/compose/runtime/SlotWriter;->moveSlotGapTo(II)V

    iget p2, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    if-ge v0, p1, :cond_1

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 2640
    array-length v2, v1

    sub-int v3, v2, v0

    mul-int/lit8 v4, v2, 0x2

    add-int v5, v3, p1

    .line 2645
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/16 v5, 0x20

    .line 2646
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2648
    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v4, :cond_0

    const/4 v8, 0x0

    aput-object v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr v4, v3

    add-int/2addr v0, p2

    add-int v3, p2, v4

    .line 2654
    invoke-static {v1, v5, v6, v6, p2}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 2660
    invoke-static {v1, v5, v3, v0, v2}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iput-object v5, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    move v0, v4

    :cond_1
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    if-lt v1, p2, :cond_2

    add-int/2addr v1, p1

    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    :cond_2
    add-int/2addr p2, p1

    iput p2, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    :cond_3
    return-void
.end method

.method private final keys()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3000
    invoke-static {v0, v3, v1, v2}, Landroidx/compose/runtime/SlotTableKt;->keys$default([IIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 3623
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3626
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v3, v2, :cond_2

    .line 3627
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 3629
    move-object v5, v4

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    iget v5, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    if-lt v3, v5, :cond_0

    iget v6, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    add-int/2addr v5, v6

    if-lt v3, v5, :cond_1

    :cond_0
    move-object v5, v1

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3632
    :cond_2
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public static synthetic markGroup$default(Landroidx/compose/runtime/SlotWriter;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 2331
    iget p1, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->markGroup(I)V

    return-void
.end method

.method private final moveAnchors(III)V
    .locals 5

    add-int/2addr p3, p1

    .line 2808
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 2811
    invoke-static {v1, p1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$locationOf(Ljava/util/ArrayList;II)I

    move-result v1

    .line 2812
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    if-ltz v1, :cond_0

    :goto_0
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 2814
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 2815
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "anchors[index]"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroidx/compose/runtime/Anchor;

    .line 2816
    invoke-virtual {p0, v3}, Landroidx/compose/runtime/SlotWriter;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result v4

    if-lt v4, p1, :cond_0

    if-ge v4, p3, :cond_0

    .line 2819
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 2820
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sub-int/2addr p2, p1

    .line 3606
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    const/4 p3, 0x0

    :goto_1
    if-ge p3, p1, :cond_2

    .line 3607
    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 3608
    check-cast v1, Landroidx/compose/runtime/Anchor;

    .line 2828
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/SlotWriter;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result v3

    add-int/2addr v3, p2

    iget v4, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    if-lt v3, v4, :cond_1

    sub-int v4, v0, v3

    neg-int v4, v4

    .line 2831
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/Anchor;->setLocation$runtime_release(I)V

    goto :goto_2

    .line 2833
    :cond_1
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/Anchor;->setLocation$runtime_release(I)V

    :goto_2
    iget-object v4, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 2835
    invoke-static {v4, v3, v0}, Landroidx/compose/runtime/SlotTableKt;->access$locationOf(Ljava/util/ArrayList;II)I

    move-result v3

    iget-object v4, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 2836
    invoke-virtual {v4, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static synthetic moveFrom$default(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/SlotTable;IZILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 2187
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/runtime/SlotWriter;->moveFrom(Landroidx/compose/runtime/SlotTable;IZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final moveGroupGapTo(I)V
    .locals 8

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    if-eq v1, p1, :cond_7

    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 2439
    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_0

    invoke-direct {p0, v1, p1}, Landroidx/compose/runtime/SlotWriter;->updateAnchors(II)V

    :cond_0
    if-lez v0, :cond_2

    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    mul-int/lit8 v4, p1, 0x5

    mul-int/lit8 v5, v0, 0x5

    mul-int/lit8 v6, v1, 0x5

    if-ge p1, v1, :cond_1

    add-int/2addr v5, v4

    .line 2449
    invoke-static {v2, v2, v5, v4, v6}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    goto :goto_0

    :cond_1
    add-int v7, v6, v5

    add-int/2addr v4, v5

    .line 2456
    invoke-static {v2, v2, v6, v7, v4}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    :cond_2
    :goto_0
    if-ge p1, v1, :cond_3

    add-int v1, p1, v0

    .line 2468
    :cond_3
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->getCapacity()I

    move-result v2

    if-ge v1, v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    .line 2469
    :goto_1
    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    :cond_5
    :goto_2
    if-ge v1, v2, :cond_7

    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2471
    invoke-static {v3, v1}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor([II)I

    move-result v3

    .line 2472
    invoke-direct {p0, v3}, Landroidx/compose/runtime/SlotWriter;->parentAnchorToIndex(I)I

    move-result v4

    .line 2473
    invoke-direct {p0, v4, p1}, Landroidx/compose/runtime/SlotWriter;->parentIndexToAnchor(II)I

    move-result v4

    if-eq v4, v3, :cond_6

    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2475
    invoke-static {v3, v1, v4}, Landroidx/compose/runtime/SlotTableKt;->access$updateParentAnchor([III)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    if-ne v1, p1, :cond_5

    add-int/2addr v1, v0

    goto :goto_2

    :cond_7
    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    return-void
.end method

.method private final moveSlotGapTo(II)V
    .locals 8

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    if-eq v1, p1, :cond_1

    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    if-ge p1, v1, :cond_0

    add-int v4, p1, v0

    .line 2495
    invoke-static {v3, v3, v4, p1, v1}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_0

    :cond_0
    add-int v4, v1, v0

    add-int v5, p1, v0

    .line 2503
    invoke-static {v3, v3, v1, v4, v5}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    :cond_1
    :goto_0
    const/4 v1, 0x1

    add-int/2addr p2, v1

    .line 2513
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v3

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-eq v2, p2, :cond_a

    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 2515
    array-length v3, v3

    sub-int/2addr v3, v0

    const/4 v0, 0x0

    if-ge p2, v2, :cond_5

    .line 2517
    invoke-direct {p0, p2}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v4

    .line 2518
    invoke-direct {p0, v2}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v2

    iget v5, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    :cond_2
    :goto_1
    if-ge v4, v2, :cond_9

    iget-object v6, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2521
    invoke-static {v6, v4}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchor([II)I

    move-result v6

    if-ltz v6, :cond_3

    move v7, v1

    goto :goto_2

    :cond_3
    move v7, v0

    :goto_2
    if-eqz v7, :cond_4

    iget-object v7, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    sub-int v6, v3, v6

    add-int/2addr v6, v1

    neg-int v6, v6

    .line 2525
    invoke-static {v7, v4, v6}, Landroidx/compose/runtime/SlotTableKt;->access$updateDataAnchor([III)V

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_2

    iget v6, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    add-int/2addr v4, v6

    goto :goto_1

    :cond_4
    const-string p0, "Unexpected anchor value, expected a positive anchor"

    .line 3592
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    .line 2530
    :cond_5
    invoke-direct {p0, v2}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v2

    .line 2531
    invoke-direct {p0, p2}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v4

    :cond_6
    :goto_3
    if-ge v2, v4, :cond_9

    iget-object v5, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2533
    invoke-static {v5, v2}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchor([II)I

    move-result v5

    if-gez v5, :cond_7

    move v6, v1

    goto :goto_4

    :cond_7
    move v6, v0

    :goto_4
    if-eqz v6, :cond_8

    iget-object v6, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    add-int/2addr v5, v3

    add-int/2addr v5, v1

    .line 2537
    invoke-static {v6, v2, v5}, Landroidx/compose/runtime/SlotTableKt;->access$updateDataAnchor([III)V

    add-int/lit8 v2, v2, 0x1

    iget v5, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    if-ne v2, v5, :cond_6

    iget v5, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    add-int/2addr v2, v5

    goto :goto_3

    :cond_8
    const-string p0, "Unexpected anchor value, expected a negative anchor"

    .line 3597
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_9
    iput p2, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    :cond_a
    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    return-void
.end method

.method private final nodeIndex([II)I
    .locals 0

    .line 2989
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result p0

    return p0
.end method

.method private final parent([II)I
    .locals 0

    .line 2970
    invoke-direct {p0, p2}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result p2

    invoke-static {p1, p2}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor([II)I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->parentAnchorToIndex(I)I

    move-result p0

    return p0
.end method

.method private final parentAnchorToIndex(I)I
    .locals 1

    const/4 v0, -0x2

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 3014
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result p0

    add-int/2addr p0, p1

    add-int/lit8 p1, p0, 0x2

    :goto_0
    return p1
.end method

.method private final parentIndexToAnchor(II)I
    .locals 0

    if-ge p1, p2, :cond_0

    goto :goto_0

    .line 3011
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result p0

    sub-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x2

    neg-int p1, p0

    :goto_0
    return p1
.end method

.method private final recalculateMarks()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->pendingRecalculateMarks:Landroidx/compose/runtime/PrioritySet;

    if-eqz v0, :cond_0

    .line 2352
    :goto_0
    invoke-virtual {v0}, Landroidx/compose/runtime/PrioritySet;->isNotEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2353
    invoke-virtual {v0}, Landroidx/compose/runtime/PrioritySet;->takeMax()I

    move-result v1

    invoke-direct {p0, v1, v0}, Landroidx/compose/runtime/SlotWriter;->updateContainsMarkNow(ILandroidx/compose/runtime/PrioritySet;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final removeAnchors(II)Z
    .locals 6

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    add-int/2addr p2, p1

    .line 2780
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->getCapacity()I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 2781
    invoke-static {v0, p2, v1}, Landroidx/compose/runtime/SlotTableKt;->access$locationOf(Ljava/util/ArrayList;II)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 2782
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ltz v0, :cond_3

    iget-object v4, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 2787
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "anchors[index]"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroidx/compose/runtime/Anchor;

    .line 2788
    invoke-virtual {p0, v4}, Landroidx/compose/runtime/SlotWriter;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result v5

    if-lt v5, p1, :cond_3

    if-ge v5, p2, :cond_2

    const/high16 v1, -0x80000000

    .line 2791
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/Anchor;->setLocation$runtime_release(I)V

    if-nez v3, :cond_1

    add-int/lit8 v3, v0, 0x1

    :cond_1
    move v1, v0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    if-ge v1, v3, :cond_4

    const/4 v2, 0x1

    :cond_4
    if-eqz v2, :cond_5

    iget-object p0, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 2799
    invoke-virtual {p0, v1, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_5
    return v2
.end method

.method private final removeGroups(II)Z
    .locals 2

    const/4 v0, 0x0

    if-lez p2, :cond_3

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 2687
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->moveGroupGapTo(I)V

    .line 2688
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/SlotWriter;->removeAnchors(II)Z

    move-result v0

    :cond_0
    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    add-int/2addr v1, p2

    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    if-le v1, p1, :cond_1

    sub-int/2addr v1, p2

    .line 2698
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    :cond_1
    iget p1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    if-lt p1, v1, :cond_2

    sub-int/2addr p1, p2

    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    :cond_2
    iget p1, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    .line 2703
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->containsGroupMark(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    .line 2704
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->updateContainsMark(I)V

    :cond_3
    return v0
.end method

.method private final removeSlots(III)V
    .locals 2

    if-lez p2, :cond_0

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    add-int v1, p1, p2

    .line 2717
    invoke-direct {p0, v1, p3}, Landroidx/compose/runtime/SlotWriter;->moveSlotGapTo(II)V

    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    add-int/2addr v0, p2

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    iget-object p3, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2720
    invoke-static {p3, v0, p1, v1}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    iget p3, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    if-lt p3, p1, :cond_0

    sub-int/2addr p3, p2

    iput p3, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    :cond_0
    return-void
.end method

.method private final restoreCurrentGroupEnd()I
    .locals 2

    .line 2410
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->getCapacity()I

    move-result v0

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->endStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v1}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    return v0
.end method

.method private final saveCurrentGroupEnd()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->endStack:Landroidx/compose/runtime/IntStack;

    .line 2403
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->getCapacity()I

    move-result v1

    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    sub-int/2addr v1, v2

    iget p0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    sub-int/2addr v1, p0

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/IntStack;->push(I)V

    return-void
.end method

.method private final slotIndex([II)I
    .locals 1

    .line 2979
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->getCapacity()I

    move-result v0

    if-lt p2, v0, :cond_0

    iget-object p1, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    array-length p1, p1

    iget p0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    sub-int/2addr p1, p0

    goto :goto_0

    .line 2980
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/runtime/SlotTableKt;->access$slotAnchor([II)I

    move-result p1

    iget p2, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    array-length v0, v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/compose/runtime/SlotWriter;->dataAnchorToDataIndex(III)I

    move-result p1

    :goto_0
    return p1
.end method

.method private final startGroup(ILjava/lang/Object;ZLjava/lang/Object;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v10, p4

    iget v2, v0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    const/4 v11, 0x0

    const/4 v3, 0x1

    if-lez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v11

    :goto_0
    iget-object v4, v0, Landroidx/compose/runtime/SlotWriter;->nodeCountStack:Landroidx/compose/runtime/IntStack;

    iget v5, v0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    .line 1607
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/IntStack;->push(I)V

    if-eqz v2, :cond_7

    .line 1610
    invoke-direct {p0, v3}, Landroidx/compose/runtime/SlotWriter;->insertGroups(I)V

    iget v12, v0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 1612
    invoke-direct {p0, v12}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v4

    .line 1613
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v2, :cond_1

    move v13, v3

    goto :goto_1

    :cond_1
    move v13, v11

    :goto_1
    if-nez p3, :cond_2

    .line 1614
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-eq v10, v2, :cond_2

    move v14, v3

    goto :goto_2

    :cond_2
    move v14, v11

    :goto_2
    iget-object v2, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    iget v8, v0, Landroidx/compose/runtime/SlotWriter;->parent:I

    iget v9, v0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    move v3, v4

    move/from16 v4, p1

    move/from16 v5, p3

    move v6, v13

    move v7, v14

    .line 1615
    invoke-static/range {v2 .. v9}, Landroidx/compose/runtime/SlotTableKt;->access$initGroup([IIIZZZII)V

    iget v2, v0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    iput v2, v0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    add-int v2, p3, v13

    add-int/2addr v2, v14

    if-lez v2, :cond_6

    .line 1630
    invoke-direct {p0, v2, v12}, Landroidx/compose/runtime/SlotWriter;->insertSlots(II)V

    iget-object v2, v0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    iget v3, v0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    if-eqz p3, :cond_3

    add-int/lit8 v4, v3, 0x1

    .line 1633
    aput-object v10, v2, v3

    move v3, v4

    :cond_3
    if-eqz v13, :cond_4

    add-int/lit8 v4, v3, 0x1

    .line 1634
    aput-object v1, v2, v3

    move v3, v4

    :cond_4
    if-eqz v14, :cond_5

    add-int/lit8 v1, v3, 0x1

    .line 1635
    aput-object v10, v2, v3

    move v3, v1

    :cond_5
    iput v3, v0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    :cond_6
    iput v11, v0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    add-int/lit8 v1, v12, 0x1

    iput v12, v0, Landroidx/compose/runtime/SlotWriter;->parent:I

    iput v1, v0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    goto :goto_4

    :cond_7
    iget v1, v0, Landroidx/compose/runtime/SlotWriter;->parent:I

    iget-object v2, v0, Landroidx/compose/runtime/SlotWriter;->startStack:Landroidx/compose/runtime/IntStack;

    .line 1645
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/IntStack;->push(I)V

    .line 1646
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->saveCurrentGroupEnd()V

    iget v1, v0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 1648
    invoke-direct {p0, v1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v2

    .line 1649
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    if-eqz p3, :cond_8

    .line 1651
    invoke-virtual {p0, v10}, Landroidx/compose/runtime/SlotWriter;->updateNode(Ljava/lang/Object;)V

    goto :goto_3

    .line 1653
    :cond_8
    invoke-virtual {p0, v10}, Landroidx/compose/runtime/SlotWriter;->updateAux(Ljava/lang/Object;)V

    :cond_9
    :goto_3
    iget-object v4, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1655
    invoke-direct {p0, v4, v2}, Landroidx/compose/runtime/SlotWriter;->slotIndex([II)I

    move-result v4

    iput v4, v0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    iget-object v4, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    iget v5, v0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    add-int/2addr v5, v3

    .line 1657
    invoke-direct {p0, v5}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v3

    .line 1656
    invoke-direct {p0, v4, v3}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v3

    iput v3, v0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    iget-object v3, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1659
    invoke-static {v3, v2}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount([II)I

    move-result v3

    iput v3, v0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    iput v1, v0, Landroidx/compose/runtime/SlotWriter;->parent:I

    add-int/lit8 v3, v1, 0x1

    iput v3, v0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    iget-object v3, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1663
    invoke-static {v3, v2}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v2

    add-int/2addr v1, v2

    :goto_4
    iput v1, v0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    return-void
.end method

.method private final updateAnchors(II)V
    .locals 4

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    .line 2742
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->getCapacity()I

    move-result v1

    sub-int/2addr v1, v0

    const-string v0, "anchors[index]"

    if-ge p1, p2, :cond_0

    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 2747
    invoke-static {v2, p1, v1}, Landroidx/compose/runtime/SlotTableKt;->access$locationOf(Ljava/util/ArrayList;II)I

    move-result p1

    :goto_0
    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 2748
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 2749
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/compose/runtime/Anchor;

    .line 2750
    invoke-virtual {v2}, Landroidx/compose/runtime/Anchor;->getLocation$runtime_release()I

    move-result v3

    if-gez v3, :cond_1

    add-int/2addr v3, v1

    if-ge v3, p2, :cond_1

    .line 2754
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/Anchor;->setLocation$runtime_release(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 2762
    invoke-static {p1, p2, v1}, Landroidx/compose/runtime/SlotTableKt;->access$locationOf(Ljava/util/ArrayList;II)I

    move-result p1

    :goto_1
    iget-object p2, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 2763
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    iget-object p2, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 2764
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/compose/runtime/Anchor;

    .line 2765
    invoke-virtual {p2}, Landroidx/compose/runtime/Anchor;->getLocation$runtime_release()I

    move-result v2

    if-ltz v2, :cond_1

    sub-int v2, v1, v2

    neg-int v2, v2

    .line 2767
    invoke-virtual {p2, v2}, Landroidx/compose/runtime/Anchor;->setLocation$runtime_release(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private final updateContainsMark(I)V
    .locals 3

    if-ltz p1, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->pendingRecalculateMarks:Landroidx/compose/runtime/PrioritySet;

    if-nez v0, :cond_0

    .line 2360
    new-instance v0, Landroidx/compose/runtime/PrioritySet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Landroidx/compose/runtime/PrioritySet;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/runtime/SlotWriter;->pendingRecalculateMarks:Landroidx/compose/runtime/PrioritySet;

    .line 2361
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/PrioritySet;->add(I)V

    :cond_1
    return-void
.end method

.method private final updateContainsMarkNow(ILandroidx/compose/runtime/PrioritySet;)V
    .locals 3

    .line 2366
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    .line 2367
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->childContainsAnyMarks(I)Z

    move-result v1

    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2368
    invoke-static {v2, v0}, Landroidx/compose/runtime/SlotTableKt;->access$containsMark([II)Z

    move-result v2

    if-eq v2, v1, :cond_0

    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2370
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$updateContainsMark([IIZ)V

    .line 2371
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->parent(I)I

    move-result p0

    if-ltz p0, :cond_0

    .line 2372
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/PrioritySet;->add(I)V

    :cond_0
    return-void
.end method

.method private final updateDataIndex([III)V
    .locals 3

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 2985
    array-length v2, v2

    invoke-direct {p0, p3, v0, v1, v2}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAnchor(IIII)I

    move-result p0

    .line 2983
    invoke-static {p1, p2, p0}, Landroidx/compose/runtime/SlotTableKt;->access$updateDataAnchor([III)V

    return-void
.end method

.method private final updateNodeOfGroup(ILjava/lang/Object;)V
    .locals 3

    .line 2730
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2731
    array-length v2, v1

    if-ge v0, v2, :cond_0

    invoke-static {v1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object p1, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2734
    invoke-direct {p0, v1, v0}, Landroidx/compose/runtime/SlotWriter;->nodeIndex([II)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result p0

    aput-object p2, p1, p0

    return-void

    .line 2732
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Updating the node of a group at "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " that was not created with as a node group"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3602
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final addToGroupSizeAlongSpine(II)V
    .locals 2

    :goto_0
    if-lez p1, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2283
    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v1

    add-int/2addr v1, p2

    invoke-static {v0, p1, v1}, Landroidx/compose/runtime/SlotTableKt;->access$updateGroupSize([III)V

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2284
    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor([II)I

    move-result p1

    .line 2285
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->parentAnchorToIndex(I)I

    move-result p1

    .line 2286
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result p1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final advanceBy(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_5

    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    if-gtz v2, :cond_4

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    add-int/2addr v2, p1

    iget p1, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    if-lt v2, p1, :cond_2

    iget p1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    if-gt v2, p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    iput v2, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    iget-object p1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1512
    invoke-direct {p0, v2}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result p1

    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    return-void

    .line 1509
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Cannot seek outside the current group ("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3510
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    .line 1504
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot call seek() while inserting"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    const-string p0, "Cannot seek backwards"

    .line 3505
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public final anchor(I)Landroidx/compose/runtime/Anchor;
    .locals 4

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 2327
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v1

    .line 3584
    invoke-static {v0, p1, v1}, Landroidx/compose/runtime/SlotTableKt;->access$search(Ljava/util/ArrayList;II)I

    move-result v1

    if-gez v1, :cond_1

    .line 2328
    new-instance v2, Landroidx/compose/runtime/Anchor;

    iget v3, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    if-gt p1, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result p0

    sub-int/2addr p0, p1

    neg-int p1, p0

    :goto_0
    invoke-direct {v2, p1}, Landroidx/compose/runtime/Anchor;-><init>(I)V

    add-int/lit8 v1, v1, 0x1

    neg-int p0, v1

    .line 3587
    invoke-virtual {v0, p0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 3589
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "get(location)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p0

    check-cast v2, Landroidx/compose/runtime/Anchor;

    :goto_1
    return-object v2
.end method

.method public final anchorIndex(Landroidx/compose/runtime/Anchor;)I
    .locals 1

    const-string v0, "anchor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2389
    invoke-virtual {p1}, Landroidx/compose/runtime/Anchor;->getLocation$runtime_release()I

    move-result p1

    if-gez p1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result p0

    add-int/2addr p1, p0

    :cond_0
    return p1
.end method

.method public final bashGroup$runtime_release()V
    .locals 1

    .line 1743
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->startGroup()V

    .line 1744
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->isGroupEnd()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x3

    .line 1745
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotWriter;->insertParentGroup(I)V

    .line 1746
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->skipGroup()I

    goto :goto_0

    .line 1748
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->endGroup()I

    return-void
.end method

.method public final beginInsert()V
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    if-nez v0, :cond_0

    .line 1538
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->saveCurrentGroupEnd()V

    :cond_0
    return-void
.end method

.method public final close()V
    .locals 9

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/SlotWriter;->closed:Z

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->startStack:Landroidx/compose/runtime/IntStack;

    .line 1338
    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1340
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/runtime/SlotWriter;->moveGroupGapTo(I)V

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 1341
    array-length v0, v0

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    invoke-direct {p0, v0, v1}, Landroidx/compose/runtime/SlotWriter;->moveSlotGapTo(II)V

    .line 1342
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->clearSlotGap()V

    .line 1343
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->recalculateMarks()V

    :cond_0
    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->table:Landroidx/compose/runtime/SlotTable;

    iget-object v4, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    iget v5, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    iget-object v6, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    iget v7, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    iget-object v8, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    move-object v3, p0

    .line 1345
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/runtime/SlotTable;->close$runtime_release(Landroidx/compose/runtime/SlotWriter;[II[Ljava/lang/Object;ILjava/util/ArrayList;)V

    return-void
.end method

.method public final endGroup()I
    .locals 10

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget v3, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    iget v4, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    iget v5, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    .line 1676
    invoke-direct {p0, v5}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v6

    iget v7, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    sub-int v8, v3, v5

    iget-object v9, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1679
    invoke-static {v9, v6}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result v9

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1681
    invoke-static {v0, v6, v8}, Landroidx/compose/runtime/SlotTableKt;->access$updateGroupSize([III)V

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1682
    invoke-static {v0, v6, v7}, Landroidx/compose/runtime/SlotTableKt;->access$updateNodeCount([III)V

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->nodeCountStack:Landroidx/compose/runtime/IntStack;

    .line 1683
    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v0

    if-eqz v9, :cond_1

    goto :goto_1

    :cond_1
    move v1, v7

    :goto_1
    add-int/2addr v0, v1

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1684
    invoke-direct {p0, v0, v5}, Landroidx/compose/runtime/SlotWriter;->parent([II)I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    goto/16 :goto_6

    :cond_2
    if-ne v3, v4, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    if-eqz v1, :cond_d

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1690
    invoke-static {v0, v6}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1691
    invoke-static {v1, v6}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount([II)I

    move-result v1

    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1692
    invoke-static {v3, v6, v8}, Landroidx/compose/runtime/SlotTableKt;->access$updateGroupSize([III)V

    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1693
    invoke-static {v3, v6, v7}, Landroidx/compose/runtime/SlotTableKt;->access$updateNodeCount([III)V

    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->startStack:Landroidx/compose/runtime/IntStack;

    .line 1694
    invoke-virtual {v3}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v3

    .line 1695
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->restoreCurrentGroupEnd()I

    iput v3, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    iget-object v4, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1697
    invoke-direct {p0, v4, v5}, Landroidx/compose/runtime/SlotWriter;->parent([II)I

    move-result v4

    iget-object v5, p0, Landroidx/compose/runtime/SlotWriter;->nodeCountStack:Landroidx/compose/runtime/IntStack;

    .line 1698
    invoke-virtual {v5}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v5

    iput v5, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    if-ne v4, v3, :cond_5

    if-eqz v9, :cond_4

    goto :goto_3

    :cond_4
    sub-int v2, v7, v1

    :goto_3
    add-int/2addr v5, v2

    iput v5, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    goto :goto_6

    :cond_5
    sub-int/2addr v8, v0

    if-eqz v9, :cond_6

    move v0, v2

    goto :goto_4

    :cond_6
    sub-int v0, v7, v1

    :goto_4
    if-nez v8, :cond_7

    if-eqz v0, :cond_c

    :cond_7
    :goto_5
    if-eqz v4, :cond_c

    if-eq v4, v3, :cond_c

    if-nez v0, :cond_8

    if-eqz v8, :cond_c

    .line 1718
    :cond_8
    invoke-direct {p0, v4}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v1

    if-eqz v8, :cond_9

    iget-object v5, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1720
    invoke-static {v5, v1}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v5

    add-int/2addr v5, v8

    iget-object v6, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1721
    invoke-static {v6, v1, v5}, Landroidx/compose/runtime/SlotTableKt;->access$updateGroupSize([III)V

    :cond_9
    if-eqz v0, :cond_a

    iget-object v5, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1726
    invoke-static {v5, v1}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount([II)I

    move-result v6

    add-int/2addr v6, v0

    .line 1724
    invoke-static {v5, v1, v6}, Landroidx/compose/runtime/SlotTableKt;->access$updateNodeCount([III)V

    :cond_a
    iget-object v5, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1729
    invoke-static {v5, v1}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result v1

    if-eqz v1, :cond_b

    move v0, v2

    :cond_b
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1730
    invoke-direct {p0, v1, v4}, Landroidx/compose/runtime/SlotWriter;->parent([II)I

    move-result v4

    goto :goto_5

    :cond_c
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    :goto_6
    return v7

    :cond_d
    const-string p0, "Expected to be at the end of a group"

    .line 3525
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public final endInsert()V
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->nodeCountStack:Landroidx/compose/runtime/IntStack;

    .line 1548
    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->getSize()I

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->startStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v1}, Landroidx/compose/runtime/IntStack;->getSize()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1551
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->restoreCurrentGroupEnd()I

    goto :goto_1

    :cond_1
    const-string/jumbo p0, "startGroup/endGroup mismatch while inserting"

    .line 3515
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    return-void

    .line 1546
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unbalanced begin/end insert"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final ensureStarted(I)V
    .locals 4

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_4

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    if-eq v0, p1, :cond_3

    if-lt p1, v0, :cond_1

    iget v3, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    if-ge p1, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 1775
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->startGroup()V

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    iput v2, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    goto :goto_2

    .line 1768
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Started group at "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " must be a subgroup of the group at "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3535
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_3
    :goto_2
    return-void

    :cond_4
    const-string p0, "Cannot call ensureStarted() while inserting"

    .line 3530
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public final ensureStarted(Landroidx/compose/runtime/Anchor;)V
    .locals 1

    const-string v0, "anchor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1782
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/Anchor;->toIndexFor(Landroidx/compose/runtime/SlotWriter;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->ensureStarted(I)V

    return-void
.end method

.method public final getClosed()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/runtime/SlotWriter;->closed:Z

    return p0
.end method

.method public final getCurrentGroup()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    return p0
.end method

.method public final getParent()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    return p0
.end method

.method public final getSize$runtime_release()I
    .locals 1

    .line 2960
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->getCapacity()I

    move-result v0

    iget p0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getTable$runtime_release()Landroidx/compose/runtime/SlotTable;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/SlotWriter;->table:Landroidx/compose/runtime/SlotTable;

    return-object p0
.end method

.method public final groupAux(I)Ljava/lang/Object;
    .locals 2

    .line 1266
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result p1

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1267
    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$hasAux([II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, v1, p1}, Landroidx/compose/runtime/SlotWriter;->auxIndex([II)I

    move-result p0

    aget-object p0, v0, p0

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final groupKey(I)I
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1247
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result p0

    invoke-static {v0, p0}, Landroidx/compose/runtime/SlotTableKt;->access$key([II)I

    move-result p0

    return p0
.end method

.method public final groupObjectKey(I)Ljava/lang/Object;
    .locals 1

    .line 1253
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result p1

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1254
    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$hasObjectKey([II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    iget-object p0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$objectKeyIndex([II)I

    move-result p0

    aget-object p0, v0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final groupSize(I)I
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1260
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result p0

    invoke-static {v0, p0}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result p0

    return p0
.end method

.method public final groupSlots()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 1824
    invoke-direct {p0, v1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 1826
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {p0, v2}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v2

    .line 1825
    invoke-direct {p0, v1, v2}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v1

    .line 1828
    new-instance v2, Landroidx/compose/runtime/SlotWriter$groupSlots$1;

    invoke-direct {v2, v0, v1, p0}, Landroidx/compose/runtime/SlotWriter$groupSlots$1;-><init>(IILandroidx/compose/runtime/SlotWriter;)V

    check-cast v2, Ljava/util/Iterator;

    return-object v2
.end method

.method public final groupsAsString()Ljava/lang/String;
    .locals 4

    .line 2844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2845
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 2846
    invoke-direct {p0, v0, v2}, Landroidx/compose/runtime/SlotWriter;->groupAsString(Ljava/lang/StringBuilder;I)V

    const/16 v3, 0xa

    .line 2847
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2844
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final indexInCurrentGroup(I)Z
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 1274
    invoke-virtual {p0, p1, v0}, Landroidx/compose/runtime/SlotWriter;->indexInGroup(II)Z

    move-result p0

    return p0
.end method

.method public final indexInGroup(II)Z
    .locals 4

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    iget p0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->startStack:Landroidx/compose/runtime/IntStack;

    .line 1282
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/IntStack;->peekOr(I)I

    move-result v0

    if-le p2, v0, :cond_1

    invoke-virtual {p0, p2}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    move-result p0

    :goto_0
    add-int/2addr p0, p2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->startStack:Landroidx/compose/runtime/IntStack;

    .line 1284
    invoke-virtual {v0, p2}, Landroidx/compose/runtime/IntStack;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_2

    .line 1286
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    move-result p0

    goto :goto_0

    .line 1287
    :cond_2
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->getCapacity()I

    move-result v2

    iget v3, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    sub-int/2addr v2, v3

    iget-object p0, p0, Landroidx/compose/runtime/SlotWriter;->endStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/IntStack;->peek(I)I

    move-result p0

    sub-int p0, v2, p0

    :goto_1
    if-le p1, p2, :cond_3

    if-ge p1, p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public final indexInParent(I)Z
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    if-le p1, v0, :cond_0

    iget p0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    if-lt p1, p0, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-nez p1, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final insertAux(Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    .line 1400
    invoke-direct {p0, v0}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v2

    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1401
    invoke-static {v3, v2}, Landroidx/compose/runtime/SlotTableKt;->access$hasAux([II)Z

    move-result v3

    xor-int/2addr v3, v1

    if-eqz v3, :cond_4

    .line 1402
    invoke-direct {p0, v1, v0}, Landroidx/compose/runtime/SlotWriter;->insertSlots(II)V

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1403
    invoke-direct {p0, v0, v2}, Landroidx/compose/runtime/SlotWriter;->auxIndex([II)I

    move-result v0

    .line 1404
    invoke-direct {p0, v0}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result v3

    iget v4, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    if-le v4, v0, :cond_3

    sub-int/2addr v4, v0

    const/4 v0, 0x3

    if-ge v4, v0, :cond_2

    if-le v4, v1, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    add-int/lit8 v4, v3, 0x2

    add-int/lit8 v5, v3, 0x1

    .line 1413
    aget-object v5, v0, v5

    aput-object v5, v0, v4

    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    add-int/lit8 v4, v3, 0x1

    .line 1415
    aget-object v5, v0, v3

    aput-object v5, v0, v4

    goto :goto_1

    .line 1411
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Moving more than two slot not supported"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1417
    invoke-static {v0, v2}, Landroidx/compose/runtime/SlotTableKt;->access$addAux([II)V

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 1418
    aput-object p1, v0, v3

    iget p1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    add-int/2addr p1, v1

    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    return-void

    :cond_4
    const-string p0, "Group already has auxiliary data"

    .line 3489
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_5
    const-string p0, "Cannot insert auxiliary data when not inserting"

    .line 3484
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public final insertParentGroup(I)V
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_3

    .line 2236
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/SlotWriter;->isGroupEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2237
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/SlotWriter;->beginInsert()V

    .line 2238
    invoke-virtual/range {p0 .. p1}, Landroidx/compose/runtime/SlotWriter;->startGroup(I)V

    .line 2239
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/SlotWriter;->endGroup()I

    .line 2240
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/SlotWriter;->endInsert()V

    goto :goto_2

    :cond_1
    iget v1, v0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    iget-object v4, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2243
    invoke-direct {v0, v4, v1}, Landroidx/compose/runtime/SlotWriter;->parent([II)I

    move-result v4

    .line 2244
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    move-result v5

    add-int v13, v4, v5

    sub-int v14, v13, v1

    move v5, v1

    :goto_1
    if-ge v5, v13, :cond_2

    .line 2249
    invoke-direct {v0, v5}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v6

    iget-object v7, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2250
    invoke-static {v7, v6}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount([II)I

    move-result v7

    add-int/2addr v2, v7

    iget-object v7, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2251
    invoke-static {v7, v6}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_1

    :cond_2
    iget-object v5, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2253
    invoke-direct {v0, v1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v6

    invoke-static {v5, v6}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchor([II)I

    move-result v12

    .line 2254
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/SlotWriter;->beginInsert()V

    .line 2255
    invoke-direct {v0, v3}, Landroidx/compose/runtime/SlotWriter;->insertGroups(I)V

    .line 2256
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/SlotWriter;->endInsert()V

    .line 2257
    invoke-direct {v0, v1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v15

    iget-object v5, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v6, v15

    move/from16 v7, p1

    move v11, v4

    .line 2258
    invoke-static/range {v5 .. v12}, Landroidx/compose/runtime/SlotTableKt;->access$initGroup([IIIZZZII)V

    iget-object v5, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    add-int/2addr v14, v3

    .line 2269
    invoke-static {v5, v15, v14}, Landroidx/compose/runtime/SlotTableKt;->access$updateGroupSize([III)V

    iget-object v5, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2270
    invoke-static {v5, v15, v2}, Landroidx/compose/runtime/SlotTableKt;->access$updateNodeCount([III)V

    .line 2273
    invoke-direct {v0, v4}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v2

    .line 2274
    invoke-virtual {v0, v2, v3}, Landroidx/compose/runtime/SlotWriter;->addToGroupSizeAlongSpine(II)V

    .line 2275
    invoke-direct {v0, v4, v13, v1}, Landroidx/compose/runtime/SlotWriter;->fixParentAnchorsFor(III)V

    iput v13, v0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    :goto_2
    return-void

    :cond_3
    const-string v0, "Writer cannot be inserting"

    .line 3573
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public final isGroupEnd()Z
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    iget p0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isNode()Z
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1232
    invoke-direct {p0, v0}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result p0

    invoke-static {v1, p0}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isNode(I)Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1237
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result p0

    invoke-static {v0, p0}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result p0

    return p0
.end method

.method public final markGroup(I)V
    .locals 3

    .line 2332
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2333
    invoke-static {v1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$hasMark([II)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    const/4 v2, 0x1

    .line 2334
    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/SlotTableKt;->access$updateMark([IIZ)V

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2335
    invoke-static {v1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$containsMark([II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2337
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->parent(I)I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->updateContainsMark(I)V

    :cond_0
    return-void
.end method

.method public final moveFrom(Landroidx/compose/runtime/SlotTable;IZ)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/SlotTable;",
            "IZ)",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/Anchor;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "table"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2188
    :goto_0
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    if-nez p2, :cond_1

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->table:Landroidx/compose/runtime/SlotTable;

    .line 2192
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getGroupsSize()I

    move-result v0

    if-nez v0, :cond_1

    .line 2193
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getGroups()[I

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getGroupsSize()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    iget-object v5, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    iget-object v7, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 2200
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getGroups()[I

    move-result-object p2

    .line 2201
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getGroupsSize()I

    move-result p3

    .line 2202
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getSlots()[Ljava/lang/Object;

    move-result-object v0

    .line 2203
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getSlotsSize()I

    move-result v1

    iput-object p2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    iput-object v0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 2206
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getAnchors$runtime_release()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    iput p3, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    .line 2208
    array-length p2, p2

    div-int/lit8 p2, p2, 0x5

    sub-int/2addr p2, p3

    iput p2, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    .line 2210
    array-length p2, v0

    sub-int/2addr p2, v1

    iput p2, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    iput p3, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    .line 2213
    invoke-virtual/range {v2 .. v7}, Landroidx/compose/runtime/SlotTable;->setTo$runtime_release([II[Ljava/lang/Object;ILjava/util/ArrayList;)V

    iget-object p0, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 2214
    check-cast p0, Ljava/util/List;

    return-object p0

    .line 3563
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object p1

    :try_start_0
    sget-object v0, Landroidx/compose/runtime/SlotWriter;->Companion:Landroidx/compose/runtime/SlotWriter$Companion;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, p1

    move v2, p2

    move-object v3, p0

    move v6, p3

    .line 2218
    invoke-static/range {v0 .. v6}, Landroidx/compose/runtime/SlotWriter$Companion;->access$moveGroup(Landroidx/compose/runtime/SlotWriter$Companion;Landroidx/compose/runtime/SlotWriter;ILandroidx/compose/runtime/SlotWriter;ZZZ)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3568
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotWriter;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroidx/compose/runtime/SlotWriter;->close()V

    throw p0
.end method

.method public final moveGroup(I)V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_c

    if-ltz p1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const-string v4, "Parameter offset is out of bounds"

    if-eqz v1, :cond_b

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget v1, v0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    iget v5, v0, Landroidx/compose/runtime/SlotWriter;->parent:I

    iget v6, v0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    move/from16 v7, p1

    move v8, v1

    :goto_2
    if-lez v7, :cond_5

    iget-object v9, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1854
    invoke-direct {v0, v8}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v10

    .line 1853
    invoke-static {v9, v10}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v9

    add-int/2addr v8, v9

    if-gt v8, v6, :cond_3

    move v9, v3

    goto :goto_3

    :cond_3
    move v9, v2

    :goto_3
    if-eqz v9, :cond_4

    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 3555
    :cond_4
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_5
    iget-object v4, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1861
    invoke-direct {v0, v8}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v6

    .line 1860
    invoke-static {v4, v6}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v4

    iget v6, v0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    iget-object v7, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1864
    invoke-direct {v0, v8}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v9

    invoke-direct {v0, v7, v9}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v7

    iget-object v9, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    add-int/2addr v8, v4

    .line 1866
    invoke-direct {v0, v8}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v10

    .line 1865
    invoke-direct {v0, v9, v10}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v9

    sub-int v10, v9, v7

    iget v11, v0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    sub-int/2addr v11, v3

    .line 1899
    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-direct {v0, v10, v11}, Landroidx/compose/runtime/SlotWriter;->insertSlots(II)V

    .line 1902
    invoke-direct {v0, v4}, Landroidx/compose/runtime/SlotWriter;->insertGroups(I)V

    iget-object v11, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1906
    invoke-direct {v0, v8}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v12

    mul-int/lit8 v12, v12, 0x5

    .line 1908
    invoke-direct {v0, v1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v13

    mul-int/lit8 v13, v13, 0x5

    mul-int/lit8 v14, v4, 0x5

    add-int/2addr v14, v12

    .line 1909
    invoke-static {v11, v11, v13, v12, v14}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    if-lez v10, :cond_6

    iget-object v12, v0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    add-int v13, v7, v10

    .line 1922
    invoke-direct {v0, v13}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result v13

    add-int/2addr v9, v10

    .line 1923
    invoke-direct {v0, v9}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result v9

    .line 1919
    invoke-static {v12, v12, v6, v13, v9}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    :cond_6
    add-int/2addr v7, v10

    sub-int v6, v7, v6

    iget v9, v0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    iget v12, v0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    iget-object v13, v0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 1930
    array-length v13, v13

    iget v14, v0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    add-int v15, v1, v4

    move v2, v1

    :goto_4
    if-ge v2, v15, :cond_8

    .line 1933
    invoke-direct {v0, v2}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v3

    .line 1934
    invoke-direct {v0, v11, v3}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v16

    move/from16 p1, v9

    sub-int v9, v16, v6

    move/from16 v16, v6

    if-ge v14, v3, :cond_7

    const/4 v6, 0x0

    goto :goto_5

    :cond_7
    move/from16 v6, p1

    .line 1936
    :goto_5
    invoke-direct {v0, v9, v6, v12, v13}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAnchor(IIII)I

    move-result v6

    .line 1942
    invoke-direct {v0, v11, v3, v6}, Landroidx/compose/runtime/SlotWriter;->updateDataIndex([III)V

    add-int/lit8 v2, v2, 0x1

    move/from16 v9, p1

    move/from16 v6, v16

    const/4 v3, 0x1

    goto :goto_4

    .line 1946
    :cond_8
    invoke-direct {v0, v8, v1, v4}, Landroidx/compose/runtime/SlotWriter;->moveAnchors(III)V

    .line 1949
    invoke-direct {v0, v8, v4}, Landroidx/compose/runtime/SlotWriter;->removeGroups(II)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_a

    iget v2, v0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    .line 1953
    invoke-direct {v0, v5, v2, v1}, Landroidx/compose/runtime/SlotWriter;->fixParentAnchorsFor(III)V

    if-lez v10, :cond_9

    sub-int/2addr v8, v3

    .line 1957
    invoke-direct {v0, v7, v10, v8}, Landroidx/compose/runtime/SlotWriter;->removeSlots(III)V

    :cond_9
    return-void

    :cond_a
    const-string v0, "Unexpectedly removed anchors"

    .line 3560
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 3550
    :cond_b
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_c
    const-string v0, "Cannot move a group while inserting"

    .line 3545
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public final moveIntoGroupFrom(ILandroidx/compose/runtime/SlotTable;I)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/runtime/SlotTable;",
            "I)",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/Anchor;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "table"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    if-gtz v0, :cond_0

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    add-int/2addr v0, p1

    .line 2300
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    .line 2304
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->advanceBy(I)V

    .line 2305
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->startGroup()V

    .line 2306
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->beginInsert()V

    .line 3576
    invoke-virtual {p2}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object p1

    :try_start_0
    sget-object v3, Landroidx/compose/runtime/SlotWriter;->Companion:Landroidx/compose/runtime/SlotWriter$Companion;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v10, 0x20

    const/4 v11, 0x0

    move-object v4, p1

    move v5, p3

    move-object v6, p0

    .line 2308
    invoke-static/range {v3 .. v11}, Landroidx/compose/runtime/SlotWriter$Companion;->moveGroup$default(Landroidx/compose/runtime/SlotWriter$Companion;Landroidx/compose/runtime/SlotWriter;ILandroidx/compose/runtime/SlotWriter;ZZZILjava/lang/Object;)Ljava/util/List;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3581
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotWriter;->close()V

    .line 2316
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->endInsert()V

    .line 2317
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->endGroup()I

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    iput v2, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    return-object p2

    :catchall_0
    move-exception p0

    .line 3581
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotWriter;->close()V

    throw p0
.end method

.method public final moveTo(Landroidx/compose/runtime/Anchor;ILandroidx/compose/runtime/SlotWriter;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Anchor;",
            "I",
            "Landroidx/compose/runtime/SlotWriter;",
            ")",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/Anchor;",
            ">;"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v3, p3

    const-string v0, "anchor"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "writer"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2138
    iget v0, v3, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-lez v0, :cond_0

    move v0, v10

    goto :goto_0

    :cond_0
    move v0, v11

    :goto_0
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    iget v0, v9, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    if-nez v0, :cond_1

    move v0, v10

    goto :goto_1

    :cond_1
    move v0, v11

    .line 2139
    :goto_1
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    .line 2140
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/Anchor;->getValid()Z

    move-result v0

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    .line 2141
    invoke-virtual/range {p0 .. p1}, Landroidx/compose/runtime/SlotWriter;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result v0

    add-int v2, v0, p2

    iget v12, v9, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    if-gt v12, v2, :cond_2

    iget v0, v9, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    if-ge v2, v0, :cond_2

    move v0, v10

    goto :goto_2

    :cond_2
    move v0, v11

    .line 2143
    :goto_2
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    .line 2144
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/SlotWriter;->parent(I)I

    move-result v13

    .line 2145
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    move-result v14

    .line 2146
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/SlotWriter;->isNode(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v15, v10

    goto :goto_3

    :cond_3
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/SlotWriter;->nodeCount(I)I

    move-result v0

    move v15, v0

    :goto_3
    sget-object v0, Landroidx/compose/runtime/SlotWriter;->Companion:Landroidx/compose/runtime/SlotWriter$Companion;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    .line 2147
    invoke-static/range {v0 .. v8}, Landroidx/compose/runtime/SlotWriter$Companion;->moveGroup$default(Landroidx/compose/runtime/SlotWriter$Companion;Landroidx/compose/runtime/SlotWriter;ILandroidx/compose/runtime/SlotWriter;ZZZILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2155
    invoke-direct {v9, v13}, Landroidx/compose/runtime/SlotWriter;->updateContainsMark(I)V

    if-lez v15, :cond_4

    move v1, v10

    goto :goto_4

    :cond_4
    move v1, v11

    :goto_4
    if-lt v13, v12, :cond_7

    .line 2161
    invoke-direct {v9, v13}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v2

    iget-object v3, v9, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2162
    invoke-static {v3, v2}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v4

    sub-int/2addr v4, v14

    invoke-static {v3, v2, v4}, Landroidx/compose/runtime/SlotTableKt;->access$updateGroupSize([III)V

    if-eqz v1, :cond_6

    iget-object v3, v9, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2164
    invoke-static {v3, v2}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result v3

    if-eqz v3, :cond_5

    move v1, v11

    goto :goto_5

    :cond_5
    iget-object v3, v9, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2167
    invoke-static {v3, v2}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount([II)I

    move-result v4

    sub-int/2addr v4, v15

    invoke-static {v3, v2, v4}, Landroidx/compose/runtime/SlotTableKt;->access$updateNodeCount([III)V

    .line 2169
    :cond_6
    :goto_5
    invoke-virtual {v9, v13}, Landroidx/compose/runtime/SlotWriter;->parent(I)I

    move-result v13

    goto :goto_4

    :cond_7
    if-eqz v1, :cond_9

    iget v1, v9, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    if-lt v1, v15, :cond_8

    goto :goto_6

    :cond_8
    move v10, v11

    .line 2172
    :goto_6
    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    iget v1, v9, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    sub-int/2addr v1, v15

    iput v1, v9, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    :cond_9
    return-object v0
.end method

.method public final node(I)Ljava/lang/Object;
    .locals 2

    .line 1298
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result p1

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1299
    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1300
    invoke-direct {p0, v1, p1}, Landroidx/compose/runtime/SlotWriter;->nodeIndex([II)I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result p0

    aget-object p0, v0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final node(Landroidx/compose/runtime/Anchor;)Ljava/lang/Object;
    .locals 1

    const-string v0, "anchor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1307
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/Anchor;->toIndexFor(Landroidx/compose/runtime/SlotWriter;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->node(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final nodeCount(I)I
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1242
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result p0

    invoke-static {v0, p0}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount([II)I

    move-result p0

    return p0
.end method

.method public final parent(I)I
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1318
    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/SlotWriter;->parent([II)I

    move-result p0

    return p0
.end method

.method public final parent(Landroidx/compose/runtime/Anchor;)I
    .locals 1

    const-string v0, "anchor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1324
    invoke-virtual {p1}, Landroidx/compose/runtime/Anchor;->getValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/SlotWriter;->parent([II)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final removeGroup()Z
    .locals 6

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 1802
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->skipGroup()I

    move-result v2

    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->pendingRecalculateMarks:Landroidx/compose/runtime/PrioritySet;

    if-eqz v3, :cond_1

    .line 1807
    :goto_1
    invoke-virtual {v3}, Landroidx/compose/runtime/PrioritySet;->isNotEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroidx/compose/runtime/PrioritySet;->peek()I

    move-result v4

    if-lt v4, v0, :cond_1

    .line 1808
    invoke-virtual {v3}, Landroidx/compose/runtime/PrioritySet;->takeMax()I

    goto :goto_1

    :cond_1
    iget v3, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    sub-int/2addr v3, v0

    .line 1812
    invoke-direct {p0, v0, v3}, Landroidx/compose/runtime/SlotWriter;->removeGroups(II)Z

    move-result v3

    iget v4, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    sub-int/2addr v4, v1

    add-int/lit8 v5, v0, -0x1

    .line 1813
    invoke-direct {p0, v1, v4, v5}, Landroidx/compose/runtime/SlotWriter;->removeSlots(III)V

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    sub-int/2addr v0, v2

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    return v3

    :cond_2
    const-string p0, "Cannot remove group while inserting"

    .line 3540
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public final reset()V
    .locals 3

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 1362
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->recalculateMarks()V

    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 1364
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->getCapacity()I

    move-result v0

    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    sub-int/2addr v0, v2

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    return-void

    :cond_1
    const-string p0, "Cannot reset when inserting"

    .line 3474
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public final seek(Landroidx/compose/runtime/Anchor;)V
    .locals 1

    const-string v0, "anchor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1521
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/Anchor;->toIndexFor(Landroidx/compose/runtime/SlotWriter;)I

    move-result p1

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->advanceBy(I)V

    return-void
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 1451
    invoke-direct {p0, v0}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1452
    invoke-direct {p0, v1, v0}, Landroidx/compose/runtime/SlotWriter;->slotIndex([II)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 1453
    invoke-direct {p0, v2}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v1

    add-int v2, v0, p1

    if-lt v2, v0, :cond_0

    if-ge v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 1459
    invoke-direct {p0, v2}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result p1

    iget-object p0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 1460
    aget-object v0, p0, p1

    .line 1461
    aput-object p2, p0, p1

    return-object v0

    .line 1457
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Write to an invalid slot index "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " for group "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3500
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    const/4 v2, 0x1

    if-gt v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    sub-int/2addr v0, v2

    .line 1444
    invoke-direct {p0, v0}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result p0

    aput-object p1, v1, p0

    return-void

    :cond_1
    const-string p0, "Writing to an invalid slot"

    .line 3495
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public final skip()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    const/4 v1, 0x1

    .line 1471
    invoke-direct {p0, v1, v0}, Landroidx/compose/runtime/SlotWriter;->insertSlots(II)V

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 1473
    invoke-direct {p0, v1}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public final skipGroup()I
    .locals 3

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 1788
    invoke-direct {p0, v0}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1789
    invoke-static {v2, v0}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1791
    invoke-direct {p0, v1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v1

    invoke-direct {p0, v2, v1}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v1

    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1792
    invoke-static {v1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {p0, v0}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount([II)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final skipToGroupEnd()V
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1529
    invoke-direct {p0, v0}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    invoke-direct {p0, v1, v0}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    return-void
.end method

.method public final slot(II)Ljava/lang/Object;
    .locals 2

    .line 1487
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1488
    invoke-direct {p0, v1, v0}, Landroidx/compose/runtime/SlotWriter;->slotIndex([II)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    add-int/lit8 p1, p1, 0x1

    .line 1489
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result p1

    invoke-direct {p0, v1, p1}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result p1

    add-int/2addr p2, v0

    if-gt v0, p2, :cond_0

    if-ge p2, p1, :cond_0

    .line 1494
    invoke-direct {p0, p2}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result p1

    iget-object p0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 1495
    aget-object p0, p0, p1

    return-object p0

    .line 1492
    :cond_0
    sget-object p0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final slot(Landroidx/compose/runtime/Anchor;I)Ljava/lang/Object;
    .locals 1

    const-string v0, "anchor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1480
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/SlotWriter;->slot(II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final startData(ILjava/lang/Object;)V
    .locals 2

    .line 1603
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Landroidx/compose/runtime/SlotWriter;->startGroup(ILjava/lang/Object;ZLjava/lang/Object;)V

    return-void
.end method

.method public final startData(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 1593
    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/compose/runtime/SlotWriter;->startGroup(ILjava/lang/Object;ZLjava/lang/Object;)V

    return-void
.end method

.method public final startGroup()V
    .locals 3

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 1560
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v0, v1, v2}, Landroidx/compose/runtime/SlotWriter;->startGroup(ILjava/lang/Object;ZLjava/lang/Object;)V

    return-void

    :cond_1
    const-string p0, "Key must be supplied when inserting"

    .line 3520
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public final startGroup(I)V
    .locals 3

    .line 1566
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Landroidx/compose/runtime/SlotWriter;->startGroup(ILjava/lang/Object;ZLjava/lang/Object;)V

    return-void
.end method

.method public final startGroup(ILjava/lang/Object;)V
    .locals 2

    .line 1575
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 1571
    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/compose/runtime/SlotWriter;->startGroup(ILjava/lang/Object;ZLjava/lang/Object;)V

    return-void
.end method

.method public final startNode(ILjava/lang/Object;)V
    .locals 2

    .line 1582
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/compose/runtime/SlotWriter;->startGroup(ILjava/lang/Object;ZLjava/lang/Object;)V

    return-void
.end method

.method public final startNode(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 1588
    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/compose/runtime/SlotWriter;->startGroup(ILjava/lang/Object;ZLjava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2392
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SlotWriter(current = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " gap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    iget p0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    add-int/2addr v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final update(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1375
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->skip()Ljava/lang/Object;

    move-result-object v0

    .line 1376
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->set(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final updateAux(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 1384
    invoke-direct {p0, v0}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1385
    invoke-static {v1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$hasAux([II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1388
    invoke-direct {p0, v2, v0}, Landroidx/compose/runtime/SlotWriter;->auxIndex([II)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result p0

    aput-object p1, v1, p0

    return-void

    :cond_0
    const-string p0, "Updating the data of a group that was not created with a data slot"

    .line 3479
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public final updateNode(Landroidx/compose/runtime/Anchor;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "anchor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1430
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/Anchor;->toIndexFor(Landroidx/compose/runtime/SlotWriter;)I

    move-result p1

    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/SlotWriter;->updateNodeOfGroup(ILjava/lang/Object;)V

    return-void
.end method

.method public final updateNode(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 1425
    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/SlotWriter;->updateNodeOfGroup(ILjava/lang/Object;)V

    return-void
.end method

.method public final updateParentNode(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    .line 1435
    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/SlotWriter;->updateNodeOfGroup(ILjava/lang/Object;)V

    return-void
.end method

.method public final verifyDataAnchors$runtime_release()V
    .locals 9

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 2912
    array-length v1, v1

    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    sub-int/2addr v1, v2

    .line 2913
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v3, v2, :cond_4

    .line 2914
    invoke-direct {p0, v3}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v6

    iget-object v7, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2915
    invoke-static {v7, v6}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchor([II)I

    move-result v7

    iget-object v8, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2916
    invoke-direct {p0, v8, v6}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v6

    if-lt v6, v4, :cond_3

    if-gt v6, v1, :cond_2

    if-gez v7, :cond_1

    if-nez v5, :cond_1

    if-ne v0, v3, :cond_0

    const/4 v4, 0x1

    move v5, v4

    goto :goto_1

    .line 2926
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Expected the slot gap owner to be "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " found gap at "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2925
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_0

    .line 2922
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Data index, "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", out of bound at "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2921
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2918
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Data index out of order at "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", previous = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", current = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2917
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-void
.end method

.method public final verifyParentAnchors$runtime_release()V
    .locals 7

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    .line 2938
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->getCapacity()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    const-string v4, "Expected a start relative anchor at "

    const/4 v5, -0x2

    if-ge v3, v0, :cond_1

    iget-object v6, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2940
    invoke-static {v6, v3}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor([II)I

    move-result v6

    if-le v6, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2942
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2941
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/2addr v1, v0

    :goto_1
    if-ge v1, v2, :cond_5

    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2946
    invoke-static {v3, v1}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor([II)I

    move-result v3

    .line 2947
    invoke-direct {p0, v3}, Landroidx/compose/runtime/SlotWriter;->parentAnchorToIndex(I)I

    move-result v6

    if-ge v6, v0, :cond_3

    if-le v3, v5, :cond_2

    goto :goto_2

    .line 2950
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2949
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-gt v3, v5, :cond_4

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2954
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Expected an end relative anchor at "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2953
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    return-void
.end method
