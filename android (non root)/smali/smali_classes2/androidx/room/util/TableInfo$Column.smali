.class public final Landroidx/room/util/TableInfo$Column;
.super Ljava/lang/Object;
.source "TableInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/util/TableInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Column"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/util/TableInfo$Column$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0010\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\'\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tB7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\u000cJ\u0013\u0010\u0012\u001a\u00020\u00062\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0012\u0010\u0014\u001a\u00020\u00082\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0003J\u0008\u0010\u0015\u001a\u00020\u0008H\u0016J\u0008\u0010\u0016\u001a\u00020\u0003H\u0016R\u0016\u0010\r\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u000e\u0010\u000fR\u0010\u0010\u000b\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0010\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Landroidx/room/util/TableInfo$Column;",
        "",
        "name",
        "",
        "type",
        "notNull",
        "",
        "primaryKeyPosition",
        "",
        "(Ljava/lang/String;Ljava/lang/String;ZI)V",
        "defaultValue",
        "createdFrom",
        "(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V",
        "affinity",
        "getAffinity$annotations",
        "()V",
        "isPrimaryKey",
        "()Z",
        "equals",
        "other",
        "findAffinity",
        "hashCode",
        "toString",
        "Companion",
        "room-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Landroidx/room/util/TableInfo$Column$Companion;


# instance fields
.field public final affinity:I

.field public final createdFrom:I

.field public final defaultValue:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final notNull:Z

.field public final primaryKeyPosition:I

.field public final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/room/util/TableInfo$Column$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/room/util/TableInfo$Column$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/room/util/TableInfo$Column;->Companion:Landroidx/room/util/TableInfo$Column$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 8
    .annotation runtime Lkotlin/Deprecated;
        message = "Use {@link Column#Column(String, String, boolean, int, String, int)} instead."
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 176
    invoke-direct/range {v1 .. v7}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/util/TableInfo$Column;->name:Ljava/lang/String;

    iput-object p2, p0, Landroidx/room/util/TableInfo$Column;->type:Ljava/lang/String;

    iput-boolean p3, p0, Landroidx/room/util/TableInfo$Column;->notNull:Z

    iput p4, p0, Landroidx/room/util/TableInfo$Column;->primaryKeyPosition:I

    iput-object p5, p0, Landroidx/room/util/TableInfo$Column;->defaultValue:Ljava/lang/String;

    iput p6, p0, Landroidx/room/util/TableInfo$Column;->createdFrom:I

    .line 173
    invoke-direct {p0, p2}, Landroidx/room/util/TableInfo$Column;->findAffinity(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Landroidx/room/util/TableInfo$Column;->affinity:I

    return-void
.end method

.method public static final defaultValueEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/room/util/TableInfo$Column;->Companion:Landroidx/room/util/TableInfo$Column$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/room/util/TableInfo$Column$Companion;->defaultValueEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private final findAffinity(Ljava/lang/String;)I
    .locals 4

    const/4 p0, 0x5

    if-nez p1, :cond_0

    return p0

    .line 196
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "US"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this as java.lang.String).toUpperCase(locale)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    check-cast p1, Ljava/lang/CharSequence;

    const-string v0, "INT"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    const-string v0, "CHAR"

    .line 200
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "CLOB"

    .line 201
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "TEXT"

    .line 202
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "BLOB"

    .line 206
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return p0

    :cond_3
    const-string p0, "REAL"

    .line 209
    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p1, p0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "FLOA"

    .line 210
    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p1, p0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "DOUB"

    .line 211
    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p1, p0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_0
    const/4 p0, 0x4

    return p0

    :cond_6
    :goto_1
    return v2
.end method

