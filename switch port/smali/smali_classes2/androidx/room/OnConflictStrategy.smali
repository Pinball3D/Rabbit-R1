.class public interface abstract annotation Landroidx/room/OnConflictStrategy;
.super Ljava/lang/Object;
.source "OnConflictStrategy.kt"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/OnConflictStrategy$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0002\u0008\u0002\u0008\u0087\u0002\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002B\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "Landroidx/room/OnConflictStrategy;",
        "",
        "Companion",
        "room-common"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lkotlin/annotation/AnnotationRetention;->BINARY:Lkotlin/annotation/AnnotationRetention;
.end annotation


# static fields
.field public static final ABORT:I = 0x3

.field public static final Companion:Landroidx/room/OnConflictStrategy$Companion;

.field public static final FAIL:I = 0x4

.field public static final IGNORE:I = 0x5

.field public static final NONE:I = 0x0

.field public static final REPLACE:I = 0x1

.field public static final ROLLBACK:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/room/OnConflictStrategy$Companion;->$$INSTANCE:Landroidx/room/OnConflictStrategy$Companion;

    sput-object v0, Landroidx/room/OnConflictStrategy;->Companion:Landroidx/room/OnConflictStrategy$Companion;

    return-void
.end method
