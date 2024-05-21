.class public final Landroidx/room/ForeignKey$Companion;
.super Ljava/lang/Object;
.source "ForeignKey.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/ForeignKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/room/ForeignKey$Companion;",
        "",
        "()V",
        "CASCADE",
        "",
        "NO_ACTION",
        "RESTRICT",
        "SET_DEFAULT",
        "SET_NULL",
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


# static fields
.field static final synthetic $$INSTANCE:Landroidx/room/ForeignKey$Companion;

.field public static final CASCADE:I = 0x5

.field public static final NO_ACTION:I = 0x1

.field public static final RESTRICT:I = 0x2

.field public static final SET_DEFAULT:I = 0x4

.field public static final SET_NULL:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/room/ForeignKey$Companion;

    invoke-direct {v0}, Landroidx/room/ForeignKey$Companion;-><init>()V

    sput-object v0, Landroidx/room/ForeignKey$Companion;->$$INSTANCE:Landroidx/room/ForeignKey$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
