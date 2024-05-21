.class public abstract Lcom/chad/library/adapter/base/BaseQuickAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BaseQuickAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chad/library/adapter/base/BaseQuickAdapter$AnimationType;,
        Lcom/chad/library/adapter/base/BaseQuickAdapter$Companion;,
        Lcom/chad/library/adapter/base/BaseQuickAdapter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "TVH;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseQuickAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseQuickAdapter.kt\ncom/chad/library/adapter/base/BaseQuickAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,1362:1\n1#2:1363\n13579#3,2:1364\n*S KotlinDebug\n*F\n+ 1 BaseQuickAdapter.kt\ncom/chad/library/adapter/base/BaseQuickAdapter\n*L\n1052#1:1364,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008e\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0002\u0008\u0006\n\u0002\u0010\u001e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\t\n\u0002\u0008$\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008&\u0018\u0000 \u00ef\u0001*\u0004\u0008\u0000\u0010\u0001*\u0008\u0008\u0001\u0010\u0002*\u00020\u00032\u0008\u0012\u0004\u0012\u0002H\u00020\u0004:\u0004\u00ee\u0001\u00ef\u0001B#\u0008\u0007\u0012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006\u0012\u0010\u0008\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\tJ\u0010\u0010n\u001a\u00020o2\u0006\u0010p\u001a\u00020qH\u0002J\u0014\u0010r\u001a\u00020o2\u000c\u0008\u0001\u0010s\u001a\u00020t\"\u00020\u0006J\u0014\u0010u\u001a\u00020o2\u000c\u0008\u0001\u0010s\u001a\u00020t\"\u00020\u0006J\u0017\u0010v\u001a\u00020o2\u0008\u0008\u0001\u0010\u0007\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010wJ\u001f\u0010v\u001a\u00020o2\u0008\u0008\u0001\u0010x\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010yJ \u0010v\u001a\u00020o2\u0008\u0008\u0001\u0010x\u001a\u00020\u00062\u000c\u0010z\u001a\u0008\u0012\u0004\u0012\u00028\u00000{H\u0016J\u0018\u0010v\u001a\u00020o2\u000e\u0008\u0001\u0010z\u001a\u0008\u0012\u0004\u0012\u00028\u00000{H\u0016J%\u0010|\u001a\u00020\u00062\u0006\u0010}\u001a\u00020~2\u0008\u0008\u0002\u0010\u007f\u001a\u00020\u00062\t\u0008\u0002\u0010\u0080\u0001\u001a\u00020\u0006H\u0007J&\u0010\u0081\u0001\u001a\u00020\u00062\u0006\u0010}\u001a\u00020~2\u0008\u0008\u0002\u0010\u007f\u001a\u00020\u00062\t\u0008\u0002\u0010\u0080\u0001\u001a\u00020\u0006H\u0007J!\u0010\u0082\u0001\u001a\u00020o2\u0007\u0010\u0083\u0001\u001a\u00028\u00012\u0007\u0010\u0084\u0001\u001a\u00020\u0006H\u0014\u00a2\u0006\u0003\u0010\u0085\u0001J\t\u0010\u0086\u0001\u001a\u00020oH\u0002J\u0012\u0010\u0087\u0001\u001a\u00020o2\u0007\u0010\u0088\u0001\u001a\u00020\u0006H\u0004J \u0010\u0089\u0001\u001a\u00020o2\u0006\u0010p\u001a\u00028\u00012\u0007\u0010\u008a\u0001\u001a\u00028\u0000H$\u00a2\u0006\u0003\u0010\u008b\u0001J1\u0010\u0089\u0001\u001a\u00020o2\u0006\u0010p\u001a\u00028\u00012\u0007\u0010\u008a\u0001\u001a\u00028\u00002\u000f\u0010\u008c\u0001\u001a\n\u0012\u0005\u0012\u00030\u008e\u00010\u008d\u0001H\u0014\u00a2\u0006\u0003\u0010\u008f\u0001J\'\u0010\u0090\u0001\u001a\u0004\u0018\u00018\u00012\u000c\u0010\u0091\u0001\u001a\u0007\u0012\u0002\u0008\u00030\u0092\u00012\u0006\u0010}\u001a\u00020~H\u0002\u00a2\u0006\u0003\u0010\u0093\u0001J\u0017\u0010\u0094\u0001\u001a\u00028\u00012\u0006\u0010}\u001a\u00020~H\u0014\u00a2\u0006\u0003\u0010\u0095\u0001J#\u0010\u0094\u0001\u001a\u00028\u00012\u0008\u0010\u0096\u0001\u001a\u00030\u0097\u00012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006H\u0014\u00a2\u0006\u0003\u0010\u0098\u0001J\r\u0010\u0099\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0018J\r\u0010\u009a\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0018J\t\u0010\u009b\u0001\u001a\u00020\u0006H\u0014J\u0011\u0010\u009c\u0001\u001a\u00020\u00062\u0006\u0010x\u001a\u00020\u0006H\u0014J\u000f\u0010\u009d\u0001\u001a\u0008\u0012\u0004\u0012\u00028\u00000OH\u0007J\r\u0010\u009e\u0001\u001a\u0008\u0012\u0004\u0012\u00028\u00000OJ\u001e\u0010\u009f\u0001\u001a\t\u0012\u0002\u0008\u0003\u0018\u00010\u0092\u00012\u000c\u0010\u0091\u0001\u001a\u0007\u0012\u0002\u0008\u00030\u0092\u0001H\u0002J\u0019\u0010\u00a0\u0001\u001a\u00028\u00002\u0008\u0008\u0001\u0010x\u001a\u00020\u0006H\u0016\u00a2\u0006\u0003\u0010\u00a1\u0001J\t\u0010\u00a2\u0001\u001a\u00020\u0006H\u0016J\u0012\u0010\u00a3\u0001\u001a\u00030\u00a4\u00012\u0006\u0010x\u001a\u00020\u0006H\u0016J\u001b\u0010\u00a5\u0001\u001a\u0004\u0018\u00018\u00002\u0008\u0008\u0001\u0010x\u001a\u00020\u0006H\u0016\u00a2\u0006\u0003\u0010\u00a1\u0001J\u001a\u0010\u00a6\u0001\u001a\u00020\u00062\t\u0010\u008a\u0001\u001a\u0004\u0018\u00018\u0000H\u0016\u00a2\u0006\u0003\u0010\u00a7\u0001J\u0011\u0010\u00a8\u0001\u001a\u00020\u00062\u0006\u0010x\u001a\u00020\u0006H\u0016J\t\u0010\u00a9\u0001\u001a\u0004\u0018\u00010ZJ\t\u0010\u00aa\u0001\u001a\u0004\u0018\u00010\\J\t\u0010\u00ab\u0001\u001a\u0004\u0018\u00010^J\t\u0010\u00ac\u0001\u001a\u0004\u0018\u00010`J\u001c\u0010\u00ad\u0001\u001a\u0004\u0018\u00010~2\u0006\u0010x\u001a\u00020\u00062\t\u0008\u0001\u0010\u00ae\u0001\u001a\u00020\u0006J\u0007\u0010\u00af\u0001\u001a\u00020\u0012J\u0007\u0010\u00b0\u0001\u001a\u00020\u0012J\u0007\u0010\u00b1\u0001\u001a\u00020\u0012J\u0012\u0010\u00b2\u0001\u001a\u00020\u00122\u0007\u0010\u00b3\u0001\u001a\u00020\u0006H\u0014J\u0011\u0010\u00b4\u0001\u001a\u00020o2\u0006\u0010e\u001a\u00020fH\u0016J\u001f\u0010\u00b5\u0001\u001a\u00020o2\u0006\u0010p\u001a\u00028\u00012\u0006\u0010x\u001a\u00020\u0006H\u0016\u00a2\u0006\u0003\u0010\u0085\u0001J/\u0010\u00b5\u0001\u001a\u00020o2\u0006\u0010p\u001a\u00028\u00012\u0006\u0010x\u001a\u00020\u00062\u000e\u0010\u008c\u0001\u001a\t\u0012\u0005\u0012\u00030\u008e\u00010\u0008H\u0016\u00a2\u0006\u0003\u0010\u00b6\u0001J\"\u0010\u00b7\u0001\u001a\u00028\u00012\u0008\u0010\u0096\u0001\u001a\u00030\u0097\u00012\u0007\u0010\u0084\u0001\u001a\u00020\u0006H\u0014\u00a2\u0006\u0003\u0010\u0098\u0001J\"\u0010\u00b8\u0001\u001a\u00028\u00012\u0008\u0010\u0096\u0001\u001a\u00030\u0097\u00012\u0007\u0010\u0084\u0001\u001a\u00020\u0006H\u0016\u00a2\u0006\u0003\u0010\u0098\u0001J\u0011\u0010\u00b9\u0001\u001a\u00020o2\u0006\u0010e\u001a\u00020fH\u0016J!\u0010\u00ba\u0001\u001a\u00020o2\u0007\u0010\u0083\u0001\u001a\u00028\u00012\u0007\u0010\u0084\u0001\u001a\u00020\u0006H\u0014\u00a2\u0006\u0003\u0010\u0085\u0001J\u0017\u0010\u00bb\u0001\u001a\u00020o2\u0006\u0010p\u001a\u00028\u0001H\u0016\u00a2\u0006\u0003\u0010\u00bc\u0001J\u0016\u0010\u00bd\u0001\u001a\u00020o2\u0006\u0010\u0007\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010wJ\u0013\u0010\u00bd\u0001\u001a\u00020o2\u0008\u0008\u0001\u0010x\u001a\u00020\u0006H\u0017J\u0007\u0010\u00be\u0001\u001a\u00020oJ\u0007\u0010\u00bf\u0001\u001a\u00020oJ\u0013\u0010\u00c0\u0001\u001a\u00020o2\u0008\u0008\u0001\u0010x\u001a\u00020\u0006H\u0016J\u0007\u0010\u00c1\u0001\u001a\u00020oJ\u0010\u0010\u00c2\u0001\u001a\u00020o2\u0007\u0010\u00c3\u0001\u001a\u00020~J\u0010\u0010\u00c4\u0001\u001a\u00020o2\u0007\u0010\u00c5\u0001\u001a\u00020~J\u0017\u0010\u00c6\u0001\u001a\u00020o2\u000c\u0010z\u001a\u0008\u0012\u0004\u0012\u00028\u00000{H\u0017J\u0011\u0010\u00c7\u0001\u001a\u00020o2\u0008\u0010\u00c8\u0001\u001a\u00030\u00c9\u0001J \u0010\u00ca\u0001\u001a\u00020o2\u0008\u0008\u0001\u0010\u007f\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010yJ\u0017\u0010\u00cb\u0001\u001a\u00020o2\u000e\u0010\u00cc\u0001\u001a\t\u0012\u0004\u0012\u00028\u00000\u00cd\u0001J\u0017\u0010\u00ce\u0001\u001a\u00020o2\u000e\u0010\u00cf\u0001\u001a\t\u0012\u0004\u0012\u00028\u00000\u00d0\u0001J$\u0010\u00d1\u0001\u001a\u00020o2\n\u0008\u0001\u0010\u00d2\u0001\u001a\u00030\u00d3\u00012\r\u0010\u00d4\u0001\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008H\u0016J(\u0010\u00d1\u0001\u001a\u00020o2\u000f\u0010\u00d4\u0001\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00082\u000c\u0008\u0002\u0010\u00d5\u0001\u001a\u0005\u0018\u00010\u00d6\u0001H\u0017J\u0010\u0010\u00d7\u0001\u001a\u00020o2\u0007\u0010\u00d8\u0001\u001a\u00020~J\u000f\u0010\u00d7\u0001\u001a\u00020o2\u0006\u0010\u0005\u001a\u00020\u0006J&\u0010\u00d9\u0001\u001a\u00020\u00062\u0006\u0010}\u001a\u00020~2\u0008\u0008\u0002\u0010\u007f\u001a\u00020\u00062\t\u0008\u0002\u0010\u0080\u0001\u001a\u00020\u0006H\u0007J\u0011\u0010\u00da\u0001\u001a\u00020o2\u0006\u0010p\u001a\u00020qH\u0014J\u0012\u0010\u00db\u0001\u001a\u00020o2\t\u0010\u00dc\u0001\u001a\u0004\u0018\u00010bJ&\u0010\u00dd\u0001\u001a\u00020\u00062\u0006\u0010}\u001a\u00020~2\u0008\u0008\u0002\u0010\u007f\u001a\u00020\u00062\t\u0008\u0002\u0010\u0080\u0001\u001a\u00020\u0006H\u0007J\u001a\u0010\u00de\u0001\u001a\u00020o2\u000f\u0010\u00d4\u0001\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010{H\u0016J\u0019\u0010\u00df\u0001\u001a\u00020o2\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0008H\u0017J\u001a\u0010\u00e0\u0001\u001a\u00020o2\u000f\u0010\u00d4\u0001\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0008H\u0016J\u001a\u0010\u00e1\u0001\u001a\u00020o2\u0007\u0010\u00e2\u0001\u001a\u00020~2\u0006\u0010x\u001a\u00020\u0006H\u0014J\u0012\u0010\u00e3\u0001\u001a\u00020o2\t\u0010\u00e4\u0001\u001a\u0004\u0018\u00010ZJ\u001a\u0010\u00e5\u0001\u001a\u00020\u00122\u0007\u0010\u00e2\u0001\u001a\u00020~2\u0006\u0010x\u001a\u00020\u0006H\u0014J\u0012\u0010\u00e6\u0001\u001a\u00020o2\t\u0010\u00e4\u0001\u001a\u0004\u0018\u00010\\J\u001a\u0010\u00e7\u0001\u001a\u00020o2\u0007\u0010\u00e2\u0001\u001a\u00020~2\u0006\u0010x\u001a\u00020\u0006H\u0014J\u0012\u0010\u00e8\u0001\u001a\u00020o2\t\u0010\u00e4\u0001\u001a\u0004\u0018\u00010^J\u001a\u0010\u00e9\u0001\u001a\u00020\u00122\u0007\u0010\u00e2\u0001\u001a\u00020~2\u0006\u0010x\u001a\u00020\u0006H\u0014J\u0012\u0010\u00ea\u0001\u001a\u00020o2\t\u0010\u00e4\u0001\u001a\u0004\u0018\u00010`J\u001b\u0010\u00eb\u0001\u001a\u00020o2\u0008\u0010\u00ec\u0001\u001a\u00030\u00ed\u00012\u0006\u0010\u007f\u001a\u00020\u0006H\u0014R(\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u001a\u001a\u00020\u001b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001dR0\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00082\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u0011\u0010#\u001a\u00020$8F\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010&R\u0013\u0010\'\u001a\u0004\u0018\u00010(8F\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010*R\u0013\u0010+\u001a\u0004\u0018\u00010,8F\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010.R\u0011\u0010/\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u00080\u00101R\u001a\u00102\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u0010\u0014\"\u0004\u00084\u0010\u0016R\u0011\u00105\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u00086\u00101R\u001a\u00107\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00088\u0010\u0014\"\u0004\u00089\u0010\u0016R\u0013\u0010:\u001a\u0004\u0018\u00010,8F\u00a2\u0006\u0006\u001a\u0004\u0008;\u0010.R\u0011\u0010<\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008=\u00101R\u001a\u0010>\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010\u0014\"\u0004\u0008@\u0010\u0016R\u0011\u0010A\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008B\u00101R\u001a\u0010C\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008D\u0010\u0014\"\u0004\u0008E\u0010\u0016R\u001a\u0010F\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008F\u0010\u0014\"\u0004\u0008G\u0010\u0016R\u001a\u0010H\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008H\u0010\u0014\"\u0004\u0008I\u0010\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010J\u001a\u00020K8F\u00a2\u0006\u0006\u001a\u0004\u0008L\u0010MR\u0016\u0010N\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010OX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010P\u001a\u0004\u0018\u00010$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010Q\u001a\u00020(X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010R\u001a\u00020,X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010S\u001a\u00020,X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010T\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010U\u001a\u0004\u0018\u00010KX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008V\u0010M\"\u0004\u0008W\u0010XR\u0010\u0010Y\u001a\u0004\u0018\u00010ZX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010[\u001a\u0004\u0018\u00010\\X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010]\u001a\u0004\u0018\u00010^X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010_\u001a\u0004\u0018\u00010`X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010a\u001a\u0004\u0018\u00010bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010c\u001a\u0004\u0018\u00010dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010e\u001a\u00020f8F\u00a2\u0006\u0006\u001a\u0004\u0008g\u0010hR\"\u0010i\u001a\u0004\u0018\u00010f2\u0008\u0010\u001e\u001a\u0004\u0018\u00010f@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008j\u0010hR\u0011\u0010k\u001a\u00020d8F\u00a2\u0006\u0006\u001a\u0004\u0008l\u0010m\u00a8\u0006\u00f0\u0001"
    }
    d2 = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "T",
        "VH",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "layoutResId",
        "",
        "data",
        "",
        "(ILjava/util/List;)V",
        "value",
        "Lcom/chad/library/adapter/base/animation/BaseAnimation;",
        "adapterAnimation",
        "getAdapterAnimation",
        "()Lcom/chad/library/adapter/base/animation/BaseAnimation;",
        "setAdapterAnimation",
        "(Lcom/chad/library/adapter/base/animation/BaseAnimation;)V",
        "animationEnable",
        "",
        "getAnimationEnable",
        "()Z",
        "setAnimationEnable",
        "(Z)V",
        "childClickViewIds",
        "Ljava/util/LinkedHashSet;",
        "childLongClickViewIds",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "<set-?>",
        "getData",
        "()Ljava/util/List;",
        "setData$com_github_CymChad_brvah",
        "(Ljava/util/List;)V",
        "draggableModule",
        "Lcom/chad/library/adapter/base/module/BaseDraggableModule;",
        "getDraggableModule",
        "()Lcom/chad/library/adapter/base/module/BaseDraggableModule;",
        "emptyLayout",
        "Landroid/widget/FrameLayout;",
        "getEmptyLayout",
        "()Landroid/widget/FrameLayout;",
        "footerLayout",
        "Landroid/widget/LinearLayout;",
        "getFooterLayout",
        "()Landroid/widget/LinearLayout;",
        "footerLayoutCount",
        "getFooterLayoutCount",
        "()I",
        "footerViewAsFlow",
        "getFooterViewAsFlow",
        "setFooterViewAsFlow",
        "footerViewPosition",
        "getFooterViewPosition",
        "footerWithEmptyEnable",
        "getFooterWithEmptyEnable",
        "setFooterWithEmptyEnable",
        "headerLayout",
        "getHeaderLayout",
        "headerLayoutCount",
        "getHeaderLayoutCount",
        "headerViewAsFlow",
        "getHeaderViewAsFlow",
        "setHeaderViewAsFlow",
        "headerViewPosition",
        "getHeaderViewPosition",
        "headerWithEmptyEnable",
        "getHeaderWithEmptyEnable",
        "setHeaderWithEmptyEnable",
        "isAnimationFirstOnly",
        "setAnimationFirstOnly",
        "isUseEmpty",
        "setUseEmpty",
        "loadMoreModule",
        "Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;",
        "getLoadMoreModule",
        "()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;",
        "mDiffHelper",
        "Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;",
        "mDraggableModule",
        "mEmptyLayout",
        "mFooterLayout",
        "mHeaderLayout",
        "mLastPosition",
        "mLoadMoreModule",
        "getMLoadMoreModule$com_github_CymChad_brvah",
        "setMLoadMoreModule$com_github_CymChad_brvah",
        "(Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;)V",
        "mOnItemChildClickListener",
        "Lcom/chad/library/adapter/base/listener/OnItemChildClickListener;",
        "mOnItemChildLongClickListener",
        "Lcom/chad/library/adapter/base/listener/OnItemChildLongClickListener;",
        "mOnItemClickListener",
        "Lcom/chad/library/adapter/base/listener/OnItemClickListener;",
        "mOnItemLongClickListener",
        "Lcom/chad/library/adapter/base/listener/OnItemLongClickListener;",
        "mSpanSizeLookup",
        "Lcom/chad/library/adapter/base/listener/GridSpanSizeLookup;",
        "mUpFetchModule",
        "Lcom/chad/library/adapter/base/module/BaseUpFetchModule;",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "getRecyclerView",
        "()Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerViewOrNull",
        "getRecyclerViewOrNull",
        "upFetchModule",
        "getUpFetchModule",
        "()Lcom/chad/library/adapter/base/module/BaseUpFetchModule;",
        "addAnimation",
        "",
        "holder",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "addChildClickViewIds",
        "viewIds",
        "",
        "addChildLongClickViewIds",
        "addData",
        "(Ljava/lang/Object;)V",
        "position",
        "(ILjava/lang/Object;)V",
        "newData",
        "",
        "addFooterView",
        "view",
        "Landroid/view/View;",
        "index",
        "orientation",
        "addHeaderView",
        "bindViewClickListener",
        "viewHolder",
        "viewType",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V",
        "checkModule",
        "compatibilityDataSizeChanged",
        "size",
        "convert",
        "item",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V",
        "payloads",
        "",
        "",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V",
        "createBaseGenericKInstance",
        "z",
        "Ljava/lang/Class;",
        "(Ljava/lang/Class;Landroid/view/View;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "createBaseViewHolder",
        "(Landroid/view/View;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "getChildClickViewIds",
        "getChildLongClickViewIds",
        "getDefItemCount",
        "getDefItemViewType",
        "getDiffHelper",
        "getDiffer",
        "getInstancedGenericKClass",
        "getItem",
        "(I)Ljava/lang/Object;",
        "getItemCount",
        "getItemId",
        "",
        "getItemOrNull",
        "getItemPosition",
        "(Ljava/lang/Object;)I",
        "getItemViewType",
        "getOnItemChildClickListener",
        "getOnItemChildLongClickListener",
        "getOnItemClickListener",
        "getOnItemLongClickListener",
        "getViewByPosition",
        "viewId",
        "hasEmptyView",
        "hasFooterLayout",
        "hasHeaderLayout",
        "isFixedViewType",
        "type",
        "onAttachedToRecyclerView",
        "onBindViewHolder",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/util/List;)V",
        "onCreateDefViewHolder",
        "onCreateViewHolder",
        "onDetachedFromRecyclerView",
        "onItemViewHolderCreated",
        "onViewAttachedToWindow",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V",
        "remove",
        "removeAllFooterView",
        "removeAllHeaderView",
        "removeAt",
        "removeEmptyView",
        "removeFooterView",
        "footer",
        "removeHeaderView",
        "header",
        "replaceData",
        "setAnimationWithDefault",
        "animationType",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter$AnimationType;",
        "setData",
        "setDiffCallback",
        "diffCallback",
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;",
        "setDiffConfig",
        "config",
        "Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;",
        "setDiffNewData",
        "diffResult",
        "Landroidx/recyclerview/widget/DiffUtil$DiffResult;",
        "list",
        "commitCallback",
        "Ljava/lang/Runnable;",
        "setEmptyView",
        "emptyView",
        "setFooterView",
        "setFullSpan",
        "setGridSpanSizeLookup",
        "spanSizeLookup",
        "setHeaderView",
        "setList",
        "setNewData",
        "setNewInstance",
        "setOnItemChildClick",
        "v",
        "setOnItemChildClickListener",
        "listener",
        "setOnItemChildLongClick",
        "setOnItemChildLongClickListener",
        "setOnItemClick",
        "setOnItemClickListener",
        "setOnItemLongClick",
        "setOnItemLongClickListener",
        "startAnim",
        "anim",
        "Landroid/animation/Animator;",
        "AnimationType",
        "Companion",
        "com.github.CymChad.brvah"
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
.field public static final Companion:Lcom/chad/library/adapter/base/BaseQuickAdapter$Companion;

