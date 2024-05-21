.class public final enum Landroidx/work/WorkManager$UpdateResult;
.super Ljava/lang/Enum;
.source "WorkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/WorkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UpdateResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/work/WorkManager$UpdateResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/work/WorkManager$UpdateResult;

.field public static final enum APPLIED_FOR_NEXT_RUN:Landroidx/work/WorkManager$UpdateResult;

.field public static final enum APPLIED_IMMEDIATELY:Landroidx/work/WorkManager$UpdateResult;

.field public static final enum NOT_APPLIED:Landroidx/work/WorkManager$UpdateResult;


# direct methods
.method private static synthetic $values()[Landroidx/work/WorkManager$UpdateResult;
    .locals 3

    sget-object v0, Landroidx/work/WorkManager$UpdateResult;->NOT_APPLIED:Landroidx/work/WorkManager$UpdateResult;

    sget-object v1, Landroidx/work/WorkManager$UpdateResult;->APPLIED_IMMEDIATELY:Landroidx/work/WorkManager$UpdateResult;

    sget-object v2, Landroidx/work/WorkManager$UpdateResult;->APPLIED_FOR_NEXT_RUN:Landroidx/work/WorkManager$UpdateResult;

    filled-new-array {v0, v1, v2}, [Landroidx/work/WorkManager$UpdateResult;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 684
    new-instance v0, Landroidx/work/WorkManager$UpdateResult;

    const-string v1, "NOT_APPLIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/work/WorkManager$UpdateResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/work/WorkManager$UpdateResult;->NOT_APPLIED:Landroidx/work/WorkManager$UpdateResult;

    .line 690
    new-instance v0, Landroidx/work/WorkManager$UpdateResult;

    const-string v1, "APPLIED_IMMEDIATELY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/work/WorkManager$UpdateResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/work/WorkManager$UpdateResult;->APPLIED_IMMEDIATELY:Landroidx/work/WorkManager$UpdateResult;

    .line 698
    new-instance v0, Landroidx/work/WorkManager$UpdateResult;

    const-string v1, "APPLIED_FOR_NEXT_RUN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/work/WorkManager$UpdateResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/work/WorkManager$UpdateResult;->APPLIED_FOR_NEXT_RUN:Landroidx/work/WorkManager$UpdateResult;

    .line 680
    invoke-static {}, Landroidx/work/WorkManager$UpdateResult;->$values()[Landroidx/work/WorkManager$UpdateResult;

    move-result-object v0

    sput-object v0, Landroidx/work/WorkManager$UpdateResult;->$VALUES:[Landroidx/work/WorkManager$UpdateResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 680
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/work/WorkManager$UpdateResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Landroidx/work/WorkManager$UpdateResult;

    .line 680
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/work/WorkManager$UpdateResult;

    return-object p0
.end method

.method public static values()[Landroidx/work/WorkManager$UpdateResult;
    .locals 1

    sget-object v0, Landroidx/work/WorkManager$UpdateResult;->$VALUES:[Landroidx/work/WorkManager$UpdateResult;

    .line 680
    invoke-virtual {v0}, [Landroidx/work/WorkManager$UpdateResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/work/WorkManager$UpdateResult;

    return-object v0
.end method
