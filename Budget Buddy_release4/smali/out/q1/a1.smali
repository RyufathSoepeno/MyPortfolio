.class public final Lq1/a1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a()Lq1/x0;
    .registers 2

    new-instance v0, Lq1/f;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-direct {v0, v1}, Lq1/f;-><init>(Ljava/lang/Thread;)V

    return-object v0
.end method
