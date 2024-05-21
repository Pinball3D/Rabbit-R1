.class public interface abstract annotation Lcom/google/android/exoplayer2/util/NonNullApi;
.super Ljava/lang/Object;
.source "NonNullApi.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljavax/annotation/Nonnull;
.end annotation

.annotation runtime Ljavax/annotation/meta/TypeQualifierDefault;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE_USE:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lkotlin/annotations/jvm/UnderMigration;
    status = .enum Lkotlin/annotations/jvm/MigrationStatus;->STRICT:Lkotlin/annotations/jvm/MigrationStatus;
.end annotation
