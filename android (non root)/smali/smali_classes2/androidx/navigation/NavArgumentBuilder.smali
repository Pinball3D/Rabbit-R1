.class public final Landroidx/navigation/NavArgumentBuilder;
.super Ljava/lang/Object;
.source "NavDestinationBuilder.kt"


# annotations
.annotation runtime Landroidx/navigation/NavDestinationDsl;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0018\u001a\u00020\u0019R\u0014\u0010\u0003\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010\u0008\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0001@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR$\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\r@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R,\u0010\u0013\u001a\u0006\u0012\u0002\u0008\u00030\u00042\n\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u00048F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001a"
    }
    d2 = {
        "Landroidx/navigation/NavArgumentBuilder;",
        "",
        "()V",
        "_type",
        "Landroidx/navigation/NavType;",
        "builder",
        "Landroidx/navigation/NavArgument$Builder;",
        "value",
        "defaultValue",
        "getDefaultValue",
        "()Ljava/lang/Object;",
        "setDefaultValue",
        "(Ljava/lang/Object;)V",
        "",
        "nullable",
        "getNullable",
        "()Z",
        "setNullable",
        "(Z)V",
        "type",
        "getType",
        "()Landroidx/navigation/NavType;",
        "setType",
        "(Landroidx/navigation/NavType;)V",
        "build",
        "Landroidx/navigation/NavArgument;",
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
.field private _type:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "*>;"
        }
    .end annotation
.end field

.field private final builder:Landroidx/navigation/NavArgument$Builder;

.field private defaultValue:Ljava/lang/Object;

.field private nullable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    new-instance v0, Landroidx/navigation/NavArgument$Builder;

    invoke-direct {v0}, Landroidx/navigation/NavArgument$Builder;-><init>()V

    iput-object v0, p0, Landroidx/navigation/NavArgumentBuilder;->builder:Landroidx/navigation/NavArgument$Builder;

    return-void
.end method


# virtual methods
.method public final build()Landroidx/navigation/NavArgument;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/NavArgumentBuilder;->builder:Landroidx/navigation/NavArgument$Builder;

    .line 257
    invoke-virtual {p0}, Landroidx/navigation/NavArgument$Builder;->build()Landroidx/navigation/NavArgument;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/NavArgumentBuilder;->defaultValue:Ljava/lang/Object;

    return-object p0
.end method

.method public final getNullable()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/navigation/NavArgumentBuilder;->nullable:Z

    return p0
.end method

.method public final getType()Landroidx/navigation/NavType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/navigation/NavType<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/navigation/NavArgumentBuilder;->_type:Landroidx/navigation/NavType;

    if-eqz p0, :cond_0

    return-object p0

    .line 230
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "NavType has not been set on this builder."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setDefaultValue(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroidx/navigation/NavArgumentBuilder;->defaultValue:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/navigation/NavArgumentBuilder;->builder:Landroidx/navigation/NavArgument$Builder;

    .line 250
    invoke-virtual {p0, p1}, Landroidx/navigation/NavArgument$Builder;->setDefaultValue(Ljava/lang/Object;)Landroidx/navigation/NavArgument$Builder;

    return-void
.end method

.method public final setNullable(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/navigation/NavArgumentBuilder;->nullable:Z

    iget-object p0, p0, Landroidx/navigation/NavArgumentBuilder;->builder:Landroidx/navigation/NavArgument$Builder;

    .line 239
    invoke-virtual {p0, p1}, Landroidx/navigation/NavArgument$Builder;->setIsNullable(Z)Landroidx/navigation/NavArgument$Builder;

    return-void
.end method

.method public final setType(Landroidx/navigation/NavType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavType<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/navigation/NavArgumentBuilder;->_type:Landroidx/navigation/NavType;

    iget-object p0, p0, Landroidx/navigation/NavArgumentBuilder;->builder:Landroidx/navigation/NavArgument$Builder;

    .line 227
    invoke-virtual {p0, p1}, Landroidx/navigation/NavArgument$Builder;->setType(Landroidx/navigation/NavType;)Landroidx/navigation/NavArgument$Builder;

    return-void
.end method
