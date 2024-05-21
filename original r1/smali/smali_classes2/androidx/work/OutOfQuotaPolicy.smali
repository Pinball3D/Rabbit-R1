.class public final enum Landroidx/work/OutOfQuotaPolicy;
.super Ljava/lang/Enum;
.source "OutOfQuotaPolicy.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/work/OutOfQuotaPolicy;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Landroidx/work/OutOfQuotaPolicy;",
        "",
        "(Ljava/lang/String;I)V",
        "RUN_AS_NON_EXPEDITED_WORK_REQUEST",
        "DROP_WORK_REQUEST",
        "work-runtime_release"
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
.field private static final synthetic $VALUES:[Landroidx/work/OutOfQuotaPolicy;

.field public static final enum DROP_WORK_REQUEST:Landroidx/work/OutOfQuotaPolicy;

.field public static final enum RUN_AS_NON_EXPEDITED_WORK_REQUEST:Landroidx/work/OutOfQuotaPolicy;


# direct methods
.method private static final synthetic $values()[Landroidx/work/OutOfQuotaPolicy;
    .locals 2

    sget-object v0, Landroidx/work/OutOfQuotaPolicy;->RUN_AS_NON_EXPEDITED_WORK_REQUEST:Landroidx/work/OutOfQuotaPolicy;

    sget-object v1, Landroidx/work/OutOfQuotaPolicy;->DROP_WORK_REQUEST:Landroidx/work/OutOfQuotaPolicy;

    filled-new-array {v0, v1}, [Landroidx/work/OutOfQuotaPolicy;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Landroidx/work/OutOfQuotaPolicy;

    const-string v1, "RUN_AS_NON_EXPEDITED_WORK_REQUEST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/work/OutOfQuotaPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/work/OutOfQuotaPolicy;->RUN_AS_NON_EXPEDITED_WORK_REQUEST:Landroidx/work/OutOfQuotaPolicy;

    .line 32
    new-instance v0, Landroidx/work/OutOfQuotaPolicy;

    const-string v1, "DROP_WORK_REQUEST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/work/OutOfQuotaPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/work/OutOfQuotaPolicy;->DROP_WORK_REQUEST:Landroidx/work/OutOfQuotaPolicy;

    invoke-static {}, Landroidx/work/OutOfQuotaPolicy;->$values()[Landroidx/work/OutOfQuotaPolicy;

    move-result-object v0

    sput-object v0, Landroidx/work/OutOfQuotaPolicy;->$VALUES:[Landroidx/work/OutOfQuotaPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/work/OutOfQuotaPolicy;
    .locals 1

    const-class v0, Landroidx/work/OutOfQuotaPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/work/OutOfQuotaPolicy;

    return-object p0
.end method

.method public static values()[Landroidx/work/OutOfQuotaPolicy;
    .locals 1

    sget-object v0, Landroidx/work/OutOfQuotaPolicy;->$VALUES:[Landroidx/work/OutOfQuotaPolicy;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/work/OutOfQuotaPolicy;

    return-object v0
.end method
