.class public final Lkotlinx/coroutines/internal/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(I)V
    .registers 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "Expected positive parallelism level, but got "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/k;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
