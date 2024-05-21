.class public final Lkotlin/text/HexFormat$Builder;
.super Ljava/lang/Object;
.source "HexFormat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/text/HexFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u0008\u0001\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0013\u001a\u00020\u0014H\u0001J%\u0010\u0007\u001a\u00020\u00152\u0017\u0010\u0016\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00150\u0017\u00a2\u0006\u0002\u0008\u0018H\u0087\u0008\u00f8\u0001\u0000J%\u0010\n\u001a\u00020\u00152\u0017\u0010\u0016\u001a\u0013\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00150\u0017\u00a2\u0006\u0002\u0008\u0018H\u0087\u0008\u00f8\u0001\u0000R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\n\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0019"
    }
    d2 = {
        "Lkotlin/text/HexFormat$Builder;",
        "",
        "()V",
        "_bytes",
        "Lkotlin/text/HexFormat$BytesHexFormat$Builder;",
        "_number",
        "Lkotlin/text/HexFormat$NumberHexFormat$Builder;",
        "bytes",
        "getBytes",
        "()Lkotlin/text/HexFormat$BytesHexFormat$Builder;",
        "number",
        "getNumber",
        "()Lkotlin/text/HexFormat$NumberHexFormat$Builder;",
        "upperCase",
        "",
        "getUpperCase",
        "()Z",
        "setUpperCase",
        "(Z)V",
        "build",
        "Lkotlin/text/HexFormat;",
        "",
        "builderAction",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
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


# instance fields
.field private _bytes:Lkotlin/text/HexFormat$BytesHexFormat$Builder;

.field private _number:Lkotlin/text/HexFormat$NumberHexFormat$Builder;

.field private upperCase:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    sget-object v0, Lkotlin/text/HexFormat;->Companion:Lkotlin/text/HexFormat$Companion;

    invoke-virtual {v0}, Lkotlin/text/HexFormat$Companion;->getDefault()Lkotlin/text/HexFormat;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/text/HexFormat;->getUpperCase()Z

    move-result v0

    iput-boolean v0, p0, Lkotlin/text/HexFormat$Builder;->upperCase:Z

    return-void
.end method

.method private final bytes(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/text/HexFormat$BytesHexFormat$Builder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "builderAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Lkotlin/text/HexFormat$Builder;->getBytes()Lkotlin/text/HexFormat$BytesHexFormat$Builder;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final number(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/text/HexFormat$NumberHexFormat$Builder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "builderAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0}, Lkotlin/text/HexFormat$Builder;->getNumber()Lkotlin/text/HexFormat$NumberHexFormat$Builder;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final build()Lkotlin/text/HexFormat;
    .locals 3

    .line 352
    new-instance v0, Lkotlin/text/HexFormat;

    iget-boolean v1, p0, Lkotlin/text/HexFormat$Builder;->upperCase:Z

    iget-object v2, p0, Lkotlin/text/HexFormat$Builder;->_bytes:Lkotlin/text/HexFormat$BytesHexFormat$Builder;

    if-eqz v2, :cond_0

    .line 354
    invoke-virtual {v2}, Lkotlin/text/HexFormat$BytesHexFormat$Builder;->build$kotlin_stdlib()Lkotlin/text/HexFormat$BytesHexFormat;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    sget-object v2, Lkotlin/text/HexFormat$BytesHexFormat;->Companion:Lkotlin/text/HexFormat$BytesHexFormat$Companion;

    invoke-virtual {v2}, Lkotlin/text/HexFormat$BytesHexFormat$Companion;->getDefault$kotlin_stdlib()Lkotlin/text/HexFormat$BytesHexFormat;

    move-result-object v2

    :cond_1
    iget-object p0, p0, Lkotlin/text/HexFormat$Builder;->_number:Lkotlin/text/HexFormat$NumberHexFormat$Builder;

    if-eqz p0, :cond_2

    .line 355
    invoke-virtual {p0}, Lkotlin/text/HexFormat$NumberHexFormat$Builder;->build$kotlin_stdlib()Lkotlin/text/HexFormat$NumberHexFormat;

    move-result-object p0

    if-nez p0, :cond_3

    :cond_2
    sget-object p0, Lkotlin/text/HexFormat$NumberHexFormat;->Companion:Lkotlin/text/HexFormat$NumberHexFormat$Companion;

    invoke-virtual {p0}, Lkotlin/text/HexFormat$NumberHexFormat$Companion;->getDefault$kotlin_stdlib()Lkotlin/text/HexFormat$NumberHexFormat;

    move-result-object p0

    .line 352
    :cond_3
    invoke-direct {v0, v1, v2, p0}, Lkotlin/text/HexFormat;-><init>(ZLkotlin/text/HexFormat$BytesHexFormat;Lkotlin/text/HexFormat$NumberHexFormat;)V

    return-object v0
.end method

.method public final getBytes()Lkotlin/text/HexFormat$BytesHexFormat$Builder;
    .locals 1

    iget-object v0, p0, Lkotlin/text/HexFormat$Builder;->_bytes:Lkotlin/text/HexFormat$BytesHexFormat$Builder;

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Lkotlin/text/HexFormat$BytesHexFormat$Builder;

    invoke-direct {v0}, Lkotlin/text/HexFormat$BytesHexFormat$Builder;-><init>()V

    iput-object v0, p0, Lkotlin/text/HexFormat$Builder;->_bytes:Lkotlin/text/HexFormat$BytesHexFormat$Builder;

    :cond_0
    iget-object p0, p0, Lkotlin/text/HexFormat$Builder;->_bytes:Lkotlin/text/HexFormat$BytesHexFormat$Builder;

    .line 310
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getNumber()Lkotlin/text/HexFormat$NumberHexFormat$Builder;
    .locals 1

    iget-object v0, p0, Lkotlin/text/HexFormat$Builder;->_number:Lkotlin/text/HexFormat$NumberHexFormat$Builder;

    if-nez v0, :cond_0

    .line 323
    new-instance v0, Lkotlin/text/HexFormat$NumberHexFormat$Builder;

    invoke-direct {v0}, Lkotlin/text/HexFormat$NumberHexFormat$Builder;-><init>()V

    iput-object v0, p0, Lkotlin/text/HexFormat$Builder;->_number:Lkotlin/text/HexFormat$NumberHexFormat$Builder;

    :cond_0
    iget-object p0, p0, Lkotlin/text/HexFormat$Builder;->_number:Lkotlin/text/HexFormat$NumberHexFormat$Builder;

    .line 325
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getUpperCase()Z
    .locals 0

    iget-boolean p0, p0, Lkotlin/text/HexFormat$Builder;->upperCase:Z

    return p0
.end method

.method public final setUpperCase(Z)V
    .locals 0

    iput-boolean p1, p0, Lkotlin/text/HexFormat$Builder;->upperCase:Z

    return-void
.end method
