.class final Landroidx/compose/material/ripple/RippleHostMap;
.super Ljava/lang/Object;
.source "RippleContainer.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRippleContainer.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RippleContainer.android.kt\nandroidx/compose/material/ripple/RippleHostMap\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,185:1\n1#2:186\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u00052\u0006\u0010\t\u001a\u00020\u0006H\u0086\u0002J\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u00062\u0006\u0010\n\u001a\u00020\u0005H\u0086\u0002J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u0006J\u0019\u0010\r\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0005H\u0086\u0002R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/compose/material/ripple/RippleHostMap;",
        "",
        "()V",
        "hostToIndicationMap",
        "",
        "Landroidx/compose/material/ripple/RippleHostView;",
        "Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;",
        "indicationToHostMap",
        "get",
        "indicationInstance",
        "rippleHostView",
        "remove",
        "",
        "set",
        "material-ripple_release"
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
.field private final hostToIndicationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/compose/material/ripple/RippleHostView;",
            "Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;",
            ">;"
        }
    .end annotation
.end field

.field private final indicationToHostMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;",
            "Landroidx/compose/material/ripple/RippleHostView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Landroidx/compose/material/ripple/RippleHostMap;->indicationToHostMap:Ljava/util/Map;

    .line 162
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Landroidx/compose/material/ripple/RippleHostMap;->hostToIndicationMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final get(Landroidx/compose/material/ripple/RippleHostView;)Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;
    .locals 1

    const-string v0, "rippleHostView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/material/ripple/RippleHostMap;->hostToIndicationMap:Ljava/util/Map;

    .line 177
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;

    return-object p0
.end method

.method public final get(Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;)Landroidx/compose/material/ripple/RippleHostView;
    .locals 1

    const-string v0, "indicationInstance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/material/ripple/RippleHostMap;->indicationToHostMap:Ljava/util/Map;

    .line 173
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/material/ripple/RippleHostView;

    return-object p0
.end method

.method public final remove(Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;)V
    .locals 2

    const-string v0, "indicationInstance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/material/ripple/RippleHostMap;->indicationToHostMap:Ljava/util/Map;

    .line 181
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material/ripple/RippleHostView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/compose/material/ripple/RippleHostMap;->hostToIndicationMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;

    :cond_0
    iget-object p0, p0, Landroidx/compose/material/ripple/RippleHostMap;->indicationToHostMap:Ljava/util/Map;

    .line 182
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final set(Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;Landroidx/compose/material/ripple/RippleHostView;)V
    .locals 1

    const-string v0, "indicationInstance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rippleHostView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/material/ripple/RippleHostMap;->indicationToHostMap:Ljava/util/Map;

    .line 168
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/compose/material/ripple/RippleHostMap;->hostToIndicationMap:Ljava/util/Map;

    .line 169
    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
