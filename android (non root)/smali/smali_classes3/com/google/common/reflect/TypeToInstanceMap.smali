.class public interface abstract Lcom/google/common/reflect/TypeToInstanceMap;
.super Ljava/lang/Object;
.source "TypeToInstanceMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation runtime Lcom/google/common/reflect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation runtime Lcom/google/errorprone/annotations/DoNotMock;
    value = "Use ImmutableTypeToInstanceMap or MutableTypeToInstanceMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "Lcom/google/common/reflect/TypeToken<",
        "+TB;>;TB;>;"
    }
.end annotation


# virtual methods
.method public abstract getInstance(Lcom/google/common/reflect/TypeToken;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Lcom/google/common/reflect/TypeToken<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end method

.method public abstract getInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end method

.method public abstract putInstance(Lcom/google/common/reflect/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Lcom/google/common/reflect/TypeToken<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end method

.method public abstract putInstance(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end method
