.class public final Landroidx/compose/ui/semantics/SemanticsModifierKt;
.super Ljava/lang/Object;
.source "SemanticsModifier.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSemanticsModifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SemanticsModifier.kt\nandroidx/compose/ui/semantics/SemanticsModifierKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,208:1\n1179#2,2:209\n1253#2,4:211\n*S KotlinDebug\n*F\n+ 1 SemanticsModifier.kt\nandroidx/compose/ui/semantics/SemanticsModifierKt\n*L\n205#1:209,2\n205#1:211,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u001a\u0008\u0010\u0003\u001a\u00020\u0004H\u0000\u001a\u0014\u0010\u0005\u001a\u00020\u0006*\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0002\u001a#\u0010\n\u001a\u00020\u000b*\u00020\u000b2\u0017\u0010\u000c\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00060\r\u00a2\u0006\u0002\u0008\u000f\u001a-\u0010\u0010\u001a\u00020\u000b*\u00020\u000b2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00122\u0017\u0010\u000c\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00060\r\u00a2\u0006\u0002\u0008\u000f\"\u0012\u0010\u0000\u001a\u00060\u0001j\u0002`\u0002X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "lastIdentifier",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Landroidx/compose/ui/platform/AtomicInt;",
        "generateSemanticsId",
        "",
        "addSemanticsPropertiesFrom",
        "",
        "Landroidx/compose/ui/platform/InspectorInfo;",
        "semanticsConfiguration",
        "Landroidx/compose/ui/semantics/SemanticsConfiguration;",
        "clearAndSetSemantics",
        "Landroidx/compose/ui/Modifier;",
        "properties",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
        "Lkotlin/ExtensionFunctionType;",
        "semantics",
        "mergeDescendants",
        "",
        "ui_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static lastIdentifier:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsModifierKt;->lastIdentifier:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static final synthetic access$addSemanticsPropertiesFrom(Landroidx/compose/ui/platform/InspectorInfo;Landroidx/compose/ui/semantics/SemanticsConfiguration;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->addSemanticsPropertiesFrom(Landroidx/compose/ui/platform/InspectorInfo;Landroidx/compose/ui/semantics/SemanticsConfiguration;)V

    return-void
.end method

.method private static final addSemanticsPropertiesFrom(Landroidx/compose/ui/platform/InspectorInfo;Landroidx/compose/ui/semantics/SemanticsConfiguration;)V
    .locals 3

    .line 205
    invoke-virtual {p0}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object p0

    check-cast p1, Ljava/lang/Iterable;

    const/16 v0, 0xa

    .line 209
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 210
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    .line 211
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 212
    check-cast v0, Ljava/util/Map$Entry;

    .line 205
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 206
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p1, "properties"

    .line 205
    invoke-virtual {p0, p1, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static final clearAndSetSemantics(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "properties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    new-instance v0, Landroidx/compose/ui/semantics/ClearAndSetSemanticsElement;

    invoke-direct {v0, p1}, Landroidx/compose/ui/semantics/ClearAndSetSemanticsElement;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Landroidx/compose/ui/Modifier;

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final generateSemanticsId()I
    .locals 2

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsModifierKt;->lastIdentifier:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    .line 27
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    return v0
.end method

.method public static final semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "properties"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    new-instance v0, Landroidx/compose/ui/semantics/AppendedSemanticsElement;

    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/semantics/AppendedSemanticsElement;-><init>(ZLkotlin/jvm/functions/Function1;)V

    check-cast v0, Landroidx/compose/ui/Modifier;

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 111
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
