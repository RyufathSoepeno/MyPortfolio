.class public abstract Landroidx/activity/result/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/activity/result/c;->b(Ljava/lang/Object;Landroidx/core/app/e;)V

    return-void
.end method

.method public abstract b(Ljava/lang/Object;Landroidx/core/app/e;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "Landroidx/core/app/e;",
            ")V"
        }
    .end annotation
.end method

.method public abstract c()V
.end method
