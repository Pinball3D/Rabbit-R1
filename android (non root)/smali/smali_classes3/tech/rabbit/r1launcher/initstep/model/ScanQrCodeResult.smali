.class public final Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;
.super Ljava/lang/Object;
.source "ScanQrCodeResult.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$Companion;,
        Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 \u001b2\u00020\u0001:\u0002\u001b\u001cB5\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J9\u0010\u0013\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u0003H\u00d6\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\n\u00a8\u0006\u001d"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;",
        "Ljava/io/Serializable;",
        "username",
        "",
        "accountKey",
        "actualUserId",
        "errorType",
        "Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;)V",
        "getAccountKey",
        "()Ljava/lang/String;",
        "getActualUserId",
        "getErrorType",
        "()Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;",
        "getUsername",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "Companion",
        "ErrorType",
        "app_productionEnvRelease"
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
.field public static final $stable:I = 0x0

.field public static final Companion:Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$Companion;

.field public static final EXTRA_SCAN_QR_CODE_RESULT:Ljava/lang/String; = "EXTRA_SCAN_QR_CODE_RESULT"


# instance fields
.field private final accountKey:Ljava/lang/String;

.field private final actualUserId:Ljava/lang/String;

.field private final errorType:Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;

.field private final username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;->Companion:Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;->username:Ljava/lang/String;

    iput-object p2, p0, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;->accountKey:Ljava/lang/String;

    iput-object p3, p0, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;->actualUserId:Ljava/lang/String;

    iput-object p4, p0, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;->errorType:Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move-object p4, v0

    .line 5
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;)V

    return-void
.end method

.method public static synthetic copy$default(Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;ILjava/lang/Object;)Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;->username:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;->accountKey:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;->actualUserId:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;->errorType:Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;)Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;->username:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;->accountKey:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;->actualUserId:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;->errorType:Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;)Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;
    .locals 0

    new-instance p0, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;

    invoke-direct {p0, p1, p2, p3, p4}, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;

    iget-object v1, p0, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;->username:Ljava/lang/String;

    iget-object v3, p1, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;->username:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;->accountKey:Ljava/lang/String;

    iget-object v3, p1, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;->accountKey:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;->actualUserId:Ljava/lang/String;

    iget-object v3, p1, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;->actualUserId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;->errorType:Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;

    iget-object p1, p1, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;->errorType:Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAccountKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;->accountKey:Ljava/lang/String;

    return-object p0
.end method

.method public final getActualUserId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;->actualUserId:Ljava/lang/String;

    return-object p0
.end method

.method public final getErrorType()Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;->errorType:Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;

    return-object p0
.end method

.method public final getUsername()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;->username:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;->username:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;->accountKey:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;->actualUserId:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;->errorType:Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ScanQrCodeResult(username="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accountKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;->accountKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", actualUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;->actualUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;->errorType:Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
