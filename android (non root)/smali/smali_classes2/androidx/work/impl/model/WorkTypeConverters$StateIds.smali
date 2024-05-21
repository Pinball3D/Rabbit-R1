.class public final Landroidx/work/impl/model/WorkTypeConverters$StateIds;
.super Ljava/lang/Object;
.source "WorkTypeConverters.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/model/WorkTypeConverters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateIds"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Landroidx/work/impl/model/WorkTypeConverters$StateIds;",
        "",
        "()V",
        "BLOCKED",
        "",
        "CANCELLED",
        "COMPLETED_STATES",
        "",
        "ENQUEUED",
        "FAILED",
        "RUNNING",
        "SUCCEEDED",
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
.field public static final BLOCKED:I = 0x4

.field public static final CANCELLED:I = 0x5

.field public static final COMPLETED_STATES:Ljava/lang/String; = "(2, 3, 5)"

.field public static final ENQUEUED:I = 0x0

.field public static final FAILED:I = 0x3

.field public static final INSTANCE:Landroidx/work/impl/model/WorkTypeConverters$StateIds;

.field public static final RUNNING:I = 0x1

.field public static final SUCCEEDED:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/work/impl/model/WorkTypeConverters$StateIds;

    invoke-direct {v0}, Landroidx/work/impl/model/WorkTypeConverters$StateIds;-><init>()V

    sput-object v0, Landroidx/work/impl/model/WorkTypeConverters$StateIds;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters$StateIds;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