.method public static synthetic getAffinity$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 272
    :cond_0
    instance-of v1, p1, Landroidx/room/util/TableInfo$Column;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget v1, p0, Landroidx/room/util/TableInfo$Column;->primaryKeyPosition:I

    .line 274
    move-object v3, p1

    check-cast v3, Landroidx/room/util/TableInfo$Column;

    iget v3, v3, Landroidx/room/util/TableInfo$Column;->primaryKeyPosition:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/room/util/TableInfo$Column;->name:Ljava/lang/String;

    .line 278
    check-cast p1, Landroidx/room/util/TableInfo$Column;

    iget-object v3, p1, Landroidx/room/util/TableInfo$Column;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Landroidx/room/util/TableInfo$Column;->notNull:Z

    .line 279
    iget-boolean v3, p1, Landroidx/room/util/TableInfo$Column;->notNull:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Landroidx/room/util/TableInfo$Column;->createdFrom:I

    const/4 v3, 0x2

    if-ne v1, v0, :cond_5

    .line 284
    iget v1, p1, Landroidx/room/util/TableInfo$Column;->createdFrom:I

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Landroidx/room/util/TableInfo$Column;->defaultValue:Ljava/lang/String;

    if-eqz v1, :cond_5

    sget-object v4, Landroidx/room/util/TableInfo$Column;->Companion:Landroidx/room/util/TableInfo$Column$Companion;

    .line 286
    iget-object v5, p1, Landroidx/room/util/TableInfo$Column;->defaultValue:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Landroidx/room/util/TableInfo$Column$Companion;->defaultValueEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Landroidx/room/util/TableInfo$Column;->createdFrom:I

    if-ne v1, v3, :cond_6

    .line 291
    iget v1, p1, Landroidx/room/util/TableInfo$Column;->createdFrom:I

    if-ne v1, v0, :cond_6

    .line 292
    iget-object v1, p1, Landroidx/room/util/TableInfo$Column;->defaultValue:Ljava/lang/String;

    if-eqz v1, :cond_6

    sget-object v3, Landroidx/room/util/TableInfo$Column;->Companion:Landroidx/room/util/TableInfo$Column$Companion;

    iget-object v4, p0, Landroidx/room/util/TableInfo$Column;->defaultValue:Ljava/lang/String;

    .line 293
    invoke-virtual {v3, v1, v4}, Landroidx/room/util/TableInfo$Column$Companion;->defaultValueEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Landroidx/room/util/TableInfo$Column;->createdFrom:I

    if-eqz v1, :cond_8

    .line 298
    iget v3, p1, Landroidx/room/util/TableInfo$Column;->createdFrom:I

    if-ne v1, v3, :cond_8

    iget-object v1, p0, Landroidx/room/util/TableInfo$Column;->defaultValue:Ljava/lang/String;

    if-eqz v1, :cond_7

    sget-object v3, Landroidx/room/util/TableInfo$Column;->Companion:Landroidx/room/util/TableInfo$Column$Companion;

    .line 300
    iget-object v4, p1, Landroidx/room/util/TableInfo$Column;->defaultValue:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Landroidx/room/util/TableInfo$Column$Companion;->defaultValueEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    .line 301
    :cond_7
    iget-object v1, p1, Landroidx/room/util/TableInfo$Column;->defaultValue:Ljava/lang/String;

    if-eqz v1, :cond_8

    :goto_0
    return v2

    :cond_8
    iget p0, p0, Landroidx/room/util/TableInfo$Column;->affinity:I

    .line 305
    iget p1, p1, Landroidx/room/util/TableInfo$Column;->affinity:I

    if-ne p0, p1, :cond_9

    goto :goto_1

    :cond_9
    move v0, v2

    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/room/util/TableInfo$Column;->name:Ljava/lang/String;

    .line 317
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/room/util/TableInfo$Column;->affinity:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/room/util/TableInfo$Column;->notNull:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v1, 0x4d5

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/room/util/TableInfo$Column;->primaryKeyPosition:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final isPrimaryKey()Z
    .locals 0

    iget p0, p0, Landroidx/room/util/TableInfo$Column;->primaryKeyPosition:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Column{name=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/room/util/TableInfo$Column;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/room/util/TableInfo$Column;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', affinity=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/room/util/TableInfo$Column;->affinity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', notNull="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/room/util/TableInfo$Column;->notNull:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", primaryKeyPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/room/util/TableInfo$Column;->primaryKeyPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", defaultValue=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroidx/room/util/TableInfo$Column;->defaultValue:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, "undefined"

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\'}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
