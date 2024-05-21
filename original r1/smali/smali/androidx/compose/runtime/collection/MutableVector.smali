.class public final Landroidx/compose/runtime/collection/MutableVector;
.super Ljava/lang/Object;
.source "MutableVector.kt"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;,
        Landroidx/compose/runtime/collection/MutableVector$SubList;,
        Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/RandomAccess;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMutableVector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1194:1\n48#1:1198\n48#1:1199\n523#1:1200\n53#1:1203\n523#1:1204\n48#1:1205\n523#1:1206\n523#1:1207\n523#1:1208\n48#1:1209\n523#1:1210\n48#1:1211\n523#1:1212\n523#1:1213\n523#1:1214\n48#1:1215\n523#1:1216\n48#1:1219\n48#1:1220\n48#1:1221\n523#1:1222\n1864#2,3:1195\n1855#2,2:1201\n1855#2,2:1217\n*S KotlinDebug\n*F\n+ 1 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n249#1:1198\n259#1:1199\n260#1:1200\n292#1:1203\n293#1:1204\n307#1:1205\n308#1:1206\n334#1:1207\n359#1:1208\n595#1:1209\n595#1:1210\n637#1:1211\n637#1:1212\n665#1:1213\n675#1:1214\n768#1:1215\n769#1:1216\n794#1:1219\n821#1:1220\n833#1:1221\n834#1:1222\n185#1:1195,3\n281#1:1201,2\n782#1:1217,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u001e\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008)\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0001\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00060\u0002j\u0002`\u0003:\u0003pqrB\u001f\u0008\u0001\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0013\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u001eJ\u001b\u0010\u001b\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00028\u0000\u00a2\u0006\u0002\u0010!J\u0017\u0010\"\u001a\u00020\u001c2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000H\u0086\u0008J\u0019\u0010\"\u001a\u00020\u001c2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u00a2\u0006\u0002\u0010$J\u001c\u0010\"\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020\u00072\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000J\u001c\u0010\"\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020\u00072\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00028\u00000%J\u001c\u0010\"\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020\u00072\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00028\u00000&J\u0014\u0010\"\u001a\u00020\u001c2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00028\u00000%J\u0017\u0010\"\u001a\u00020\u001c2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00028\u00000&H\u0086\u0008J+\u0010\'\u001a\u00020\u001c2\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u001c0)H\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\u0008\n\u0006\u0008\u0001\u0012\u0002\u0010\u0001J\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0018J\u0006\u0010+\u001a\u00020\u001fJ\u0016\u0010,\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00028\u0000H\u0086\u0002\u00a2\u0006\u0002\u0010\u001eJ\u0014\u0010-\u001a\u00020\u001c2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000J\u0014\u0010-\u001a\u00020\u001c2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00028\u00000%J\u0014\u0010-\u001a\u00020\u001c2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00028\u00000&J\u0014\u0010.\u001a\u00020\u001c2\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000J\u000e\u00100\u001a\u00020\u001f2\u0006\u00101\u001a\u00020\u0007J\u000b\u00102\u001a\u00028\u0000\u00a2\u0006\u0002\u00103J0\u00102\u001a\u00028\u00002\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u001c0)H\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\u0008\n\u0006\u0008\u0001\u0012\u0002\u0010\u0001\u00a2\u0006\u0002\u00104J\u0010\u00105\u001a\u0004\u0018\u00018\u0000H\u0086\u0008\u00a2\u0006\u0002\u00103J2\u00105\u001a\u0004\u0018\u00018\u00002\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u001c0)H\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\u0008\n\u0006\u0008\u0001\u0012\u0002\u0010\u0001\u00a2\u0006\u0002\u00104JS\u00106\u001a\u0002H7\"\u0004\u0008\u0001\u001072\u0006\u00108\u001a\u0002H72\'\u00109\u001a#\u0012\u0013\u0012\u0011H7\u00a2\u0006\u000c\u0008;\u0012\u0008\u0008<\u0012\u0004\u0008\u0008(=\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u0002H70:H\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\u0008\n\u0006\u0008\u0001\u0012\u0002\u0010\u0002\u00a2\u0006\u0002\u0010>Jh\u0010?\u001a\u0002H7\"\u0004\u0008\u0001\u001072\u0006\u00108\u001a\u0002H72<\u00109\u001a8\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008;\u0012\u0008\u0008<\u0012\u0004\u0008\u0008( \u0012\u0013\u0012\u0011H7\u00a2\u0006\u000c\u0008;\u0012\u0008\u0008<\u0012\u0004\u0008\u0008(=\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u0002H70@H\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\u0008\n\u0006\u0008\u0001\u0012\u0002\u0010\u0002\u00a2\u0006\u0002\u0010AJS\u0010B\u001a\u0002H7\"\u0004\u0008\u0001\u001072\u0006\u00108\u001a\u0002H72\'\u00109\u001a#\u0012\u0004\u0012\u00028\u0000\u0012\u0013\u0012\u0011H7\u00a2\u0006\u000c\u0008;\u0012\u0008\u0008<\u0012\u0004\u0008\u0008(=\u0012\u0004\u0012\u0002H70:H\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\u0008\n\u0006\u0008\u0001\u0012\u0002\u0010\u0002\u00a2\u0006\u0002\u0010>Jh\u0010C\u001a\u0002H7\"\u0004\u0008\u0001\u001072\u0006\u00108\u001a\u0002H72<\u00109\u001a8\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008;\u0012\u0008\u0008<\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u00028\u0000\u0012\u0013\u0012\u0011H7\u00a2\u0006\u000c\u0008;\u0012\u0008\u0008<\u0012\u0004\u0008\u0008(=\u0012\u0004\u0012\u0002H70@H\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\u0008\n\u0006\u0008\u0001\u0012\u0002\u0010\u0002\u00a2\u0006\u0002\u0010AJ+\u0010D\u001a\u00020\u001f2\u0012\u0010E\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u001f0)H\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\u0008\n\u0006\u0008\u0001\u0012\u0002\u0010\u0001J1\u0010F\u001a\u00020\u001f2\u0018\u0010E\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u001f0:H\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\u0008\n\u0006\u0008\u0001\u0012\u0002\u0010\u0001J+\u0010G\u001a\u00020\u001f2\u0012\u0010E\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u001f0)H\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\u0008\n\u0006\u0008\u0001\u0012\u0002\u0010\u0001J1\u0010H\u001a\u00020\u001f2\u0018\u0010E\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u001f0:H\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\u0008\n\u0006\u0008\u0001\u0012\u0002\u0010\u0001J\u0016\u0010I\u001a\u00028\u00002\u0006\u0010 \u001a\u00020\u0007H\u0086\n\u00a2\u0006\u0002\u0010JJ\u0013\u0010K\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00028\u0000\u00a2\u0006\u0002\u0010LJ+\u0010M\u001a\u00020\u00072\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u001c0)H\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\u0008\n\u0006\u0008\u0001\u0012\u0002\u0010\u0001J+\u0010N\u001a\u00020\u00072\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u001c0)H\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\u0008\n\u0006\u0008\u0001\u0012\u0002\u0010\u0001J\u0006\u0010O\u001a\u00020\u001cJ\u0006\u0010P\u001a\u00020\u001cJ\u000b\u0010Q\u001a\u00028\u0000\u00a2\u0006\u0002\u00103J0\u0010Q\u001a\u00028\u00002\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u001c0)H\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\u0008\n\u0006\u0008\u0001\u0012\u0002\u0010\u0001\u00a2\u0006\u0002\u00104J\u0013\u0010R\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00028\u0000\u00a2\u0006\u0002\u0010LJ\u0010\u0010S\u001a\u0004\u0018\u00018\u0000H\u0086\u0008\u00a2\u0006\u0002\u00103J2\u0010S\u001a\u0004\u0018\u00018\u00002\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u001c0)H\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\u0008\n\u0006\u0008\u0001\u0012\u0002\u0010\u0001\u00a2\u0006\u0002\u00104J>\u0010T\u001a\u0008\u0012\u0004\u0012\u0002H70\u0005\"\u0006\u0008\u0001\u00107\u0018\u00012\u0012\u0010U\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u0002H70)H\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\u0008\n\u0006\u0008\u0001\u0012\u0002\u0010\u0001\u00a2\u0006\u0002\u0010VJS\u0010W\u001a\u0008\u0012\u0004\u0012\u0002H70\u0005\"\u0006\u0008\u0001\u00107\u0018\u00012\'\u0010U\u001a#\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008;\u0012\u0008\u0008<\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u0002H70:H\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\u0008\n\u0006\u0008\u0001\u0012\u0002\u0010\u0001\u00a2\u0006\u0002\u0010XJP\u0010Y\u001a\u0008\u0012\u0004\u0012\u0002H70\u0000\"\u0006\u0008\u0001\u00107\u0018\u00012)\u0010U\u001a%\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008;\u0012\u0008\u0008<\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u0001H70:H\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\u0008\n\u0006\u0008\u0001\u0012\u0002\u0010\u0001J;\u0010Z\u001a\u0008\u0012\u0004\u0012\u0002H70\u0000\"\u0006\u0008\u0001\u00107\u0018\u00012\u0014\u0010U\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u0001H70)H\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\u0008\n\u0006\u0008\u0001\u0012\u0002\u0010\u0001J\u0016\u0010[\u001a\u00020\u001f2\u0006\u0010\u001d\u001a\u00028\u0000H\u0086\n\u00a2\u0006\u0002\u0010\\J\u0016\u0010]\u001a\u00020\u001f2\u0006\u0010\u001d\u001a\u00028\u0000H\u0086\n\u00a2\u0006\u0002\u0010\\J\u0013\u0010^\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u001eJ\u0014\u0010_\u001a\u00020\u001c2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000J\u0014\u0010_\u001a\u00020\u001c2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00028\u00000%J\u0014\u0010_\u001a\u00020\u001c2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00028\u00000&J\u0013\u0010`\u001a\u00028\u00002\u0006\u0010 \u001a\u00020\u0007\u00a2\u0006\u0002\u0010JJ\u0016\u0010a\u001a\u00020\u001f2\u0006\u0010b\u001a\u00020\u00072\u0006\u0010c\u001a\u00020\u0007J\u0014\u0010d\u001a\u00020\u001c2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00028\u00000%J+\u0010e\u001a\u00020\u001c2\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u001c0)H\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\u0008\n\u0006\u0008\u0001\u0012\u0002\u0010\u0001J\u001e\u0010f\u001a\u00028\u00002\u0006\u0010 \u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00028\u0000H\u0086\u0002\u00a2\u0006\u0002\u0010gJ\u001e\u0010h\u001a\u00020\u001f2\u0016\u0010i\u001a\u0012\u0012\u0004\u0012\u00028\u00000jj\u0008\u0012\u0004\u0012\u00028\u0000`kJ+\u0010l\u001a\u00020\u00072\u0012\u0010m\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00070)H\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\u0008\n\u0006\u0008\u0001\u0012\u0002\u0010\u0001J\u0008\u0010n\u001a\u00020oH\u0001R.\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u00058\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0016\n\u0002\u0010\u000f\u0012\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0012\u0010\u0010\u001a\u00020\u00118\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u0012\u0010\u0014\u001a\u00020\u00078\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u0017\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u0007@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0016\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006s"
    }
    d2 = {
        "Landroidx/compose/runtime/collection/MutableVector;",
        "T",
        "Ljava/util/RandomAccess;",
        "Lkotlin/collections/RandomAccess;",
        "content",
        "",
        "size",
        "",
        "([Ljava/lang/Object;I)V",
        "getContent$annotations",
        "()V",
        "getContent",
        "()[Ljava/lang/Object;",
        "setContent",
        "([Ljava/lang/Object;)V",
        "[Ljava/lang/Object;",
        "indices",
        "Lkotlin/ranges/IntRange;",
        "getIndices",
        "()Lkotlin/ranges/IntRange;",
        "lastIndex",
        "getLastIndex",
        "()I",
        "list",
        "",
        "<set-?>",
        "getSize",
        "add",
        "",
        "element",
        "(Ljava/lang/Object;)Z",
        "",
        "index",
        "(ILjava/lang/Object;)V",
        "addAll",
        "elements",
        "([Ljava/lang/Object;)Z",
        "",
        "",
        "any",
        "predicate",
        "Lkotlin/Function1;",
        "asMutableList",
        "clear",
        "contains",
        "containsAll",
        "contentEquals",
        "other",
        "ensureCapacity",
        "capacity",
        "first",
        "()Ljava/lang/Object;",
        "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "firstOrNull",
        "fold",
        "R",
        "initial",
        "operation",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "acc",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;",
        "foldIndexed",
        "Lkotlin/Function3;",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;",
        "foldRight",
        "foldRightIndexed",
        "forEach",
        "block",
        "forEachIndexed",
        "forEachReversed",
        "forEachReversedIndexed",
        "get",
        "(I)Ljava/lang/Object;",
        "indexOf",
        "(Ljava/lang/Object;)I",
        "indexOfFirst",
        "indexOfLast",
        "isEmpty",
        "isNotEmpty",
        "last",
        "lastIndexOf",
        "lastOrNull",
        "map",
        "transform",
        "(Lkotlin/jvm/functions/Function1;)[Ljava/lang/Object;",
        "mapIndexed",
        "(Lkotlin/jvm/functions/Function2;)[Ljava/lang/Object;",
        "mapIndexedNotNull",
        "mapNotNull",
        "minusAssign",
        "(Ljava/lang/Object;)V",
        "plusAssign",
        "remove",
        "removeAll",
        "removeAt",
        "removeRange",
        "start",
        "end",
        "retainAll",
        "reversedAny",
        "set",
        "(ILjava/lang/Object;)Ljava/lang/Object;",
        "sortWith",
        "comparator",
        "Ljava/util/Comparator;",
        "Lkotlin/Comparator;",
        "sumBy",
        "selector",
        "throwNoSuchElementException",
        "",
        "MutableVectorList",
        "SubList",
        "VectorListIterator",
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
.field public static final $stable:I = 0x8


# instance fields
.field private content:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iput p2, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    return-void
.end method

.method public static synthetic getContent$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    iget v0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    add-int/lit8 v0, v0, 0x1

    .line 70
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/collection/MutableVector;->ensureCapacity(I)V

    iget-object v0, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget v1, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-eq p1, v1, :cond_0

    add-int/lit8 v2, p1, 0x1

    .line 73
    invoke-static {v0, v0, v2, p1, v1}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 80
    :cond_0
    aput-object p2, v0, p1

    iget p1, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    return-void
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget v0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 59
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/collection/MutableVector;->ensureCapacity(I)V

    iget-object v0, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget v2, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 60
    aput-object p1, v0, v2

    add-int/2addr v2, v1

    iput v2, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    return v1
.end method

.method public final addAll(ILandroidx/compose/runtime/collection/MutableVector;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "TT;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroidx/compose/runtime/collection/MutableVector;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 113
    iget v2, p2, Landroidx/compose/runtime/collection/MutableVector;->size:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/collection/MutableVector;->ensureCapacity(I)V

    iget-object v0, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget v2, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-eq p1, v2, :cond_1

    .line 118
    iget v3, p2, Landroidx/compose/runtime/collection/MutableVector;->size:I

    add-int/2addr v3, p1

    .line 116
    invoke-static {v0, v0, v3, p1, v2}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 123
    :cond_1
    iget-object v2, p2, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 127
    iget v3, p2, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 123
    invoke-static {v2, v0, p1, v1, v3}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget p1, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 129
    iget p2, p2, Landroidx/compose/runtime/collection/MutableVector;->size:I

    add-int/2addr p1, p2

    iput p1, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 p0, 0x1

    return p0
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 175
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/collection/MutableVector;->ensureCapacity(I)V

    iget-object v0, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget v2, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-eq p1, v2, :cond_1

    .line 180
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v2, p1

    iget v3, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 178
    invoke-static {v0, v0, v2, p1, v3}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 185
    :cond_1
    move-object v2, p2

    check-cast v2, Ljava/lang/Iterable;

    .line 1196
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    if-gez v1, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_2
    add-int/2addr v1, p1

    .line 186
    aput-object v3, v0, v1

    move v1, v4

    goto :goto_0

    :cond_3
    iget p1, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 188
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 p0, 0x1

    return p0
.end method

.method public final addAll(ILjava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+TT;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 90
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/collection/MutableVector;->ensureCapacity(I)V

    iget-object v0, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget v2, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-eq p1, v2, :cond_1

    .line 95
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p1

    iget v3, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 93
    invoke-static {v0, v0, v2, p1, v3}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 100
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    add-int v3, p1, v1

    .line 101
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget p1, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 103
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 p0, 0x1

    return p0
.end method

.method public final addAll(Landroidx/compose/runtime/collection/MutableVector;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "TT;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroidx/compose/runtime/collection/MutableVector;->addAll(ILandroidx/compose/runtime/collection/MutableVector;)Z

    move-result p0

    return p0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 197
    invoke-virtual {p0, v0, p1}, Landroidx/compose/runtime/collection/MutableVector;->addAll(ILjava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final addAll(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroidx/compose/runtime/collection/MutableVector;->addAll(ILjava/util/List;)Z

    move-result p0

    return p0
.end method

.method public final addAll([Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    array-length v0, p1

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 160
    array-length v1, p1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/collection/MutableVector;->ensureCapacity(I)V

    iget-object v2, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget v3, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p1

    .line 161
    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;

    iget v0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 165
    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 p0, 0x1

    return p0
.end method

.method public final any(Lkotlin/jvm/functions/Function1;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 208
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object p0

    move v2, v1

    .line 210
    :cond_0
    aget-object v3, p0, v2

    invoke-interface {p1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v0, :cond_0

    :cond_2
    return v1
.end method

.method public final asMutableList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/runtime/collection/MutableVector;->list:Ljava/util/List;

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;-><init>(Landroidx/compose/runtime/collection/MutableVector;)V

    .line 240
    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/runtime/collection/MutableVector;->list:Ljava/util/List;

    :cond_0
    return-object v0
.end method

.method public final clear()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 1198
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    const/4 v2, -0x1

    if-ge v2, v1, :cond_0

    const/4 v2, 0x0

    .line 250
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1199
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-ltz v0, :cond_1

    move v3, v2

    .line 1200
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v4

    aget-object v4, v4, v3

    .line 260
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v1

    :cond_0
    if-eq v3, v0, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final containsAll(Landroidx/compose/runtime/collection/MutableVector;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "TT;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1203
    new-instance v0, Lkotlin/ranges/IntRange;

    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 292
    invoke-virtual {v0}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v1

    invoke-virtual {v0}, Lkotlin/ranges/IntRange;->getLast()I

    move-result v0

    if-gt v1, v0, :cond_1

    .line 1204
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v4

    aget-object v4, v4, v1

    .line 293
    invoke-virtual {p0, v4}, Landroidx/compose/runtime/collection/MutableVector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    return v3

    :cond_0
    if-eq v1, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    check-cast p1, Ljava/lang/Iterable;

    .line 1201
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 282
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/collection/MutableVector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final containsAll(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 271
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/compose/runtime/collection/MutableVector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final contentEquals(Landroidx/compose/runtime/collection/MutableVector;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "TT;>;)Z"
        }
    .end annotation

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    iget v0, p1, Landroidx/compose/runtime/collection/MutableVector;->size:I

    iget v1, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 1205
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ltz v0, :cond_2

    move v3, v2

    .line 1206
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v5

    aget-object v5, v5, v3

    .line 308
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    if-eq v3, v0, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final ensureCapacity(I)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 320
    array-length v1, v0

    if-ge v1, p1, :cond_0

    .line 321
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 322
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "copyOf(this, newSize)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 331
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1207
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object p0

    aget-object p0, p0, v0

    return-object p0

    .line 332
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "MutableVector is empty."

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final first(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    if-lez v0, :cond_1

    .line 346
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    .line 348
    :goto_0
    aget-object v3, v1, v2

    .line 349
    invoke-interface {p1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v0, :cond_1

    goto :goto_0

    .line 353
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->throwNoSuchElementException()Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public final firstOrNull()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 359
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1208
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object p0

    aget-object p0, p0, v0

    :goto_0
    return-object p0
.end method

.method public final firstOrNull(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    if-lez v0, :cond_2

    .line 370
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    .line 372
    :cond_0
    aget-object v2, p0, v1

    .line 373
    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    if-lt v1, v0, :cond_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-TT;+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    if-lez v0, :cond_1

    .line 390
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    .line 392
    :cond_0
    aget-object v2, p0, v1

    invoke-interface {p2, p1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v0, :cond_0

    :cond_1
    return-object p1
.end method

.method public final foldIndexed(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
            "-TR;-TT;+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    if-lez v0, :cond_1

    .line 409
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    .line 411
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-interface {p2, v2, p1, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v0, :cond_0

    :cond_1
    return-object p1
.end method

.method public final foldRight(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-TR;+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 428
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object p0

    .line 430
    :cond_0
    aget-object v1, p0, v0

    invoke-interface {p2, v1, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    :cond_1
    return-object p1
.end method

.method public final foldRightIndexed(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
            "-TT;-TR;+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 444
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 447
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object p0

    .line 449
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aget-object v2, p0, v0

    invoke-interface {p2, v1, v2, p1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    :cond_1
    return-object p1
.end method

.method public final forEach(Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 461
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    if-lez v0, :cond_1

    .line 464
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    .line 466
    :cond_0
    aget-object v2, p0, v1

    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v0, :cond_0

    :cond_1
    return-void
.end method

.method public final forEachIndexed(Lkotlin/jvm/functions/Function2;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 477
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    if-lez v0, :cond_1

    .line 480
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    .line 482
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-interface {p1, v2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v0, :cond_0

    :cond_1
    return-void
.end method

.method public final forEachReversed(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 493
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 496
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object p0

    .line 498
    :cond_0
    aget-object v1, p0, v0

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    :cond_1
    return-void
.end method

.method public final forEachReversedIndexed(Lkotlin/jvm/functions/Function2;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 510
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    if-lez v0, :cond_1

    .line 511
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 512
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object p0

    .line 514
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aget-object v2, p0, v0

    invoke-interface {p1, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    :cond_1
    return-void
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 523
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final getContent()[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    return-object p0
.end method

.method public final getIndices()Lkotlin/ranges/IntRange;
    .locals 2

    .line 53
    new-instance v0, Lkotlin/ranges/IntRange;

    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lkotlin/ranges/IntRange;-><init>(II)V

    return-object v0
.end method

.method public final getLastIndex()I
    .locals 0

    .line 48
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public final getSize()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    return p0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget v0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-lez v0, :cond_2

    iget-object p0, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    const/4 v1, 0x0

    .line 534
    :cond_0
    aget-object v2, p0, v1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    if-lt v1, v0, :cond_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public final indexOfFirst(Lkotlin/jvm/functions/Function1;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 547
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    if-lez v0, :cond_2

    .line 550
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    .line 552
    :cond_0
    aget-object v2, p0, v1

    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    if-lt v1, v0, :cond_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public final indexOfLast(Lkotlin/jvm/functions/Function1;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 565
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    if-lez v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 568
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object p0

    .line 570
    :cond_0
    aget-object v1, p0, v0

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isNotEmpty()Z
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 592
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1209
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1210
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object p0

    aget-object p0, p0, v0

    return-object p0

    .line 593
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "MutableVector is empty."

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final last(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 604
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 607
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v1

    .line 609
    :goto_0
    aget-object v2, v1, v0

    .line 610
    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    goto :goto_0

    .line 614
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->throwNoSuchElementException()Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget v0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-lez v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    iget-object p0, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 627
    :cond_0
    aget-object v1, p0, v0

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public final lastOrNull()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 637
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1211
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1212
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object p0

    aget-object p0, p0, v0

    :goto_0
    return-object p0
.end method

.method public final lastOrNull(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 645
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    if-lez v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 648
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object p0

    .line 650
    :cond_0
    aget-object v1, p0, v0

    .line 651
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final synthetic map(Lkotlin/jvm/functions/Function1;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+TR;>;)[TR;"
        }
    .end annotation

    const-string/jumbo v0, "transform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 665
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    const-string v1, "R"

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    new-array v1, v0, [Ljava/lang/Object;

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1213
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v2

    move-object v4, v3

    check-cast v4, Ljava/lang/Object;

    .line 665
    invoke-interface {p1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final synthetic mapIndexed(Lkotlin/jvm/functions/Function2;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-TT;+TR;>;)[TR;"
        }
    .end annotation

    const-string/jumbo v0, "transform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 675
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    const-string v1, "R"

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    new-array v1, v0, [Ljava/lang/Object;

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1214
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v4

    aget-object v4, v4, v2

    move-object v5, v4

    check-cast v5, Ljava/lang/Object;

    .line 675
    invoke-interface {p1, v3, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final synthetic mapIndexedNotNull(Lkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/collection/MutableVector;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-TT;+TR;>;)",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "TR;>;"
        }
    .end annotation

    const-string/jumbo v0, "transform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 684
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    const-string v1, "R?"

    const/4 v2, 0x0

    .line 685
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    new-array v1, v0, [Ljava/lang/Object;

    if-lez v0, :cond_2

    .line 688
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object p0

    move v3, v2

    .line 691
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget-object v5, p0, v2

    invoke-interface {p1, v4, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    add-int/lit8 v5, v3, 0x1

    .line 693
    aput-object v4, v1, v3

    move v3, v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v0, :cond_0

    move v2, v3

    .line 698
    :cond_2
    new-instance p0, Landroidx/compose/runtime/collection/MutableVector;

    invoke-direct {p0, v1, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    return-object p0
.end method

.method public final synthetic mapNotNull(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/collection/MutableVector;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+TR;>;)",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "TR;>;"
        }
    .end annotation

    const-string/jumbo v0, "transform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 707
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    const-string v1, "R?"

    const/4 v2, 0x0

    .line 708
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    new-array v1, v0, [Ljava/lang/Object;

    if-lez v0, :cond_2

    .line 711
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object p0

    move v3, v2

    .line 714
    :cond_0
    aget-object v4, p0, v2

    invoke-interface {p1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    add-int/lit8 v5, v3, 0x1

    .line 716
    aput-object v4, v1, v3

    move v3, v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v0, :cond_0

    move v2, v3

    .line 721
    :cond_2
    new-instance p0, Landroidx/compose/runtime/collection/MutableVector;

    invoke-direct {p0, v1, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    return-object p0
.end method

.method public final minusAssign(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 735
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final plusAssign(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 728
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 744
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/collection/MutableVector;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 746
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final removeAll(Landroidx/compose/runtime/collection/MutableVector;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "TT;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 1215
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    if-ltz v1, :cond_0

    move v4, v3

    .line 1216
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v5

    aget-object v5, v5, v4

    .line 769
    invoke-virtual {p0, v5}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    if-eq v4, v1, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-eq v0, p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    return v2
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 778
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 782
    check-cast p1, Ljava/lang/Iterable;

    .line 1217
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 783
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-eq v0, p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final removeAll(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 757
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 758
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-eq v0, p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public final removeAt(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 793
    aget-object v1, v0, p1

    .line 1219
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq p1, v2, :cond_0

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 795
    invoke-static {v0, v0, p1, v2, v3}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    :cond_0
    iget p1, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 p0, 0x0

    .line 803
    aput-object p0, v0, p1

    return-object v1
.end method

.method public final removeRange(II)V
    .locals 3

    if-le p2, p1, :cond_2

    iget v0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-ge p2, v0, :cond_0

    iget-object v1, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 813
    invoke-static {v1, v1, p1, p2, v0}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    :cond_0
    iget v0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    .line 1220
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-gt v0, p1, :cond_1

    move p2, v0

    :goto_0
    iget-object v1, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    const/4 v2, 0x0

    .line 822
    aput-object v2, v1, p2

    if-eq p2, p1, :cond_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    iput v0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    :cond_2
    return-void
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 1221
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    const/4 v3, -0x1

    if-ge v3, v1, :cond_1

    .line 1222
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v1

    .line 835
    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 836
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-eq v0, p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public final reversedAny(Lkotlin/jvm/functions/Function1;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 226
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object p0

    .line 228
    :cond_0
    aget-object v2, p0, v0

    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 847
    aget-object v0, p0, p1

    .line 848
    aput-object p2, p0, p1

    return-object v0
.end method

.method public final setContent([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    return-void
.end method

.method public final sortWith(Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "comparator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 856
    invoke-static {v0, p1, v1, p0}, Lkotlin/collections/ArraysKt;->sortWith([Ljava/lang/Object;Ljava/util/Comparator;II)V

    return-void
.end method

.method public final sumBy(Lkotlin/jvm/functions/Function1;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const-string/jumbo v0, "selector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 866
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 868
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object p0

    move v2, v1

    .line 871
    :cond_0
    aget-object v3, p0, v2

    invoke-interface {p1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v0, :cond_0

    :cond_1
    return v1
.end method

.method public final throwNoSuchElementException()Ljava/lang/Void;
    .locals 1

    .line 880
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "MutableVector contains no element matching the predicate."

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
