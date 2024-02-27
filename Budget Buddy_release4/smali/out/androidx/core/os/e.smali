.class public final Landroidx/core/os/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/os/e$a;,
        Landroidx/core/os/e$b;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Landroidx/core/os/e$b;

.field private c:Ljava/lang/Object;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private d()V
    .registers 2

    :goto_0
    iget-boolean v0, p0, Landroidx/core/os/e;->d:Z

    if-eqz v0, :cond_a

    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_0

    :catch_8
    nop

    goto :goto_0

    :cond_a
    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroidx/core/os/e;->a:Z

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/os/e;->a:Z

    iput-boolean v0, p0, Landroidx/core/os/e;->d:Z

    iget-object v0, p0, Landroidx/core/os/e;->b:Landroidx/core/os/e$b;

    iget-object v1, p0, Landroidx/core/os/e;->c:Ljava/lang/Object;

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_36

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    :try_start_14
    invoke-interface {v0}, Landroidx/core/os/e$b;->onCancel()V

    goto :goto_1a

    :catchall_18
    move-exception v0

    goto :goto_20

    :cond_1a
    :goto_1a
    if-eqz v1, :cond_2b

    invoke-static {v1}, Landroidx/core/os/e$a;->a(Ljava/lang/Object;)V
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_18

    goto :goto_2b

    :goto_20
    monitor-enter p0

    :try_start_21
    iput-boolean v2, p0, Landroidx/core/os/e;->d:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_28

    throw v0

    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0

    :cond_2b
    :goto_2b
    monitor-enter p0

    :try_start_2c
    iput-boolean v2, p0, Landroidx/core/os/e;->d:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_33
    move-exception v0

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_33

    throw v0

    :catchall_36
    move-exception v0

    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v0
.end method

.method public b()Ljava/lang/Object;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroidx/core/os/e;->c:Ljava/lang/Object;

    if-nez v0, :cond_12

    invoke-static {}, Landroidx/core/os/e$a;->b()Landroid/os/CancellationSignal;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/os/e;->c:Ljava/lang/Object;

    iget-boolean v1, p0, Landroidx/core/os/e;->a:Z

    if-eqz v1, :cond_12

    invoke-static {v0}, Landroidx/core/os/e$a;->a(Ljava/lang/Object;)V

    :cond_12
    iget-object v0, p0, Landroidx/core/os/e;->c:Ljava/lang/Object;

    monitor-exit p0

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public c(Landroidx/core/os/e$b;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroidx/core/os/e;->d()V

    iget-object v0, p0, Landroidx/core/os/e;->b:Landroidx/core/os/e$b;

    if-ne v0, p1, :cond_a

    monitor-exit p0

    return-void

    :cond_a
    iput-object p1, p0, Landroidx/core/os/e;->b:Landroidx/core/os/e$b;

    iget-boolean v0, p0, Landroidx/core/os/e;->a:Z

    if-eqz v0, :cond_18

    if-nez p1, :cond_13

    goto :goto_18

    :cond_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1a

    invoke-interface {p1}, Landroidx/core/os/e$b;->onCancel()V

    return-void

    :cond_18
    :goto_18
    :try_start_18
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_1a

    throw p1
.end method
