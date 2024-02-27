.class public abstract Lq1/z0;
.super Lq1/x0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lq1/x0;-><init>()V

    return-void
.end method


# virtual methods
.method protected A(JLq1/y0$a;)V
    .registers 5

    sget-object v0, Lq1/m0;->k:Lq1/m0;

    invoke-virtual {v0, p1, p2, p3}, Lq1/y0;->M(JLq1/y0$a;)V

    return-void
.end method

.method protected final B()V
    .registers 3

    invoke-virtual {p0}, Lq1/z0;->z()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v1, v0, :cond_10

    invoke-static {}, Lq1/c;->a()Lq1/b;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_10
    return-void
.end method

.method protected abstract z()Ljava/lang/Thread;
.end method
