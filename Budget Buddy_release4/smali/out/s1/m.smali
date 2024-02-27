.class public Ls1/m;
.super Ls1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ls1/a<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final e:Ljava/util/concurrent/locks/ReentrantLock;

.field private f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lj1/l;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj1/l<",
            "-TE;",
            "La1/q;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ls1/a;-><init>(Lj1/l;)V

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Ls1/m;->e:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object p1, Ls1/b;->a:Lkotlinx/coroutines/internal/b0;

    iput-object p1, p0, Ls1/m;->f:Ljava/lang/Object;

    return-void
.end method

.method private final x(Ljava/lang/Object;)Lkotlinx/coroutines/internal/j0;
    .registers 6

    iget-object v0, p0, Ls1/m;->f:Ljava/lang/Object;

    sget-object v1, Ls1/b;->a:Lkotlinx/coroutines/internal/b0;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_8

    goto :goto_12

    :cond_8
    iget-object v1, p0, Ls1/c;->b:Lj1/l;

    if-nez v1, :cond_d

    goto :goto_12

    :cond_d
    const/4 v3, 0x2

    invoke-static {v1, v0, v2, v3, v2}, Lkotlinx/coroutines/internal/v;->d(Lj1/l;Ljava/lang/Object;Lkotlinx/coroutines/internal/j0;ILjava/lang/Object;)Lkotlinx/coroutines/internal/j0;

    move-result-object v2

    :goto_12
    iput-object p1, p0, Ls1/m;->f:Ljava/lang/Object;

    return-object v2
.end method


# virtual methods
.method protected c()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls1/m;->f:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Ls1/m;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    invoke-virtual {p0}, Ls1/c;->d()Ls1/j;

    move-result-object v1

    if-nez v1, :cond_41

    iget-object v1, p0, Ls1/m;->f:Ljava/lang/Object;

    sget-object v2, Ls1/b;->a:Lkotlinx/coroutines/internal/b0;

    if-ne v1, v2, :cond_34

    :cond_11
    invoke-virtual {p0}, Ls1/a;->l()Ls1/q;

    move-result-object v1

    if-nez v1, :cond_18

    goto :goto_34

    :cond_18
    instance-of v2, v1, Ls1/j;
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_45

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :cond_20
    const/4 v2, 0x0

    :try_start_21
    invoke-interface {v1, p1, v2}, Ls1/q;->g(Ljava/lang/Object;Lkotlinx/coroutines/internal/o$b;)Lkotlinx/coroutines/internal/b0;

    move-result-object v2

    if-eqz v2, :cond_11

    sget-object v2, La1/q;->a:La1/q;
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_45

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-interface {v1, p1}, Ls1/q;->c(Ljava/lang/Object;)V

    invoke-interface {v1}, Ls1/q;->d()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_34
    :goto_34
    :try_start_34
    invoke-direct {p0, p1}, Ls1/m;->x(Ljava/lang/Object;)Lkotlinx/coroutines/internal/j0;

    move-result-object p1

    if-nez p1, :cond_40

    sget-object p1, Ls1/b;->b:Lkotlinx/coroutines/internal/b0;
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_45

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :cond_40
    :try_start_40
    throw p1
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_45

    :cond_41
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :catchall_45
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method protected q(Ls1/o;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/o<",
            "-TE;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Ls1/m;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    invoke-super {p0, p1}, Ls1/a;->q(Ls1/o;)Z

    move-result p1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_d
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method protected final r()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected final s()Z
    .registers 3

    iget-object v0, p0, Ls1/m;->f:Ljava/lang/Object;

    sget-object v1, Ls1/b;->a:Lkotlinx/coroutines/internal/b0;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method protected v()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Ls1/m;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v1, p0, Ls1/m;->f:Ljava/lang/Object;

    sget-object v2, Ls1/b;->a:Lkotlinx/coroutines/internal/b0;

    if-ne v1, v2, :cond_17

    invoke-virtual {p0}, Ls1/c;->d()Ls1/j;

    move-result-object v1

    if-nez v1, :cond_13

    sget-object v1, Ls1/b;->d:Lkotlinx/coroutines/internal/b0;
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_1f

    :cond_13
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :cond_17
    :try_start_17
    iput-object v2, p0, Ls1/m;->f:Ljava/lang/Object;

    sget-object v2, La1/q;->a:La1/q;
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_1f

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :catchall_1f
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method
