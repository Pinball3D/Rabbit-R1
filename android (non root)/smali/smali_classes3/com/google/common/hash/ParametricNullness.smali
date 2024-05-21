.class interface abstract annotation Lcom/google/common/hash/ParametricNullness;
.super Ljava/lang/Object;
.source "ParametricNullness.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Ljavax/annotation/Nonnull;
    when = .enum Ljavax/annotation/meta/When;->UNKNOWN:Ljavax/annotation/meta/When;
.end annotation
