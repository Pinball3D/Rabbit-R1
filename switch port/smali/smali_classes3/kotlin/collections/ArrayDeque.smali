.class public final Lkotlin/collections/ArrayDeque;
.super Lkotlin/collections/AbstractMutableList;
.source "ArrayDeque.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/collections/ArrayDeque$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/collections/AbstractMutableList<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nArrayDeque.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArrayDeque.kt\nkotlin/collections/ArrayDeque\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,569:1\n467#1,51:572\n467#1,51:623\n37#2,2:570\n26#3:674\n*S KotlinDebug\n*F\n+ 1 ArrayDeque.kt\nkotlin/collections/ArrayDeque\n*L\n462#1:572,51\n464#1:623,51\n47#1:570,2\n559#1:674\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u001e\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u001b\u0008\u0007\u0018\u0000 P*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002:\u0001PB\u000f\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0006B\u0015\u0008\u0016\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008\u00a2\u0006\u0002\u0010\tJ\u0015\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0016J\u001d\u0010\u0013\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0019J\u001e\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u00042\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008H\u0016J\u0016\u0010\u001a\u001a\u00020\u00142\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008H\u0016J\u0013\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u0015\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u001cJ\u0013\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u0015\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u001cJ\u0008\u0010\u001e\u001a\u00020\u0017H\u0016J\u0016\u0010\u001f\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010\u0016J\u001e\u0010 \u001a\u00020\u00172\u0006\u0010!\u001a\u00020\u00042\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008H\u0002J\u0010\u0010\"\u001a\u00020\u00172\u0006\u0010#\u001a\u00020\u0004H\u0002J\u0010\u0010$\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004H\u0002J\u0010\u0010%\u001a\u00020\u00172\u0006\u0010&\u001a\u00020\u0004H\u0002J\u001d\u0010\'\u001a\u00020\u00142\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00140)H\u0082\u0008J\u000b\u0010*\u001a\u00028\u0000\u00a2\u0006\u0002\u0010+J\r\u0010,\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0002\u0010+J\u0016\u0010-\u001a\u00028\u00002\u0006\u0010\u0018\u001a\u00020\u0004H\u0096\u0002\u00a2\u0006\u0002\u0010.J\u0010\u0010/\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004H\u0002J\u0015\u00100\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u00101J\u0016\u00102\u001a\u00028\u00002\u0006\u0010!\u001a\u00020\u0004H\u0083\u0008\u00a2\u0006\u0002\u0010.J\u0011\u0010!\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004H\u0083\u0008JM\u00103\u001a\u00020\u00172>\u00104\u001a:\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u00086\u0012\u0008\u00087\u0012\u0004\u0008\u0008(\u000e\u0012\u001b\u0012\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u000b\u00a2\u0006\u000c\u00086\u0012\u0008\u00087\u0012\u0004\u0008\u0008(\u0007\u0012\u0004\u0012\u00020\u001705H\u0000\u00a2\u0006\u0002\u00088J\u0008\u00109\u001a\u00020\u0014H\u0016J\u000b\u0010:\u001a\u00028\u0000\u00a2\u0006\u0002\u0010+J\u0015\u0010;\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u00101J\r\u0010<\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0002\u0010+J\u0010\u0010=\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004H\u0002J\u0010\u0010>\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004H\u0002J\u0015\u0010?\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0016J\u0016\u0010@\u001a\u00020\u00142\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008H\u0016J\u0015\u0010A\u001a\u00028\u00002\u0006\u0010\u0018\u001a\u00020\u0004H\u0016\u00a2\u0006\u0002\u0010.J\u000b\u0010B\u001a\u00028\u0000\u00a2\u0006\u0002\u0010+J\r\u0010C\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0002\u0010+J\u000b\u0010D\u001a\u00028\u0000\u00a2\u0006\u0002\u0010+J\r\u0010E\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0002\u0010+J\u0016\u0010F\u001a\u00020\u00142\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008H\u0016J\u001e\u0010G\u001a\u00028\u00002\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010HJ\u0017\u0010I\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u000bH\u0000\u00a2\u0006\u0004\u0008J\u0010KJ)\u0010I\u001a\u0008\u0012\u0004\u0012\u0002HL0\u000b\"\u0004\u0008\u0001\u0010L2\u000c\u0010M\u001a\u0008\u0012\u0004\u0012\u0002HL0\u000bH\u0000\u00a2\u0006\u0004\u0008J\u0010NJ\u0015\u0010O\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u000bH\u0016\u00a2\u0006\u0002\u0010KJ\'\u0010O\u001a\u0008\u0012\u0004\u0012\u0002HL0\u000b\"\u0004\u0008\u0001\u0010L2\u000c\u0010M\u001a\u0008\u0012\u0004\u0012\u0002HL0\u000bH\u0016\u00a2\u0006\u0002\u0010NR\u0018\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u000bX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\rR\u000e\u0010\u000e\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0004@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006Q"
    }
    d2 = {
        "Lkotlin/collections/ArrayDeque;",
        "E",
        "Lkotlin/collections/AbstractMutableList;",
        "initialCapacity",
        "",
        "(I)V",
        "()V",
        "elements",
        "",
        "(Ljava/util/Collection;)V",
        "elementData",
        "",
        "",
        "[Ljava/lang/Object;",
        "head",
        "<set-?>",
        "size",
        "getSize",
        "()I",
        "add",
        "",
        "element",
        "(Ljava/lang/Object;)Z",
        "",
        "index",
        "(ILjava/lang/Object;)V",
        "addAll",
        "addFirst",
        "(Ljava/lang/Object;)V",
        "addLast",
        "clear",
        "contains",
        "copyCollectionElements",
        "internalIndex",
        "copyElements",
        "newCapacity",
        "decremented",
        "ensureCapacity",
        "minCapacity",
        "filterInPlace",
        "predicate",
        "Lkotlin/Function1;",
        "first",
        "()Ljava/lang/Object;",
        "firstOrNull",
        "get",
        "(I)Ljava/lang/Object;",
        "incremented",
        "indexOf",
        "(Ljava/lang/Object;)I",
        "internalGet",
        "internalStructure",
        "structure",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "internalStructure$kotlin_stdlib",
        "isEmpty",
        "last",
        "lastIndexOf",
        "lastOrNull",
        "negativeMod",
        "positiveMod",
        "remove",
        "removeAll",
        "removeAt",
        "removeFirst",
        "removeFirstOrNull",
        "removeLast",
        "removeLastOrNull",
        "retainAll",
        "set",
        "(ILjava/lang/Object;)Ljava/lang/Object;",
        "testToArray",
        "testToArray$kotlin_stdlib",
        "()[Ljava/lang/Object;",
        "T",
        "array",
        "([Ljava/lang/Object;)[Ljava/lang/Object;",
        "toArray",
        "Companion",
        "kotlin-stdlib"
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
.field public static final Companion:Lkotlin/collections/ArrayDeque$Companion;

.field private static final defaultMinCapacity:I = 0xa

.field private static final emptyElementData:[Ljava/lang/Object;


# instance fields
.field private elementData:[Ljava/lang/Object;

.field private head:I

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/collections/ArrayDeque$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/collections/ArrayDeque$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/collections/ArrayDeque;->Companion:Lkotlin/collections/ArrayDeque$Companion;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lkotlin/collections/ArrayDeque;->emptyElementData:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lkotlin/collections/AbstractMutableList;-><init>()V

    sget-object v0, Lkotlin/collections/ArrayDeque;->emptyElementData:[Ljava/lang/Object;

    iput-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 28
    invoke-direct {p0}, Lkotlin/collections/AbstractMutableList;-><init>()V

    if-nez p1, :cond_0

    sget-object p1, Lkotlin/collections/ArrayDeque;->emptyElementData:[Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    .line 31
    new-array p1, p1, [Ljava/lang/Object;

    :goto_0
    iput-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    return-void

    .line 32
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal Capacity: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Lkotlin/collections/AbstractMutableList;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 571
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 48
    array-length v0, p1

    iput v0, p0, Lkotlin/collections/ArrayDeque;->size:I

    .line 49
    array-length p1, p1

    if-nez p1, :cond_0

    sget-object p1, Lkotlin/collections/ArrayDeque;->emptyElementData:[Ljava/lang/Object;

    iput-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final copyCollectionElements(ILjava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 257
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 259
    array-length v1, v1

    :goto_0
    if-ge p1, v1, :cond_0

    .line 260
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 261
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Lkotlin/collections/ArrayDeque;->head:I

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_1

    .line 264
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 265
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 268
    :cond_1
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result p1

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lkotlin/collections/ArrayDeque;->size:I

    return-void
.end method

.method private final copyElements(I)V
    .locals 4

    .line 74
    new-array p1, p1, [Ljava/lang/Object;

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 75
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 76
    array-length v1, v0

    iget v2, p0, Lkotlin/collections/ArrayDeque;->head:I

    sub-int/2addr v1, v2

    invoke-static {v0, p1, v1, v3, v2}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iput v3, p0, Lkotlin/collections/ArrayDeque;->head:I

    iput-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    return-void
.end method

.method private final decremented(I)I
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 96
    invoke-static {p0}, Lkotlin/collections/ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    move-result p0

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p1, -0x1

    :goto_0
    return p0
.end method

.method private final ensureCapacity(I)V
    .locals 2

    if-ltz p1, :cond_2

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 60
    array-length v1, v0

    if-gt p1, v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lkotlin/collections/ArrayDeque;->emptyElementData:[Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    const/16 v0, 0xa

    .line 62
    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    return-void

    .line 66
    :cond_1
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v1, v1

    invoke-virtual {v0, v1, p1}, Lkotlin/collections/AbstractList$Companion;->newCapacity$kotlin_stdlib(II)I

    move-result p1

    .line 67
    invoke-direct {p0, p1}, Lkotlin/collections/ArrayDeque;->copyElements(I)V

    return-void

    .line 59
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Deque is too big."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final filterInPlace(Lkotlin/jvm/functions/Function1;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 467
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 470
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v2

    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    move-result v0

    iget v2, p0, Lkotlin/collections/ArrayDeque;->head:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v2, v0, :cond_3

    move v5, v2

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v6, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 476
    aget-object v6, v6, v2

    .line 479
    invoke-interface {p1, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    add-int/lit8 v8, v5, 0x1

    .line 480
    aput-object v6, v7, v5

    move v5, v8

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 485
    invoke-static {p1, v3, v5, v0}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    goto :goto_6

    :cond_3
    iget-object v5, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 488
    array-length v5, v5

    move v7, v1

    move v6, v2

    :goto_2
    if-ge v2, v5, :cond_5

    iget-object v8, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 489
    aget-object v9, v8, v2

    .line 490
    aput-object v3, v8, v2

    .line 493
    invoke-interface {p1, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    add-int/lit8 v10, v6, 0x1

    .line 494
    aput-object v9, v8, v6

    move v6, v10

    goto :goto_3

    :cond_4
    move v7, v4

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 499
    :cond_5
    invoke-direct {p0, v6}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    move-result v2

    move v5, v2

    :goto_4
    if-ge v1, v0, :cond_7

    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 502
    aget-object v6, v2, v1

    .line 503
    aput-object v3, v2, v1

    .line 506
    invoke-interface {p1, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 507
    aput-object v6, v2, v5

    .line 508
    invoke-direct {p0, v5}, Lkotlin/collections/ArrayDeque;->incremented(I)I

    move-result v5

    goto :goto_5

    :cond_6
    move v7, v4

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    move v1, v7

    :goto_6
    if-eqz v1, :cond_8

    iget p1, p0, Lkotlin/collections/ArrayDeque;->head:I

    sub-int/2addr v5, p1

    .line 515
    invoke-direct {p0, v5}, Lkotlin/collections/ArrayDeque;->negativeMod(I)I

    move-result p1

    iput p1, p0, Lkotlin/collections/ArrayDeque;->size:I

    :cond_8
    :goto_7
    return v1
.end method

.method private final incremented(I)I
    .locals 0

    iget-object p0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 94
    invoke-static {p0}, Lkotlin/collections/ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p1, 0x1

    :goto_0
    return p0
.end method

.method private final internalGet(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object p0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 84
    aget-object p0, p0, p1

    return-object p0
.end method

.method private final internalIndex(I)I
    .locals 1

    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    add-int/2addr v0, p1

    .line 92
    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    move-result p0

    return p0
.end method

.method private final negativeMod(I)I
    .locals 0

    if-gez p1, :cond_0

    iget-object p0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 89
    array-length p0, p0

    add-int/2addr p1, p0

    :cond_0
    return p1
.end method

.method private final positiveMod(I)I
    .locals 1

    iget-object p0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 87
    array-length v0, p0

    if-lt p1, v0, :cond_0

    array-length p0, p0

    sub-int/2addr p1, p0

    :cond_0
    return p1
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 184
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->checkPositionIndex$kotlin_stdlib(II)V

    .line 186
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 187
    invoke-virtual {p0, p2}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 190
    invoke-virtual {p0, p2}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    return-void

    .line 194
    :cond_1
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->ensureCapacity(I)V

    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    add-int/2addr v0, p1

    .line 221
    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    move-result v0

    .line 223
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v2

    add-int/2addr v2, v1

    shr-int/2addr v2, v1

    const/4 v3, 0x0

    if-ge p1, v2, :cond_3

    .line 225
    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->decremented(I)I

    move-result p1

    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 226
    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->decremented(I)I

    move-result v0

    iget v2, p0, Lkotlin/collections/ArrayDeque;->head:I

    if-lt p1, v2, :cond_2

    iget-object v3, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 229
    aget-object v4, v3, v2

    aput-object v4, v3, v0

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v5, p1, 0x1

    .line 230
    invoke-static {v3, v3, v2, v4, v5}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    add-int/lit8 v5, v2, -0x1

    .line 232
    array-length v6, v4

    invoke-static {v4, v4, v5, v2, v6}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 233
    array-length v4, v2

    sub-int/2addr v4, v1

    aget-object v5, v2, v3

    aput-object v5, v2, v4

    add-int/lit8 v4, p1, 0x1

    .line 234
    invoke-static {v2, v2, v3, v1, v4}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    :goto_0
    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 237
    aput-object p2, v2, p1

    iput v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    goto :goto_2

    :cond_3
    iget p1, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 241
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v2

    add-int/2addr p1, v2

    invoke-direct {p0, p1}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    move-result p1

    if-ge v0, p1, :cond_4

    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    .line 244
    invoke-static {v2, v2, v3, v0, p1}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 246
    invoke-static {v2, v2, v1, v3, p1}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 247
    array-length v2, p1

    sub-int/2addr v2, v1

    aget-object v2, p1, v2

    aput-object v2, p1, v3

    add-int/lit8 v2, v0, 0x1

    .line 248
    array-length v3, p1

    sub-int/2addr v3, v1

    invoke-static {p1, p1, v2, v0, v3}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    :goto_1
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 251
    aput-object p2, p1, v0

    .line 253
    :goto_2
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result p1

    add-int/2addr p1, v1

    iput p1, p0, Lkotlin/collections/ArrayDeque;->size:I

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 179
    invoke-virtual {p0, p1}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->checkPositionIndex$kotlin_stdlib(II)V

    .line 281
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 283
    :cond_0
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 284
    invoke-virtual {p0, p2}, Lkotlin/collections/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    .line 287
    :cond_1
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->ensureCapacity(I)V

    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 289
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v2

    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    move-result v0

    iget v2, p0, Lkotlin/collections/ArrayDeque;->head:I

    add-int/2addr v2, p1

    .line 290
    invoke-direct {p0, v2}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    move-result v2

    .line 291
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    .line 293
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    shr-int/2addr v4, v5

    if-ge p1, v4, :cond_6

    iget p1, p0, Lkotlin/collections/ArrayDeque;->head:I

    sub-int v0, p1, v3

    if-lt v2, p1, :cond_4

    if-ltz v0, :cond_2

    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 300
    invoke-static {v1, v1, v0, p1, v2}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 302
    array-length v6, v4

    add-int/2addr v0, v6

    sub-int v6, v2, p1

    .line 304
    array-length v7, v4

    sub-int/2addr v7, v0

    if-lt v7, v6, :cond_3

    .line 307
    invoke-static {v4, v4, v0, p1, v2}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_0

    :cond_3
    add-int v6, p1, v7

    .line 309
    invoke-static {v4, v4, v0, p1, v6}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    iget v4, p0, Lkotlin/collections/ArrayDeque;->head:I

    add-int/2addr v4, v7

    .line 310
    invoke-static {p1, p1, v1, v4, v2}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 314
    array-length v6, v4

    invoke-static {v4, v4, v0, p1, v6}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    if-lt v3, v2, :cond_5

    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 316
    array-length v4, p1

    sub-int/2addr v4, v3

    invoke-static {p1, p1, v4, v1, v2}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 318
    array-length v4, p1

    sub-int/2addr v4, v3

    invoke-static {p1, p1, v4, v1, v3}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 319
    invoke-static {p1, p1, v1, v3, v2}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    :goto_0
    iput v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    sub-int/2addr v2, v3

    .line 323
    invoke-direct {p0, v2}, Lkotlin/collections/ArrayDeque;->negativeMod(I)I

    move-result p1

    invoke-direct {p0, p1, p2}, Lkotlin/collections/ArrayDeque;->copyCollectionElements(ILjava/util/Collection;)V

    goto :goto_2

    :cond_6
    add-int p1, v2, v3

    if-ge v2, v0, :cond_9

    add-int/2addr v3, v0

    iget-object v4, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 330
    array-length v6, v4

    if-gt v3, v6, :cond_7

    .line 331
    invoke-static {v4, v4, p1, v2, v0}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_1

    .line 333
    :cond_7
    array-length v6, v4

    if-lt p1, v6, :cond_8

    .line 334
    array-length v1, v4

    sub-int/2addr p1, v1

    invoke-static {v4, v4, p1, v2, v0}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_1

    .line 336
    :cond_8
    array-length v6, v4

    sub-int/2addr v3, v6

    sub-int v3, v0, v3

    .line 337
    invoke-static {v4, v4, v1, v3, v0}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 338
    invoke-static {v0, v0, p1, v2, v3}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_1

    :cond_9
    iget-object v4, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 342
    invoke-static {v4, v4, v3, v1, v0}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 343
    array-length v4, v0

    if-lt p1, v4, :cond_a

    .line 344
    array-length v1, v0

    sub-int/2addr p1, v1

    array-length v1, v0

    invoke-static {v0, v0, p1, v2, v1}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_1

    .line 346
    :cond_a
    array-length v4, v0

    sub-int/2addr v4, v3

    array-length v6, v0

    invoke-static {v0, v0, v1, v4, v6}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 347
    array-length v1, v0

    sub-int/2addr v1, v3

    invoke-static {v0, v0, p1, v2, v1}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 350
    :goto_1
    invoke-direct {p0, v2, p2}, Lkotlin/collections/ArrayDeque;->copyCollectionElements(ILjava/util/Collection;)V

    :goto_2
    return v5
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 273
    :cond_0
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->ensureCapacity(I)V

    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 274
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lkotlin/collections/ArrayDeque;->copyCollectionElements(ILjava/util/Collection;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final addFirst(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->ensureCapacity(I)V

    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 126
    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->decremented(I)I

    move-result v0

    iput v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 127
    aput-object p1, v1, v0

    .line 128
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lkotlin/collections/ArrayDeque;->size:I

    return-void
.end method

.method public final addLast(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 135
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->ensureCapacity(I)V

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 137
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    move-result v1

    aput-object p1, v0, v1

    .line 138
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lkotlin/collections/ArrayDeque;->size:I

    return-void
.end method

.method public clear()V
    .locals 6

    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 521
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    move-result v0

    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ge v1, v0, :cond_0

    iget-object v4, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 523
    invoke-static {v4, v3, v1, v0}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    goto :goto_0

    .line 524
    :cond_0
    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    iget v4, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 525
    array-length v5, v1

    invoke-static {v1, v3, v4, v5}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 526
    invoke-static {v1, v3, v2, v0}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    :cond_1
    :goto_0
    iput v2, p0, Lkotlin/collections/ArrayDeque;->head:I

    iput v2, p0, Lkotlin/collections/ArrayDeque;->size:I

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 372
    invoke-virtual {p0, p1}, Lkotlin/collections/ArrayDeque;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    iget p0, p0, Lkotlin/collections/ArrayDeque;->head:I

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "ArrayDeque is empty."

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final firstOrNull()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 108
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    iget p0, p0, Lkotlin/collections/ArrayDeque;->head:I

    aget-object p0, v0, p0

    :goto_0
    return-object p0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 357
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->checkElementIndex$kotlin_stdlib(II)V

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    add-int/2addr v1, p1

    .line 359
    invoke-direct {p0, v1}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public getSize()I
    .locals 0

    iget p0, p0, Lkotlin/collections/ArrayDeque;->size:I

    return p0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4

    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 375
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    move-result v0

    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    if-ge v1, v0, :cond_1

    :goto_0
    if-ge v1, v0, :cond_5

    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 379
    aget-object v2, v2, v1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget p0, p0, Lkotlin/collections/ArrayDeque;->head:I

    :goto_1
    sub-int/2addr v1, p0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-lt v1, v0, :cond_5

    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 382
    array-length v2, v2

    :goto_2
    if-ge v1, v2, :cond_3

    iget-object v3, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 383
    aget-object v3, v3, v1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget p0, p0, Lkotlin/collections/ArrayDeque;->head:I

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_5

    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 386
    aget-object v2, v2, v1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length p1, p1

    add-int/2addr v1, p1

    iget p0, p0, Lkotlin/collections/ArrayDeque;->head:I

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    const/4 p0, -0x1

    return p0
.end method

.method public final internalStructure$kotlin_stdlib(Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-[",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "structure"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 565
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    move-result v0

    .line 566
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    if-ge v1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v0, v0

    sub-int/2addr v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 567
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public isEmpty()Z
    .locals 0

    .line 98
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final last()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 113
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    move-object v2, p0

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "ArrayDeque is empty."

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 4

    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 394
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    move-result v0

    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    const/4 v2, -0x1

    if-ge v1, v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    if-gt v1, v0, :cond_5

    :goto_0
    iget-object v3, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 398
    aget-object v3, v3, v0

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget p0, p0, Lkotlin/collections/ArrayDeque;->head:I

    :goto_1
    sub-int/2addr v0, p0

    return v0

    :cond_0
    if-eq v0, v1, :cond_5

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-le v1, v0, :cond_5

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ge v2, v0, :cond_3

    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 402
    aget-object v1, v1, v0

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length p1, p1

    add-int/2addr v0, p1

    iget p0, p0, Lkotlin/collections/ArrayDeque;->head:I

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 404
    invoke-static {v0}, Lkotlin/collections/ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    if-gt v1, v0, :cond_5

    :goto_3
    iget-object v3, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 405
    aget-object v3, v3, v0

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget p0, p0, Lkotlin/collections/ArrayDeque;->head:I

    goto :goto_1

    :cond_4
    if-eq v0, v1, :cond_5

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_5
    return v2
.end method

.method public final lastOrNull()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 118
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    move-object v2, p0

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    move-result p0

    aget-object p0, v0, p0

    :goto_0
    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 413
    invoke-virtual {p0, p1}, Lkotlin/collections/ArrayDeque;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 415
    :cond_0
    invoke-virtual {p0, p1}, Lkotlin/collections/ArrayDeque;->remove(I)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 572
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 575
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v2

    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    move-result v0

    iget v2, p0, Lkotlin/collections/ArrayDeque;->head:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v2, v0, :cond_3

    move v5, v2

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v6, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 581
    aget-object v6, v6, v2

    .line 462
    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v4

    if-eqz v7, :cond_1

    iget-object v7, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    add-int/lit8 v8, v5, 0x1

    .line 585
    aput-object v6, v7, v5

    move v5, v8

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 590
    invoke-static {p1, v3, v5, v0}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    goto :goto_6

    :cond_3
    iget-object v5, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 593
    array-length v5, v5

    move v7, v1

    move v6, v2

    :goto_2
    if-ge v2, v5, :cond_5

    iget-object v8, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 594
    aget-object v9, v8, v2

    .line 595
    aput-object v3, v8, v2

    .line 462
    invoke-interface {p1, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v4

    if-eqz v8, :cond_4

    iget-object v8, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    add-int/lit8 v10, v6, 0x1

    .line 599
    aput-object v9, v8, v6

    move v6, v10

    goto :goto_3

    :cond_4
    move v7, v4

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 604
    :cond_5
    invoke-direct {p0, v6}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    move-result v2

    move v5, v2

    :goto_4
    if-ge v1, v0, :cond_7

    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 607
    aget-object v6, v2, v1

    .line 608
    aput-object v3, v2, v1

    .line 462
    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v4

    if-eqz v2, :cond_6

    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 612
    aput-object v6, v2, v5

    .line 613
    invoke-direct {p0, v5}, Lkotlin/collections/ArrayDeque;->incremented(I)I

    move-result v5

    goto :goto_5

    :cond_6
    move v7, v4

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    move v1, v7

    :goto_6
    if-eqz v1, :cond_8

    iget p1, p0, Lkotlin/collections/ArrayDeque;->head:I

    sub-int/2addr v5, p1

    .line 620
    invoke-direct {p0, v5}, Lkotlin/collections/ArrayDeque;->negativeMod(I)I

    move-result p1

    iput p1, p0, Lkotlin/collections/ArrayDeque;->size:I

    :cond_8
    :goto_7
    return v1
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 420
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->checkElementIndex$kotlin_stdlib(II)V

    .line 422
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 423
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 425
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    add-int/2addr v1, p1

    .line 428
    invoke-direct {p0, v1}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    move-result v1

    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 429
    aget-object v2, v2, v1

    .line 431
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v3

    const/4 v4, 0x1

    shr-int/2addr v3, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-ge p1, v3, :cond_3

    iget p1, p0, Lkotlin/collections/ArrayDeque;->head:I

    if-lt v1, p1, :cond_2

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    add-int/lit8 v3, p1, 0x1

    .line 434
    invoke-static {v0, v0, v3, p1, v1}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 436
    invoke-static {p1, p1, v4, v6, v1}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 437
    array-length v0, p1

    sub-int/2addr v0, v4

    aget-object v0, p1, v0

    aput-object v0, p1, v6

    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    add-int/lit8 v1, v0, 0x1

    .line 438
    array-length v3, p1

    sub-int/2addr v3, v4

    invoke-static {p1, p1, v1, v0, v3}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    :goto_0
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 441
    aput-object v5, p1, v0

    .line 442
    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->incremented(I)I

    move-result p1

    iput p1, p0, Lkotlin/collections/ArrayDeque;->head:I

    goto :goto_2

    :cond_3
    iget p1, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 445
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v0

    add-int/2addr p1, v0

    invoke-direct {p0, p1}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    move-result p1

    if-gt v1, p1, :cond_4

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v6, p1, 0x1

    .line 448
    invoke-static {v0, v0, v1, v3, v6}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    add-int/lit8 v3, v1, 0x1

    .line 450
    array-length v7, v0

    invoke-static {v0, v0, v1, v3, v7}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 451
    array-length v1, v0

    sub-int/2addr v1, v4

    aget-object v3, v0, v6

    aput-object v3, v0, v1

    add-int/lit8 v1, p1, 0x1

    .line 452
    invoke-static {v0, v0, v6, v4, v1}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    :goto_1
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 455
    aput-object v5, v0, p1

    .line 457
    :goto_2
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result p1

    sub-int/2addr p1, v4

    iput p1, p0, Lkotlin/collections/ArrayDeque;->size:I

    return-object v2
.end method

.method public final removeFirst()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 147
    aget-object v2, v0, v1

    const/4 v3, 0x0

    .line 148
    aput-object v3, v0, v1

    .line 149
    invoke-direct {p0, v1}, Lkotlin/collections/ArrayDeque;->incremented(I)I

    move-result v0

    iput v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 150
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlin/collections/ArrayDeque;->size:I

    return-object v2

    .line 145
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "ArrayDeque is empty."

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final removeFirstOrNull()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 157
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final removeLast()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 163
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 165
    move-object v1, p0

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    move-result v0

    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 166
    aget-object v2, v1, v0

    const/4 v3, 0x0

    .line 167
    aput-object v3, v1, v0

    .line 168
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlin/collections/ArrayDeque;->size:I

    return-object v2

    .line 163
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "ArrayDeque is empty."

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final removeLastOrNull()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 175
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 623
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 626
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v2

    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    move-result v0

    iget v2, p0, Lkotlin/collections/ArrayDeque;->head:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v2, v0, :cond_3

    move v5, v2

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v6, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 632
    aget-object v6, v6, v2

    .line 464
    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    add-int/lit8 v8, v5, 0x1

    .line 636
    aput-object v6, v7, v5

    move v5, v8

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 641
    invoke-static {p1, v3, v5, v0}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    goto :goto_6

    :cond_3
    iget-object v5, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 644
    array-length v5, v5

    move v7, v1

    move v6, v2

    :goto_2
    if-ge v2, v5, :cond_5

    iget-object v8, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 645
    aget-object v9, v8, v2

    .line 646
    aput-object v3, v8, v2

    .line 464
    invoke-interface {p1, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    add-int/lit8 v10, v6, 0x1

    .line 650
    aput-object v9, v8, v6

    move v6, v10

    goto :goto_3

    :cond_4
    move v7, v4

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 655
    :cond_5
    invoke-direct {p0, v6}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    move-result v2

    move v5, v2

    :goto_4
    if-ge v1, v0, :cond_7

    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 658
    aget-object v6, v2, v1

    .line 659
    aput-object v3, v2, v1

    .line 464
    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 663
    aput-object v6, v2, v5

    .line 664
    invoke-direct {p0, v5}, Lkotlin/collections/ArrayDeque;->incremented(I)I

    move-result v5

    goto :goto_5

    :cond_6
    move v7, v4

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    move v1, v7

    :goto_6
    if-eqz v1, :cond_8

    iget p1, p0, Lkotlin/collections/ArrayDeque;->head:I

    sub-int/2addr v5, p1

    .line 671
    invoke-direct {p0, v5}, Lkotlin/collections/ArrayDeque;->negativeMod(I)I

    move-result p1

    iput p1, p0, Lkotlin/collections/ArrayDeque;->size:I

    :cond_8
    :goto_7
    return v1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 363
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->checkElementIndex$kotlin_stdlib(II)V

    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    add-int/2addr v0, p1

    .line 365
    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    move-result p1

    iget-object p0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 366
    aget-object v0, p0, p1

    .line 367
    aput-object p2, p0, p1

    return-object v0
.end method

.method public final testToArray$kotlin_stdlib()[Ljava/lang/Object;
    .locals 0

    .line 556
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->toArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final testToArray$kotlin_stdlib([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 555
    invoke-virtual {p0, p1}, Lkotlin/collections/ArrayDeque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 551
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lkotlin/collections/ArrayDeque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 535
    array-length v0, p1

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v0

    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt;->arrayOfNulls([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    :goto_0
    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 537
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    move-result v4

    iget v3, p0, Lkotlin/collections/ArrayDeque;->head:I

    if-ge v3, v4, :cond_1

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p1

    .line 539
    invoke-static/range {v0 .. v6}, Lkotlin/collections/ArraysKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;

    goto :goto_1

    .line 540
    :cond_1
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 541
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 542
    array-length v1, v0

    iget v2, p0, Lkotlin/collections/ArrayDeque;->head:I

    sub-int/2addr v1, v2

    invoke-static {v0, p1, v1, v3, v4}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 546
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result p0

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt;->terminateCollectionToArray(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
