.class public final synthetic Lcom/google/common/reflect/MutableTypeToInstanceMap$UnmodifiableEntry$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/google/common/reflect/MutableTypeToInstanceMap$UnmodifiableEntry;->$r8$lambda$12WO2KxIwAy1IhqjHhPWXgv0Osg(Ljava/util/Map$Entry;)Lcom/google/common/reflect/MutableTypeToInstanceMap$UnmodifiableEntry;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    return-object p0
.end method
