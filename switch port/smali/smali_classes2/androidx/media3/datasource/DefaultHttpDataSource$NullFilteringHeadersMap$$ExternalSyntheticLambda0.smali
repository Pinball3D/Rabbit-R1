.class public final synthetic Landroidx/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Landroidx/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;->lambda$entrySet$1(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method