.field public static final EMPTY_VIEW:I = 0x10000555

.field public static final FOOTER_VIEW:I = 0x10000333

.field public static final HEADER_VIEW:I = 0x10000111

.field public static final LOAD_MORE_VIEW:I = 0x10000222


# instance fields
.field private adapterAnimation:Lcom/chad/library/adapter/base/animation/BaseAnimation;

.field private animationEnable:Z

.field private final childClickViewIds:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final childLongClickViewIds:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private footerViewAsFlow:Z

.field private footerWithEmptyEnable:Z

.field private headerViewAsFlow:Z

.field private headerWithEmptyEnable:Z

.field private isAnimationFirstOnly:Z

.field private isUseEmpty:Z

.field private final layoutResId:I

.field private mDiffHelper:Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mDraggableModule:Lcom/chad/library/adapter/base/module/BaseDraggableModule;

.field private mEmptyLayout:Landroid/widget/FrameLayout;

.field private mFooterLayout:Landroid/widget/LinearLayout;

.field private mHeaderLayout:Landroid/widget/LinearLayout;

.field private mLastPosition:I

.field private mLoadMoreModule:Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

.field private mOnItemChildClickListener:Lcom/chad/library/adapter/base/listener/OnItemChildClickListener;

.field private mOnItemChildLongClickListener:Lcom/chad/library/adapter/base/listener/OnItemChildLongClickListener;

