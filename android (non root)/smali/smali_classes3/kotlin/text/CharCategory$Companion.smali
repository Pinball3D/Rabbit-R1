.class public final Lkotlin/text/CharCategory$Companion;
.super Ljava/lang/Object;
.source "CharCategoryJVM.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/text/CharCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lkotlin/text/CharCategory$Companion;",
        "",
        "()V",
        "valueOf",
        "Lkotlin/text/CharCategory;",
        "category",
        "",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lkotlin/text/CharCategory$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final valueOf(I)Lkotlin/text/CharCategory;
    .locals 2

    .line 172
    new-instance p0, Lkotlin/ranges/IntRange;

    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {p0, p1}, Lkotlin/ranges/IntRange;->contains(I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lkotlin/text/CharCategory;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlin/enums/EnumEntries;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/text/CharCategory;

    goto :goto_0

    .line 173
    :cond_0
    new-instance p0, Lkotlin/ranges/IntRange;

    const/16 v0, 0x12

    const/16 v1, 0x1e

    invoke-direct {p0, v0, v1}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {p0, p1}, Lkotlin/ranges/IntRange;->contains(I)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lkotlin/text/CharCategory;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object p0

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Lkotlin/enums/EnumEntries;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/text/CharCategory;

    :goto_0
    return-object p0

    .line 174
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Category #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is not defined."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
