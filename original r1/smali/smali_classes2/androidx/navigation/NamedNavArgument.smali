.class public final Landroidx/navigation/NamedNavArgument;
.super Ljava/lang/Object;
.source "NamedNavArgument.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0017\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u0086\u0002J\t\u0010\u000c\u001a\u00020\u0005H\u0086\u0002R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Landroidx/navigation/NamedNavArgument;",
        "",
        "name",
        "",
        "argument",
        "Landroidx/navigation/NavArgument;",
        "(Ljava/lang/String;Landroidx/navigation/NavArgument;)V",
        "getArgument",
        "()Landroidx/navigation/NavArgument;",
        "getName",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "navigation-common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final argument:Landroidx/navigation/NavArgument;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/navigation/NavArgument;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "argument"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/navigation/NamedNavArgument;->name:Ljava/lang/String;

    iput-object p2, p0, Landroidx/navigation/NamedNavArgument;->argument:Landroidx/navigation/NavArgument;

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/NamedNavArgument;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Landroidx/navigation/NavArgument;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/NamedNavArgument;->argument:Landroidx/navigation/NavArgument;

    return-object p0
.end method

.method public final getArgument()Landroidx/navigation/NavArgument;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/NamedNavArgument;->argument:Landroidx/navigation/NavArgument;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/NamedNavArgument;->name:Ljava/lang/String;

    return-object p0
.end method