.field private mOnItemClickListener:Lcom/chad/library/adapter/base/listener/OnItemClickListener;

.field private mOnItemLongClickListener:Lcom/chad/library/adapter/base/listener/OnItemLongClickListener;

.field private mSpanSizeLookup:Lcom/chad/library/adapter/base/listener/GridSpanSizeLookup;

.field private mUpFetchModule:Lcom/chad/library/adapter/base/module/BaseUpFetchModule;

.field private recyclerViewOrNull:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public static synthetic $r8$lambda$MV8k8CwUvPo3JbiNmFxKVwOkVao(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->bindViewClickListener$lambda$7$lambda$6(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YasEa5FRMJowQ1X9Hh4Ub2I2yag(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->bindViewClickListener$lambda$9$lambda$8(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$cBK2LQmmnIQ9RwYRfHvq-Q8NkaA(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->bindViewClickListener$lambda$12$lambda$11$lambda$10(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jYuHQ5qtaNFTyT-b9ZohZCOmlw0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->bindViewClickListener$lambda$15$lambda$14$lambda$13(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/chad/library/adapter/base/BaseQuickAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->Companion:Lcom/chad/library/adapter/base/BaseQuickAdapter$Companion;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->layoutResId:I

    if-nez p2, :cond_0

    .line 59
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    move-object p2, p1

    check-cast p2, Ljava/util/List;

    :cond_0
    iput-object p2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->data:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->isUseEmpty:Z

    iput-boolean p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->isAnimationFirstOnly:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mLastPosition:I

    .line 163
    invoke-direct {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->checkModule()V

    .line 453
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->childClickViewIds:Ljava/util/LinkedHashSet;

    .line 472
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->childLongClickViewIds:Ljava/util/LinkedHashSet;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 43
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    return-void
.end method

.method public static final synthetic access$getMSpanSizeLookup$p(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lcom/chad/library/adapter/base/listener/GridSpanSizeLookup;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mSpanSizeLookup:Lcom/chad/library/adapter/base/listener/GridSpanSizeLookup;

    return-object p0
.end method

.method private final addAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 5

    iget-boolean v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->animationEnable:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->isAnimationFirstOnly:Z

    if-eqz v0, :cond_0

    .line 1050
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    iget v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mLastPosition:I

    if-le v0, v1, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->adapterAnimation:Lcom/chad/library/adapter/base/animation/BaseAnimation;

    if-nez v0, :cond_1

    .line 1051
    new-instance v0, Lcom/chad/library/adapter/base/animation/AlphaInAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/chad/library/adapter/base/animation/AlphaInAnimation;-><init>(FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/chad/library/adapter/base/animation/BaseAnimation;

    .line 1052
    :cond_1
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "holder.itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/chad/library/adapter/base/animation/BaseAnimation;->animators(Landroid/view/View;)[Landroid/animation/Animator;

    move-result-object v0

    .line 1364
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 1053
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->startAnim(Landroid/animation/Animator;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1055
    :cond_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p1

    iput p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mLastPosition:I

    :cond_3
    return-void
.end method

.method public static synthetic addFooterView$default(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IIILjava/lang/Object;)I
    .locals 0

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, -0x1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    .line 851
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addFooterView(Landroid/view/View;II)I

    move-result p0

    return p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: addFooterView"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic addHeaderView$default(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IIILjava/lang/Object;)I
    .locals 0

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, -0x1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    .line 740
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addHeaderView(Landroid/view/View;II)I

    move-result p0

    return p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: addHeaderView"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final bindViewClickListener$lambda$12$lambda$11$lambda$10(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;)V
    .locals 1

    const-string v0, "$viewHolder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 521
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getBindingAdapterPosition()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    return-void

    .line 525
    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    sub-int/2addr p0, v0

    const-string v0, "v"

    .line 526
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClick(Landroid/view/View;I)V

    return-void
.end method

.method private static final bindViewClickListener$lambda$15$lambda$14$lambda$13(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;)Z
    .locals 1

    const-string v0, "$viewHolder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 538
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getBindingAdapterPosition()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 542
    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    sub-int/2addr p0, v0

    const-string v0, "v"

    .line 543
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildLongClick(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method private static final bindViewClickListener$lambda$7$lambda$6(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;)V
    .locals 1

    const-string v0, "$viewHolder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 495
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getBindingAdapterPosition()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    return-void

    .line 499
    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    sub-int/2addr p0, v0

    const-string v0, "v"

    .line 500
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClick(Landroid/view/View;I)V

    return-void
.end method

.method private static final bindViewClickListener$lambda$9$lambda$8(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;)Z
    .locals 1

    const-string v0, "$viewHolder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 505
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getBindingAdapterPosition()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 509
    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    sub-int/2addr p0, v0

    const-string v0, "v"

    .line 510
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemLongClick(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method private final checkModule()V
    .locals 1

    .line 170
    instance-of v0, p0, Lcom/chad/library/adapter/base/module/LoadMoreModule;

    if-eqz v0, :cond_0

    .line 171
    move-object v0, p0

    check-cast v0, Lcom/chad/library/adapter/base/module/LoadMoreModule;

    invoke-interface {v0, p0}, Lcom/chad/library/adapter/base/module/LoadMoreModule;->addLoadMoreModule(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v0

    iput-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mLoadMoreModule:Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    .line 173
    :cond_0
    instance-of v0, p0, Lcom/chad/library/adapter/base/module/UpFetchModule;

    if-eqz v0, :cond_1

    .line 174
    move-object v0, p0

    check-cast v0, Lcom/chad/library/adapter/base/module/UpFetchModule;

    invoke-interface {v0, p0}, Lcom/chad/library/adapter/base/module/UpFetchModule;->addUpFetchModule(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lcom/chad/library/adapter/base/module/BaseUpFetchModule;

    move-result-object v0

    iput-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mUpFetchModule:Lcom/chad/library/adapter/base/module/BaseUpFetchModule;

    .line 176
    :cond_1
    instance-of v0, p0, Lcom/chad/library/adapter/base/module/DraggableModule;

    if-eqz v0, :cond_2

    .line 177
    move-object v0, p0

    check-cast v0, Lcom/chad/library/adapter/base/module/DraggableModule;

    invoke-interface {v0, p0}, Lcom/chad/library/adapter/base/module/DraggableModule;->addDraggableModule(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lcom/chad/library/adapter/base/module/BaseDraggableModule;

    move-result-object v0

    iput-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mDraggableModule:Lcom/chad/library/adapter/base/module/BaseDraggableModule;

    :cond_2
    return-void
.end method

.method private final createBaseGenericKInstance(Ljava/lang/Class;Landroid/view/View;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/view/View;",
            ")TVH;"
        }
    .end annotation

    .line 687
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "null cannot be cast to non-null type VH of com.chad.library.adapter.base.BaseQuickAdapter"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    .line 688
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v0, v2

    const-class v2, Landroid/view/View;

    aput-object v2, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    const-string v0, "z.getDeclaredConstructor\u2026aClass, View::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 689
    invoke-virtual {p1, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 690
    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_0

    :cond_0
    new-array p0, v3, [Ljava/lang/Class;

    .line 692
    const-class v0, Landroid/view/View;

    aput-object v0, p0, v2

    invoke-virtual {p1, p0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    const-string p1, "z.getDeclaredConstructor(View::class.java)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 693
    invoke-virtual {p0, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 694
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    .line 703
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 701
    invoke-virtual {p0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception p0

    .line 699
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception p0

    .line 697
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private final getInstancedGenericKClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 649
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 650
    instance-of p1, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz p1, :cond_2

    .line 651
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    const-string p1, "types"

    .line 652
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    aget-object v1, p0, v0

    .line 653
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 654
    const-class v2, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-object v3, v1

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 655
    check-cast v1, Ljava/lang/Class;

    return-object v1

    .line 657
    :cond_0
    instance-of v2, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_1

    .line 658
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 659
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_1

    const-class v2, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-object v3, v1

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 660
    check-cast v1, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/reflect/GenericSignatureFormatError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/TypeNotPresentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/MalformedParameterizedTypeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 670
    invoke-virtual {p0}, Ljava/lang/reflect/MalformedParameterizedTypeException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 668
    invoke-virtual {p0}, Ljava/lang/TypeNotPresentException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception p0

    .line 666
    invoke-virtual {p0}, Ljava/lang/reflect/GenericSignatureFormatError;->printStackTrace()V

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic setDiffNewData$default(Lcom/chad/library/adapter/base/BaseQuickAdapter;Ljava/util/List;Ljava/lang/Runnable;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1305
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffNewData(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setDiffNewData"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic setFooterView$default(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IIILjava/lang/Object;)I
    .locals 0

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    .line 878
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setFooterView(Landroid/view/View;II)I

    move-result p0

    return p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setFooterView"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic setHeaderView$default(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IIILjava/lang/Object;)I
    .locals 0

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    .line 767
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setHeaderView(Landroid/view/View;II)I

    move-result p0

    return p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setHeaderView"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final varargs addChildClickViewIds([I)V
    .locals 4

    const-string v0, "viewIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    iget-object v3, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->childClickViewIds:Ljava/util/LinkedHashSet;

    .line 465
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final varargs addChildLongClickViewIds([I)V
    .locals 4

    const-string v0, "viewIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    iget-object v3, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->childLongClickViewIds:Ljava/util/LinkedHashSet;

    .line 484
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addData(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->data:Ljava/util/List;

    .line 1182
    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1183
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->notifyItemInserted(I)V

    const/4 p1, 0x1

    .line 1184
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->compatibilityDataSizeChanged(I)V

    return-void
.end method

.method public addData(ILjava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "newData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->data:Ljava/util/List;

    .line 1205
    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 1206
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    add-int/2addr p1, v0

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->notifyItemRangeInserted(II)V

    .line 1207
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->compatibilityDataSizeChanged(I)V

    return-void
.end method

.method public addData(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->data:Ljava/util/List;

    .line 1192
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->data:Ljava/util/List;

    .line 1193
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->notifyItemInserted(I)V

    const/4 p1, 0x1

    .line 1194
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->compatibilityDataSizeChanged(I)V

    return-void
.end method

.method public addData(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "newData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->data:Ljava/util/List;

    .line 1211
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->data:Ljava/util/List;

    .line 1212
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->notifyItemRangeInserted(II)V

    .line 1213
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->compatibilityDataSizeChanged(I)V

    return-void
.end method

.method public final addFooterView(Landroid/view/View;)I
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addFooterView$default(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IIILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final addFooterView(Landroid/view/View;I)I
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v6}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addFooterView$default(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IIILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final addFooterView(Landroid/view/View;II)I
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const-string v4, "mFooterLayout"

    if-nez v0, :cond_2

    .line 853
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    .line 854
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 855
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_0
    const/4 v5, -0x2

    if-ne p3, v1, :cond_1

    .line 856
    new-instance p3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {p3, v2, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    check-cast p3, Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0

    .line 858
    :cond_1
    new-instance p3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {p3, v5, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    check-cast p3, Landroid/view/ViewGroup$LayoutParams;

    .line 855
    :goto_0
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object p3, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    if-nez p3, :cond_3

    .line 862
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v3

    :cond_3
    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p3

    if-ltz p2, :cond_4

    if-le p2, p3, :cond_5

    :cond_4
    move p2, p3

    :cond_5
    iget-object p3, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    if-nez p3, :cond_6

    .line 867
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v3

    :cond_6
    invoke-virtual {p3, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    if-nez p1, :cond_7

    .line 868
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move-object v3, p1

    :goto_1
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-ne p1, v1, :cond_8

    .line 869
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getFooterViewPosition()I

    move-result p1

    if-eq p1, v2, :cond_8

    .line 871
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->notifyItemInserted(I)V

    :cond_8
    return p2
.end method

.method public final addHeaderView(Landroid/view/View;)I
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addHeaderView$default(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IIILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final addHeaderView(Landroid/view/View;I)I
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v6}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addHeaderView$default(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IIILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final addHeaderView(Landroid/view/View;II)I
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const-string v4, "mHeaderLayout"

    if-nez v0, :cond_2

    .line 742
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    .line 743
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 744
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_0
    const/4 v5, -0x2

    if-ne p3, v1, :cond_1

    .line 745
    new-instance p3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {p3, v2, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    check-cast p3, Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0

    .line 747
    :cond_1
    new-instance p3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {p3, v5, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    check-cast p3, Landroid/view/ViewGroup$LayoutParams;

    .line 744
    :goto_0
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object p3, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    if-nez p3, :cond_3

    .line 751
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v3

    :cond_3
    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p3

    if-ltz p2, :cond_4

    if-le p2, p3, :cond_5

    :cond_4
    move p2, p3

    :cond_5
    iget-object p3, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    if-nez p3, :cond_6

    .line 756
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v3

    :cond_6
    invoke-virtual {p3, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    if-nez p1, :cond_7

    .line 757
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move-object v3, p1

    :goto_1
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-ne p1, v1, :cond_8

    .line 758
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderViewPosition()I

    move-result p1

    if-eq p1, v2, :cond_8

    .line 760
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->notifyItemInserted(I)V

    :cond_8
    return p2
.end method

.method protected bindViewClickListener(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    const-string p2, "viewHolder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mOnItemClickListener:Lcom/chad/library/adapter/base/listener/OnItemClickListener;

    if-eqz p2, :cond_0

    .line 494
    iget-object p2, p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/chad/library/adapter/base/BaseQuickAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseQuickAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object p2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mOnItemLongClickListener:Lcom/chad/library/adapter/base/listener/OnItemLongClickListener;

    if-eqz p2, :cond_1

    .line 504
    iget-object p2, p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/chad/library/adapter/base/BaseQuickAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseQuickAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    iget-object p2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mOnItemChildClickListener:Lcom/chad/library/adapter/base/listener/OnItemChildClickListener;

    const/4 v0, 0x1

    const-string v1, "findViewById<View>(id)"

    const-string v2, "id"

    if-eqz p2, :cond_4

    .line 515
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getChildClickViewIds()Ljava/util/LinkedHashSet;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 516
    iget-object v4, p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->itemView:Landroid/view/View;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 517
    invoke-virtual {v3}, Landroid/view/View;->isClickable()Z

    move-result v4

    if-nez v4, :cond_3

    .line 518
    invoke-virtual {v3, v0}, Landroid/view/View;->setClickable(Z)V

    .line 520
    :cond_3
    new-instance v4, Lcom/chad/library/adapter/base/BaseQuickAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v4, p1, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseQuickAdapter;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mOnItemChildLongClickListener:Lcom/chad/library/adapter/base/listener/OnItemChildLongClickListener;

    if-eqz p2, :cond_7

    .line 532
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getChildLongClickViewIds()Ljava/util/LinkedHashSet;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 533
    iget-object v4, p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->itemView:Landroid/view/View;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 534
    invoke-virtual {v3}, Landroid/view/View;->isLongClickable()Z

    move-result v4

    if-nez v4, :cond_6

    .line 535
    invoke-virtual {v3, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 537
    :cond_6
    new-instance v4, Lcom/chad/library/adapter/base/BaseQuickAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v4, p1, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseQuickAdapter;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_1

    :cond_7
    return-void
.end method

.method protected final compatibilityDataSizeChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->data:Ljava/util/List;

    .line 1259
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 1260
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected abstract convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;TT;)V"
        }
    .end annotation
.end method

.method protected convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;TT;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string p0, "holder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "payloads"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected createBaseViewHolder(Landroid/view/View;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TVH;"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 626
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 629
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getInstancedGenericKClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 630
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 634
    new-instance p0, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_1

    .line 636
    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->createBaseGenericKInstance(Ljava/lang/Class;Landroid/view/View;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p0

    :goto_1
    if-nez p0, :cond_2

    .line 638
    new-instance p0, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    :cond_2
    return-object p0
.end method

.method protected createBaseViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 615
    invoke-static {p1, p2}, Lcom/chad/library/adapter/base/util/AdapterUtilsKt;->getItemView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->createBaseViewHolder(Landroid/view/View;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public final getAdapterAnimation()Lcom/chad/library/adapter/base/animation/BaseAnimation;
    .locals 0

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->adapterAnimation:Lcom/chad/library/adapter/base/animation/BaseAnimation;

    return-object p0
.end method

.method public final getAnimationEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->animationEnable:Z

    return p0
.end method

.method public final getChildClickViewIds()Ljava/util/LinkedHashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->childClickViewIds:Ljava/util/LinkedHashSet;

    return-object p0
.end method

.method public final getChildLongClickViewIds()Ljava/util/LinkedHashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->childLongClickViewIds:Ljava/util/LinkedHashSet;

    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 157
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "recyclerView.context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getData()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->data:Ljava/util/List;

    return-object p0
.end method

.method protected getDefItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->data:Ljava/util/List;

    .line 595
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method protected getDefItemViewType(I)I
    .locals 0

    .line 603
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p0

    return p0
.end method

.method public final getDiffHelper()Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "User getDiffer()"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "getDiffer()"
            imports = {}
        .end subannotation
    .end annotation

    .line 1284
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getDiffer()Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;

    move-result-object p0

    return-object p0
.end method

.method public final getDiffer()Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mDiffHelper:Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;

    if-eqz p0, :cond_0

    .line 1291
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0

    .line 1288
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Please use setDiffCallback() or setDiffConfig() first!"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getDraggableModule()Lcom/chad/library/adapter/base/module/BaseDraggableModule;
    .locals 1

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mDraggableModule:Lcom/chad/library/adapter/base/module/BaseDraggableModule;

    if-eqz p0, :cond_0

    .line 123
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0

    .line 122
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Please first implements DraggableModule"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getEmptyLayout()Landroid/widget/FrameLayout;
    .locals 1

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mEmptyLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-nez p0, :cond_1

    const-string p0, "mEmptyLayout"

    .line 1034
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    move-object p0, v0

    :cond_1
    return-object p0
.end method

.method public final getFooterLayout()Landroid/widget/LinearLayout;
    .locals 1

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-nez p0, :cond_1

    const-string p0, "mFooterLayout"

    .line 952
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    move-object p0, v0

    :cond_1
    return-object p0
.end method

.method public final getFooterLayoutCount()I
    .locals 0

    .line 938
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->hasFooterLayout()Z

    move-result p0

    return p0
.end method

.method public final getFooterViewAsFlow()Z
    .locals 0

    iget-boolean p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->footerViewAsFlow:Z

    return p0
.end method

.method public final getFooterViewPosition()I
    .locals 1

    .line 919
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->hasEmptyView()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->headerWithEmptyEnable:Z

    if-eqz v0, :cond_0

    .line 921
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->hasHeaderLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-boolean p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->footerWithEmptyEnable:Z

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, -0x1

    return p0

    .line 928
    :cond_2
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->data:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final getFooterWithEmptyEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->footerWithEmptyEnable:Z

    return p0
.end method

.method public final getHeaderLayout()Landroid/widget/LinearLayout;
    .locals 1

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-nez p0, :cond_1

    const-string p0, "mHeaderLayout"

    .line 841
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    move-object p0, v0

    :cond_1
    return-object p0
.end method

.method public final getHeaderLayoutCount()I
    .locals 0

    .line 827
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->hasHeaderLayout()Z

    move-result p0

    return p0
.end method

.method public final getHeaderViewAsFlow()Z
    .locals 0

    iget-boolean p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->headerViewAsFlow:Z

    return p0
.end method

.method public final getHeaderViewPosition()I
    .locals 2

    .line 812
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->hasEmptyView()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->headerWithEmptyEnable:Z

    if-eqz p0, :cond_0

    return v1

    :cond_0
    const/4 p0, -0x1

    return p0

    :cond_1
    return v1
.end method

.method public final getHeaderWithEmptyEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->headerWithEmptyEnable:Z

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->data:Ljava/util/List;

    .line 434
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemCount()I
    .locals 3

    .line 255
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->hasEmptyView()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->headerWithEmptyEnable:Z

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->hasHeaderLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    :cond_0
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->footerWithEmptyEnable:Z

    if-eqz v0, :cond_1

    .line 260
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->hasFooterLayout()Z

    move-result p0

    if-eqz p0, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    return v1

    :cond_2
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mLoadMoreModule:Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 265
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->hasLoadMoreView()Z

    move-result v0

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    .line 270
    :goto_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getDefItemCount()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getFooterLayoutCount()I

    move-result p0

    add-int/2addr v0, p0

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getItemOrNull(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->data:Ljava/util/List;

    .line 438
    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->data:Ljava/util/List;

    .line 447
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->data:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getItemViewType(I)I
    .locals 4

    .line 282
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->hasEmptyView()Z

    move-result v0

    const v1, 0x10000111

    const v2, 0x10000333

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->headerWithEmptyEnable:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->hasHeaderLayout()Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const v0, 0x10000555

    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    :cond_1
    :goto_1
    move v1, v0

    goto :goto_2

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    if-eqz p0, :cond_2

    goto :goto_1

    :cond_4
    if-eqz p0, :cond_1

    :goto_2
    return v1

    .line 300
    :cond_5
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->hasHeaderLayout()Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez p1, :cond_6

    return v1

    :cond_6
    if-eqz v0, :cond_7

    add-int/lit8 p1, p1, -0x1

    :cond_7
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->data:Ljava/util/List;

    .line 309
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_8

    .line 311
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getDefItemViewType(I)I

    move-result v2

    goto :goto_3

    :cond_8
    sub-int/2addr p1, v0

    .line 314
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->hasFooterLayout()Z

    move-result p0

    if-ge p1, p0, :cond_9

    goto :goto_3

    :cond_9
    const v2, 0x10000222

    :goto_3
    return v2
.end method

.method public final getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;
    .locals 1

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mLoadMoreModule:Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    if-eqz p0, :cond_0

    .line 105
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0

    .line 104
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Please first implements LoadMoreModule"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getMLoadMoreModule$com_github_CymChad_brvah()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;
    .locals 0

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mLoadMoreModule:Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    return-object p0
.end method

.method public final getOnItemChildClickListener()Lcom/chad/library/adapter/base/listener/OnItemChildClickListener;
    .locals 0

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mOnItemChildClickListener:Lcom/chad/library/adapter/base/listener/OnItemChildClickListener;

    return-object p0
.end method

.method public final getOnItemChildLongClickListener()Lcom/chad/library/adapter/base/listener/OnItemChildLongClickListener;
    .locals 0

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mOnItemChildLongClickListener:Lcom/chad/library/adapter/base/listener/OnItemChildLongClickListener;

    return-object p0
.end method

.method public final getOnItemClickListener()Lcom/chad/library/adapter/base/listener/OnItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mOnItemClickListener:Lcom/chad/library/adapter/base/listener/OnItemClickListener;

    return-object p0
.end method

.method public final getOnItemLongClickListener()Lcom/chad/library/adapter/base/listener/OnItemLongClickListener;
    .locals 0

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mOnItemLongClickListener:Lcom/chad/library/adapter/base/listener/OnItemLongClickListener;

    return-object p0
.end method

.method public final getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->recyclerViewOrNull:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    .line 152
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0

    .line 149
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Please get it after onAttachedToRecyclerView()"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getRecyclerViewOrNull()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->recyclerViewOrNull:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public final getUpFetchModule()Lcom/chad/library/adapter/base/module/BaseUpFetchModule;
    .locals 1

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mUpFetchModule:Lcom/chad/library/adapter/base/module/BaseUpFetchModule;

    if-eqz p0, :cond_0

    .line 114
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0

    .line 113
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Please first implements UpFetchModule"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getViewByPosition(II)Landroid/view/View;
    .locals 1

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->recyclerViewOrNull:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 731
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    check-cast p0, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    if-nez p0, :cond_1

    return-object v0

    .line 733
    :cond_1
    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final hasEmptyView()Z
    .locals 2

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mEmptyLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez v0, :cond_0

    const-string v0, "mEmptyLayout"

    .line 1015
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->isUseEmpty:Z

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->data:Ljava/util/List;

    .line 1021
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public final hasFooterLayout()Z
    .locals 0

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_1

    if-nez p0, :cond_0

    const-string p0, "mFooterLayout"

    .line 911
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hasHeaderLayout()Z
    .locals 0

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_1

    if-nez p0, :cond_0

    const-string p0, "mHeaderLayout"

    .line 782
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isAnimationFirstOnly()Z
    .locals 0

    iget-boolean p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->isAnimationFirstOnly:Z

    return p0
.end method

.method protected isFixedViewType(I)Z
    .locals 0

    const p0, 0x10000555

    if-eq p1, p0, :cond_1

    const p0, 0x10000111

    if-eq p1, p0, :cond_1

    const p0, 0x10000333

    if-eq p1, p0, :cond_1

    const p0, 0x10000222

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isUseEmpty()Z
    .locals 0

    iget-boolean p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->isUseEmpty:Z

    return p0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->recyclerViewOrNull:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mDraggableModule:Lcom/chad/library/adapter/base/module/BaseDraggableModule;

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 391
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 392
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_1

    .line 393
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v1

    .line 394
    new-instance v2, Lcom/chad/library/adapter/base/BaseQuickAdapter$onAttachedToRecyclerView$1;

    invoke-direct {v2, p0, p1, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter$onAttachedToRecyclerView$1;-><init>(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 42
    check-cast p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->onBindViewHolder(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    .line 42
    check-cast p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->onBindViewHolder(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mUpFetchModule:Lcom/chad/library/adapter/base/module/BaseUpFetchModule;

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {v0, p2}, Lcom/chad/library/adapter/base/module/BaseUpFetchModule;->autoUpFetch$com_github_CymChad_brvah(I)V

    :cond_0
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mLoadMoreModule:Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    if-eqz v0, :cond_1

    .line 332
    invoke-virtual {v0, p2}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->autoLoadMore$com_github_CymChad_brvah(I)V

    .line 333
    :cond_1
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getItemViewType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 340
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_0
    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mLoadMoreModule:Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    if-eqz p0, :cond_2

    .line 336
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->getLoadMoreView()Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->getLoadMoreStatus()Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p0}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILcom/chad/library/adapter/base/loadmore/LoadMoreStatus;)V

    nop

    :cond_2
    :goto_0
    :sswitch_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x10000111 -> :sswitch_1
        0x10000222 -> :sswitch_0
        0x10000333 -> :sswitch_1
        0x10000555 -> :sswitch_1
    .end sparse-switch
.end method

.method public onBindViewHolder(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->onBindViewHolder(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mUpFetchModule:Lcom/chad/library/adapter/base/module/BaseUpFetchModule;

    if-eqz v0, :cond_1

    .line 350
    invoke-virtual {v0, p2}, Lcom/chad/library/adapter/base/module/BaseUpFetchModule;->autoUpFetch$com_github_CymChad_brvah(I)V

    :cond_1
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mLoadMoreModule:Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    if-eqz v0, :cond_2

    .line 352
    invoke-virtual {v0, p2}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->autoLoadMore$com_github_CymChad_brvah(I)V

    .line 353
    :cond_2
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getItemViewType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 360
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V

    goto :goto_0

    :sswitch_0
    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mLoadMoreModule:Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    if-eqz p0, :cond_3

    .line 356
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->getLoadMoreView()Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;

    move-result-object p3

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->getLoadMoreStatus()Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    move-result-object p0

    invoke-virtual {p3, p1, p2, p0}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILcom/chad/library/adapter/base/loadmore/LoadMoreStatus;)V

    nop

    :cond_3
    :goto_0
    :sswitch_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x10000111 -> :sswitch_1
        0x10000222 -> :sswitch_0
        0x10000333 -> :sswitch_1
        0x10000555 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->layoutResId:I

    .line 611
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->createBaseViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    sparse-switch p2, :sswitch_data_0

    .line 238
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 239
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->bindViewClickListener(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mDraggableModule:Lcom/chad/library/adapter/base/module/BaseDraggableModule;

    if-eqz v0, :cond_c

    .line 240
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->initView$com_github_CymChad_brvah(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    goto/16 :goto_4

    :sswitch_0
    iget-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mEmptyLayout:Landroid/widget/FrameLayout;

    const-string p2, "mEmptyLayout"

    if-nez p1, :cond_0

    .line 222
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 223
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 224
    check-cast p1, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mEmptyLayout:Landroid/widget/FrameLayout;

    if-nez v1, :cond_1

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    :cond_1
    check-cast v1, Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mEmptyLayout:Landroid/widget/FrameLayout;

    if-nez p1, :cond_3

    .line 227
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v0, p1

    :goto_0
    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->createBaseViewHolder(Landroid/view/View;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p0

    goto/16 :goto_5

    :sswitch_1
    iget-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    const-string p2, "mFooterLayout"

    if-nez p1, :cond_4

    .line 230
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_4
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 231
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_6

    .line 232
    check-cast p1, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_5

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    :cond_5
    check-cast v1, Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_6
    iget-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    if-nez p1, :cond_7

    .line 235
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move-object v0, p1

    :goto_1
    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->createBaseViewHolder(Landroid/view/View;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p0

    goto :goto_5

    :sswitch_2
    iget-object p2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mLoadMoreModule:Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    .line 209
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->getLoadMoreView()Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->getRootView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 210
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->createBaseViewHolder(Landroid/view/View;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mLoadMoreModule:Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    .line 211
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setupViewHolder$com_github_CymChad_brvah(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    :goto_2
    move-object p0, p1

    goto :goto_5

    :sswitch_3
    iget-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    const-string p2, "mHeaderLayout"

    if-nez p1, :cond_8

    .line 214
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_8
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 215
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_a

    .line 216
    check-cast p1, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_9

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    :cond_9
    check-cast v1, Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_a
    iget-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    if-nez p1, :cond_b

    .line 219
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    move-object v0, p1

    :goto_3
    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->createBaseViewHolder(Landroid/view/View;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p0

    goto :goto_5

    .line 241
    :cond_c
    :goto_4
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->onItemViewHolderCreated(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V

    goto :goto_2

    :goto_5
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10000111 -> :sswitch_3
        0x10000222 -> :sswitch_2
        0x10000333 -> :sswitch_1
        0x10000555 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->recyclerViewOrNull:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method protected onItemViewHolderCreated(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    const-string p0, "viewHolder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 42
    check-cast p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->onViewAttachedToWindow(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-super {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 377
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getItemViewType()I

    move-result p1

    .line 378
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->isFixedViewType(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 379
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setFullSpan(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 381
    :cond_0
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :goto_0
    return-void
.end method

.method public remove(I)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Please use removeAt()"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "removeAt(position)"
            imports = {}
        .end subannotation
    .end annotation

    .line 1224
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->removeAt(I)V

    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->data:Ljava/util/List;

    .line 1245
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 1249
    :cond_0
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->removeAt(I)V

    return-void
.end method

.method public final removeAllFooterView()V
    .locals 2

    .line 901
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->hasFooterLayout()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    const-string v0, "mFooterLayout"

    .line 903
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 904
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getFooterViewPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 906
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->notifyItemRemoved(I)V

    :cond_2
    return-void
.end method

.method public final removeAllHeaderView()V
    .locals 2

    .line 801
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->hasHeaderLayout()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    const-string v0, "mHeaderLayout"

    .line 803
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 804
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderViewPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 806
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->notifyItemRemoved(I)V

    :cond_2
    return-void
.end method

.method public removeAt(I)V
    .locals 1

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->data:Ljava/util/List;

    .line 1234
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->data:Ljava/util/List;

    .line 1237
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1238
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    add-int/2addr p1, v0

    .line 1239
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->notifyItemRemoved(I)V

    const/4 v0, 0x0

    .line 1240
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->compatibilityDataSizeChanged(I)V

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->data:Ljava/util/List;

    .line 1241
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public final removeEmptyView()V
    .locals 0

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mEmptyLayout:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_1

    if-nez p0, :cond_0

    const-string p0, "mEmptyLayout"

    .line 1010
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_1
    return-void
.end method

.method public final removeFooterView(Landroid/view/View;)V
    .locals 3

    const-string v0, "footer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 889
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->hasFooterLayout()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    const-string v2, "mFooterLayout"

    if-nez v0, :cond_1

    .line 891
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    if-nez p1, :cond_2

    .line 892
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, p1

    :goto_0
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-nez p1, :cond_3

    .line 893
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getFooterViewPosition()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    .line 895
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->notifyItemRemoved(I)V

    :cond_3
    return-void
.end method

.method public final removeHeaderView(Landroid/view/View;)V
    .locals 3

    const-string v0, "header"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 789
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->hasHeaderLayout()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    const-string v2, "mHeaderLayout"

    if-nez v0, :cond_1

    .line 791
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    if-nez p1, :cond_2

    .line 792
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, p1

    :goto_0
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-nez p1, :cond_3

    .line 793
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderViewPosition()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    .line 795
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->notifyItemRemoved(I)V

    :cond_3
    return-void
.end method

.method public replaceData(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Please use setData()"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "setList(newData)"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "newData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1133
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setList(Ljava/util/Collection;)V

    return-void
.end method

.method public final setAdapterAnimation(Lcom/chad/library/adapter/base/animation/BaseAnimation;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->animationEnable:Z

    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->adapterAnimation:Lcom/chad/library/adapter/base/animation/BaseAnimation;

    return-void
.end method

.method public final setAnimationEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->animationEnable:Z

    return-void
.end method

.method public final setAnimationFirstOnly(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->isAnimationFirstOnly:Z

    return-void
.end method

.method public final setAnimationWithDefault(Lcom/chad/library/adapter/base/BaseQuickAdapter$AnimationType;)V
    .locals 4

    const-string v0, "animationType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1083
    sget-object v0, Lcom/chad/library/adapter/base/BaseQuickAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter$AnimationType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 1088
    new-instance p1, Lcom/chad/library/adapter/base/animation/SlideInRightAnimation;

    invoke-direct {p1}, Lcom/chad/library/adapter/base/animation/SlideInRightAnimation;-><init>()V

    check-cast p1, Lcom/chad/library/adapter/base/animation/BaseAnimation;

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 1087
    :cond_1
    new-instance p1, Lcom/chad/library/adapter/base/animation/SlideInLeftAnimation;

    invoke-direct {p1}, Lcom/chad/library/adapter/base/animation/SlideInLeftAnimation;-><init>()V

    check-cast p1, Lcom/chad/library/adapter/base/animation/BaseAnimation;

    goto :goto_0

    .line 1086
    :cond_2
    new-instance p1, Lcom/chad/library/adapter/base/animation/SlideInBottomAnimation;

    invoke-direct {p1}, Lcom/chad/library/adapter/base/animation/SlideInBottomAnimation;-><init>()V

    check-cast p1, Lcom/chad/library/adapter/base/animation/BaseAnimation;

    goto :goto_0

    .line 1085
    :cond_3
    new-instance p1, Lcom/chad/library/adapter/base/animation/ScaleInAnimation;

    invoke-direct {p1, v1, v2, v0}, Lcom/chad/library/adapter/base/animation/ScaleInAnimation;-><init>(FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/chad/library/adapter/base/animation/BaseAnimation;

    goto :goto_0

    .line 1084
    :cond_4
    new-instance p1, Lcom/chad/library/adapter/base/animation/AlphaInAnimation;

    invoke-direct {p1, v1, v2, v0}, Lcom/chad/library/adapter/base/animation/AlphaInAnimation;-><init>(FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/chad/library/adapter/base/animation/BaseAnimation;

    .line 1083
    :goto_0
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setAdapterAnimation(Lcom/chad/library/adapter/base/animation/BaseAnimation;)V

    return-void
.end method

.method public setData(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->data:Ljava/util/List;

    .line 1168
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->data:Ljava/util/List;

    .line 1171
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1172
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public final setData$com_github_CymChad_brvah(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->data:Ljava/util/List;

    return-void
.end method

.method public final setDiffCallback(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "diffCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1270
    new-instance v0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig$Builder;

    invoke-direct {v0, p1}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig$Builder;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig$Builder;->build()Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffConfig(Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;)V

    return-void
.end method

.method public final setDiffConfig(Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1279
    new-instance v0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;

    invoke-direct {v0, p0, p1}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;-><init>(Lcom/chad/library/adapter/base/BaseQuickAdapter;Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;)V

    iput-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mDiffHelper:Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;

    return-void
.end method

.method public setDiffNewData(Landroidx/recyclerview/widget/DiffUtil$DiffResult;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/DiffUtil$DiffResult;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "diffResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1323
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->hasEmptyView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1325
    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewInstance(Ljava/util/List;)V

    return-void

    .line 1328
    :cond_0
    new-instance v0, Lcom/chad/library/adapter/base/diff/BrvahListUpdateCallback;

    invoke-direct {v0, p0}, Lcom/chad/library/adapter/base/diff/BrvahListUpdateCallback;-><init>(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V

    check-cast v0, Landroidx/recyclerview/widget/ListUpdateCallback;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    iput-object p2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->data:Ljava/util/List;

    return-void
.end method

.method public final setDiffNewData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffNewData$default(Lcom/chad/library/adapter/base/BaseQuickAdapter;Ljava/util/List;Ljava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method public setDiffNewData(Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 1306
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->hasEmptyView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1308
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewInstance(Ljava/util/List;)V

    if-eqz p2, :cond_0

    .line 1309
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :cond_1
    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mDiffHelper:Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;

    if-eqz p0, :cond_2

    .line 1312
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->submitList(Ljava/util/List;Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public final setEmptyView(I)V
    .locals 3

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->recyclerViewOrNull:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 1003
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "view"

    .line 1004
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEmptyView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final setEmptyView(Landroid/view/View;)V
    .locals 9

    const-string v0, "emptyView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 966
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mEmptyLayout:Landroid/widget/FrameLayout;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "mEmptyLayout"

    const/4 v5, 0x0

    if-nez v1, :cond_1

    .line 969
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mEmptyLayout:Landroid/widget/FrameLayout;

    .line 971
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 972
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    iget v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v7, v8, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 973
    :cond_0
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v7, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 971
    :goto_0
    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v1, v2

    goto :goto_1

    .line 977
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v6, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mEmptyLayout:Landroid/widget/FrameLayout;

    if-nez v6, :cond_2

    .line 978
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v3

    :cond_2
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 979
    iget v7, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 980
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mEmptyLayout:Landroid/widget/FrameLayout;

    if-nez v1, :cond_3

    .line 981
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_3
    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    move v1, v5

    :goto_1
    iget-object v6, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mEmptyLayout:Landroid/widget/FrameLayout;

    if-nez v6, :cond_5

    .line 985
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v3

    :cond_5
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v6, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mEmptyLayout:Landroid/widget/FrameLayout;

    if-nez v6, :cond_6

    .line 986
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move-object v3, v6

    :goto_2
    invoke-virtual {v3, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iput-boolean v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->isUseEmpty:Z

    if-eqz v1, :cond_9

    .line 988
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->hasEmptyView()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->headerWithEmptyEnable:Z

    if-eqz p1, :cond_7

    .line 990
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->hasHeaderLayout()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    move v2, v5

    .line 993
    :goto_3
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result p1

    if-le p1, v0, :cond_8

    .line 994
    invoke-virtual {p0, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->notifyItemInserted(I)V

    goto :goto_4

    .line 996
    :cond_8
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->notifyDataSetChanged()V

    :cond_9
    :goto_4
    return-void
.end method

.method public final setFooterView(Landroid/view/View;)I
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setFooterView$default(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IIILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final setFooterView(Landroid/view/View;I)I
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v6}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setFooterView$default(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IIILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final setFooterView(Landroid/view/View;II)I
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    const-string v2, "mFooterLayout"

    if-nez v0, :cond_0

    .line 879
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-gt v0, p2, :cond_1

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    if-nez p3, :cond_2

    .line 882
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v1

    :cond_2
    invoke-virtual {p3, p2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    if-nez p0, :cond_3

    .line 883
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, p0

    :goto_0
    invoke-virtual {v1, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_2

    .line 880
    :cond_4
    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addFooterView(Landroid/view/View;II)I

    move-result p2

    :goto_2
    return p2
.end method

.method public final setFooterViewAsFlow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->footerViewAsFlow:Z

    return-void
.end method

.method public final setFooterWithEmptyEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->footerWithEmptyEnable:Z

    return-void
.end method

.method protected setFullSpan(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    const-string p0, "holder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 718
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 719
    instance-of p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz p1, :cond_0

    .line 720
    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    :cond_0
    return-void
.end method

.method public final setGridSpanSizeLookup(Lcom/chad/library/adapter/base/listener/GridSpanSizeLookup;)V
    .locals 0

    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mSpanSizeLookup:Lcom/chad/library/adapter/base/listener/GridSpanSizeLookup;

    return-void
.end method

.method public final setHeaderView(Landroid/view/View;)I
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setHeaderView$default(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IIILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final setHeaderView(Landroid/view/View;I)I
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v6}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setHeaderView$default(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IIILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final setHeaderView(Landroid/view/View;II)I
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    const-string v2, "mHeaderLayout"

    if-nez v0, :cond_0

    .line 768
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-gt v0, p2, :cond_1

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    if-nez p3, :cond_2

    .line 771
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v1

    :cond_2
    invoke-virtual {p3, p2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    if-nez p0, :cond_3

    .line 772
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, p0

    :goto_0
    invoke-virtual {v1, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_2

    .line 769
    :cond_4
    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addHeaderView(Landroid/view/View;II)I

    move-result p2

    :goto_2
    return p2
.end method

.method public final setHeaderViewAsFlow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->headerViewAsFlow:Z

    return-void
.end method

.method public final setHeaderWithEmptyEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->headerWithEmptyEnable:Z

    return-void
.end method

.method public setList(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->data:Ljava/util/List;

    if-eq p1, v0, :cond_1

    .line 1144
    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_4

    .line 1145
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->data:Ljava/util/List;

    .line 1146
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_3

    .line 1149
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1150
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->data:Ljava/util/List;

    .line 1151
    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->data:Ljava/util/List;

    .line 1152
    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->data:Ljava/util/List;

    .line 1154
    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mLoadMoreModule:Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    if-eqz p1, :cond_5

    .line 1157
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->reset$com_github_CymChad_brvah()V

    :cond_5
    const/4 p1, -0x1

    iput p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mLastPosition:I

    .line 1159
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mLoadMoreModule:Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    if-eqz p0, :cond_6

    .line 1160
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->checkDisableLoadMoreIfNotFullPage()V

    :cond_6
    return-void
.end method

.method public final setMLoadMoreModule$com_github_CymChad_brvah(Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;)V
    .locals 0

    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mLoadMoreModule:Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    return-void
.end method

.method public setNewData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Please use setNewInstance(), This method will be removed in the next version"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "setNewInstance(data)"
            imports = {}
        .end subannotation
    .end annotation

    .line 1102
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewInstance(Ljava/util/List;)V

    return-void
.end method

.method public setNewInstance(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->data:Ljava/util/List;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 1117
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    :cond_1
    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->data:Ljava/util/List;

    iget-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mLoadMoreModule:Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    if-eqz p1, :cond_2

    .line 1118
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->reset$com_github_CymChad_brvah()V

    :cond_2
    const/4 p1, -0x1

    iput p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mLastPosition:I

    .line 1120
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mLoadMoreModule:Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    if-eqz p0, :cond_3

    .line 1121
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->checkDisableLoadMoreIfNotFullPage()V

    :cond_3
    return-void
.end method

.method protected setOnItemChildClick(Landroid/view/View;I)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mOnItemChildClickListener:Lcom/chad/library/adapter/base/listener/OnItemChildClickListener;

    if-eqz v0, :cond_0

    .line 574
    invoke-interface {v0, p0, p1, p2}, Lcom/chad/library/adapter/base/listener/OnItemChildClickListener;->onItemChildClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public final setOnItemChildClickListener(Lcom/chad/library/adapter/base/listener/OnItemChildClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mOnItemChildClickListener:Lcom/chad/library/adapter/base/listener/OnItemChildClickListener;

    return-void
.end method

.method protected setOnItemChildLongClick(Landroid/view/View;I)Z
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mOnItemChildLongClickListener:Lcom/chad/library/adapter/base/listener/OnItemChildLongClickListener;

    if-eqz v0, :cond_0

    .line 578
    invoke-interface {v0, p0, p1, p2}, Lcom/chad/library/adapter/base/listener/OnItemChildLongClickListener;->onItemChildLongClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setOnItemChildLongClickListener(Lcom/chad/library/adapter/base/listener/OnItemChildLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mOnItemChildLongClickListener:Lcom/chad/library/adapter/base/listener/OnItemChildLongClickListener;

    return-void
.end method

.method protected setOnItemClick(Landroid/view/View;I)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mOnItemClickListener:Lcom/chad/library/adapter/base/listener/OnItemClickListener;

    if-eqz v0, :cond_0

    .line 558
    invoke-interface {v0, p0, p1, p2}, Lcom/chad/library/adapter/base/listener/OnItemClickListener;->onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public final setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mOnItemClickListener:Lcom/chad/library/adapter/base/listener/OnItemClickListener;

    return-void
.end method

.method protected setOnItemLongClick(Landroid/view/View;I)Z
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mOnItemLongClickListener:Lcom/chad/library/adapter/base/listener/OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 570
    invoke-interface {v0, p0, p1, p2}, Lcom/chad/library/adapter/base/listener/OnItemLongClickListener;->onItemLongClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setOnItemLongClickListener(Lcom/chad/library/adapter/base/listener/OnItemLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mOnItemLongClickListener:Lcom/chad/library/adapter/base/listener/OnItemLongClickListener;

    return-void
.end method

.method public final setUseEmpty(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->isUseEmpty:Z

    return-void
.end method

.method protected startAnim(Landroid/animation/Animator;I)V
    .locals 0

    const-string p0, "anim"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1068
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method
