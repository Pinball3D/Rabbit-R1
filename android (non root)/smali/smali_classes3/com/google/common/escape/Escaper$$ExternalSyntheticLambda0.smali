.class public final synthetic Lcom/google/common/escape/Escaper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field public final synthetic f$0:Lcom/google/common/escape/Escaper;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/escape/Escaper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/escape/Escaper$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/escape/Escaper;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/escape/Escaper$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/escape/Escaper;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/common/escape/Escaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
