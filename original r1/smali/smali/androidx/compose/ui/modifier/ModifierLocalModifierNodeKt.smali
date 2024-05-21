.class public final Landroidx/compose/ui/modifier/ModifierLocalModifierNodeKt;
.super Ljava/lang/Object;
.source "ModifierLocalModifierNode.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModifierLocalModifierNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModifierLocalModifierNode.kt\nandroidx/compose/ui/modifier/ModifierLocalModifierNodeKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,208:1\n1#2:209\n11335#3:210\n11670#3,3:211\n37#4,2:214\n*S KotlinDebug\n*F\n+ 1 ModifierLocalModifierNode.kt\nandroidx/compose/ui/modifier/ModifierLocalModifierNodeKt\n*L\n198#1:210\n198#1:211,3\n198#1:214,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u001a\u0006\u0010\u0000\u001a\u00020\u0001\u001a\u001a\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0004\u001a\'\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0005\u001a\u000e\u0012\n\u0008\u0001\u0012\u0006\u0012\u0002\u0008\u00030\u00040\u0006\"\u0006\u0012\u0002\u0008\u00030\u0004\u00a2\u0006\u0002\u0010\u0007\u001a?\u0010\u0000\u001a\u00020\u000122\u0010\u0008\u001a\u001a\u0012\u0016\u0008\u0001\u0012\u0012\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0004\u0012\u0004\u0012\u00020\n0\t0\u0006\"\u0012\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0004\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0002\u0010\u000b\u001a&\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0018\u0010\u000c\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u0004\u0012\u0004\u0012\u0002H\u00020\t\u00a8\u0006\r"
    }
    d2 = {
        "modifierLocalMapOf",
        "Landroidx/compose/ui/modifier/ModifierLocalMap;",
        "T",
        "key",
        "Landroidx/compose/ui/modifier/ModifierLocal;",
        "keys",
        "",
        "([Landroidx/compose/ui/modifier/ModifierLocal;)Landroidx/compose/ui/modifier/ModifierLocalMap;",
        "entries",
        "Lkotlin/Pair;",
        "",
        "([Lkotlin/Pair;)Landroidx/compose/ui/modifier/ModifierLocalMap;",
        "entry",
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


# direct methods
.method public static final modifierLocalMapOf()Landroidx/compose/ui/modifier/ModifierLocalMap;
    .locals 1

    .line 176
    sget-object v0, Landroidx/compose/ui/modifier/EmptyMap;->INSTANCE:Landroidx/compose/ui/modifier/EmptyMap;

    check-cast v0, Landroidx/compose/ui/modifier/ModifierLocalMap;

    return-object v0
.end method

.method public static final modifierLocalMapOf(Landroidx/compose/ui/modifier/ModifierLocal;)Landroidx/compose/ui/modifier/ModifierLocalMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/ui/modifier/ModifierLocal<",
            "TT;>;)",
            "Landroidx/compose/ui/modifier/ModifierLocalMap;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    new-instance v0, Landroidx/compose/ui/modifier/SingleLocalMap;

    invoke-direct {v0, p0}, Landroidx/compose/ui/modifier/SingleLocalMap;-><init>(Landroidx/compose/ui/modifier/ModifierLocal;)V

    check-cast v0, Landroidx/compose/ui/modifier/ModifierLocalMap;

    return-object v0
.end method

.method public static final modifierLocalMapOf(Lkotlin/Pair;)Landroidx/compose/ui/modifier/ModifierLocalMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/Pair<",
            "+",
            "Landroidx/compose/ui/modifier/ModifierLocal<",
            "TT;>;+TT;>;)",
            "Landroidx/compose/ui/modifier/ModifierLocalMap;"
        }
    .end annotation

    const-string v0, "entry"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    new-instance v0, Landroidx/compose/ui/modifier/SingleLocalMap;

    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/modifier/ModifierLocal;

    invoke-direct {v0, v1}, Landroidx/compose/ui/modifier/SingleLocalMap;-><init>(Landroidx/compose/ui/modifier/ModifierLocal;)V

    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/modifier/ModifierLocal;

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroidx/compose/ui/modifier/SingleLocalMap;->set$ui_release(Landroidx/compose/ui/modifier/ModifierLocal;Ljava/lang/Object;)V

    check-cast v0, Landroidx/compose/ui/modifier/ModifierLocalMap;

    return-object v0
.end method

.method public static final varargs modifierLocalMapOf([Landroidx/compose/ui/modifier/ModifierLocal;)Landroidx/compose/ui/modifier/ModifierLocalMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/compose/ui/modifier/ModifierLocal<",
            "*>;)",
            "Landroidx/compose/ui/modifier/ModifierLocalMap;"
        }
    .end annotation

    const-string v0, "keys"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 211
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p0, v3

    const/4 v5, 0x0

    .line 198
    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 212
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 213
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 210
    check-cast v0, Ljava/util/Collection;

    new-array p0, v2, [Lkotlin/Pair;

    .line 215
    invoke-interface {v0, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .line 198
    check-cast p0, [Lkotlin/Pair;

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lkotlin/Pair;

    new-instance v0, Landroidx/compose/ui/modifier/MultiLocalMap;

    invoke-direct {v0, p0}, Landroidx/compose/ui/modifier/MultiLocalMap;-><init>([Lkotlin/Pair;)V

    check-cast v0, Landroidx/compose/ui/modifier/ModifierLocalMap;

    return-object v0
.end method

.method public static final varargs modifierLocalMapOf([Lkotlin/Pair;)Landroidx/compose/ui/modifier/ModifierLocalMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlin/Pair<",
            "+",
            "Landroidx/compose/ui/modifier/ModifierLocal<",
            "*>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/compose/ui/modifier/ModifierLocalMap;"
        }
    .end annotation

    const-string v0, "entries"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    new-instance v0, Landroidx/compose/ui/modifier/MultiLocalMap;

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lkotlin/Pair;

    invoke-direct {v0, p0}, Landroidx/compose/ui/modifier/MultiLocalMap;-><init>([Lkotlin/Pair;)V

    check-cast v0, Landroidx/compose/ui/modifier/ModifierLocalMap;

    return-object v0
.end method
