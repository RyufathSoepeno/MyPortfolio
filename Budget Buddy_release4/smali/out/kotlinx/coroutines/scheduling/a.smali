.class public final Lkotlinx/coroutines/scheduling/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/scheduling/a$a;,
        Lkotlinx/coroutines/scheduling/a$c;,
        Lkotlinx/coroutines/scheduling/a$d;,
        Lkotlinx/coroutines/scheduling/a$b;
    }
.end annotation


# static fields
.field public static final l:Lkotlinx/coroutines/scheduling/a$a;

.field private static final synthetic m:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field static final synthetic n:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field private static final synthetic o:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final p:Lkotlinx/coroutines/internal/b0;


# instance fields
.field private volatile synthetic _isTerminated:I

.field volatile synthetic controlState:J

.field public final e:I

.field public final f:I

.field public final g:J

.field public final h:Ljava/lang/String;

.field public final i:Lkotlinx/coroutines/scheduling/d;

.field public final j:Lkotlinx/coroutines/scheduling/d;

.field public final k:Lkotlinx/coroutines/internal/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/internal/y<",
            "Lkotlinx/coroutines/scheduling/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private volatile synthetic parkedWorkersStack:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlinx/coroutines/scheduling/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/scheduling/a$a;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Lkotlinx/coroutines/scheduling/a;->l:Lkotlinx/coroutines/scheduling/a$a;

    new-instance v0, Lkotlinx/coroutines/internal/b0;

    const-string v1, "NOT_IN_STACK"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/b0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/scheduling/a;->p:Lkotlinx/coroutines/internal/b0;

    const-class v0, Lkotlinx/coroutines/scheduling/a;

    const-string v1, "parkedWorkersStack"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/a;->m:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-class v0, Lkotlinx/coroutines/scheduling/a;

    const-string v1, "controlState"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/a;->n:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-class v0, Lkotlinx/coroutines/scheduling/a;

    const-string v1, "_isTerminated"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/a;->o:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(IIJLjava/lang/String;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkotlinx/coroutines/scheduling/a;->e:I

    iput p2, p0, Lkotlinx/coroutines/scheduling/a;->f:I

    iput-wide p3, p0, Lkotlinx/coroutines/scheduling/a;->g:J

    iput-object p5, p0, Lkotlinx/coroutines/scheduling/a;->h:Ljava/lang/String;

    const/4 p5, 0x0

    const/4 v0, 0x1

    if-lt p1, v0, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    if-eqz v1, :cond_b2

    if-lt p2, p1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    const-string v2, "Max pool size "

    if-eqz v1, :cond_91

    const v1, 0x1ffffe

    if-gt p2, v1, :cond_24

    const/4 v1, 0x1

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    :goto_25
    if-eqz v1, :cond_73

    const-wide/16 v1, 0x0

    cmp-long p2, p3, v1

    if-lez p2, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    if-eqz v0, :cond_53

    new-instance p2, Lkotlinx/coroutines/scheduling/d;

    invoke-direct {p2}, Lkotlinx/coroutines/scheduling/d;-><init>()V

    iput-object p2, p0, Lkotlinx/coroutines/scheduling/a;->i:Lkotlinx/coroutines/scheduling/d;

    new-instance p2, Lkotlinx/coroutines/scheduling/d;

    invoke-direct {p2}, Lkotlinx/coroutines/scheduling/d;-><init>()V

    iput-object p2, p0, Lkotlinx/coroutines/scheduling/a;->j:Lkotlinx/coroutines/scheduling/d;

    iput-wide v1, p0, Lkotlinx/coroutines/scheduling/a;->parkedWorkersStack:J

    new-instance p2, Lkotlinx/coroutines/internal/y;

    add-int/lit8 p3, p1, 0x1

    invoke-direct {p2, p3}, Lkotlinx/coroutines/internal/y;-><init>(I)V

    iput-object p2, p0, Lkotlinx/coroutines/scheduling/a;->k:Lkotlinx/coroutines/internal/y;

    int-to-long p1, p1

    const/16 p3, 0x2a

    shl-long/2addr p1, p3

    iput-wide p1, p0, Lkotlinx/coroutines/scheduling/a;->controlState:J

    iput p5, p0, Lkotlinx/coroutines/scheduling/a;->_isTerminated:I

    return-void

    :cond_53
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Idle worker keep alive time "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " must be positive"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_73
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " should not exceed maximal supported number of threads 2097150"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_91
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " should be greater than or equals to core pool size "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_b2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Core pool size "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " should be at least 1"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final a(Lkotlinx/coroutines/scheduling/h;)Z
    .registers 4

    iget-object v0, p1, Lkotlinx/coroutines/scheduling/h;->f:Lkotlinx/coroutines/scheduling/i;

    invoke-interface {v0}, Lkotlinx/coroutines/scheduling/i;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    if-eqz v1, :cond_10

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/a;->j:Lkotlinx/coroutines/scheduling/d;

    goto :goto_12

    :cond_10
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/a;->i:Lkotlinx/coroutines/scheduling/d;

    :goto_12
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/internal/p;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final b()I
    .registers 11

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/a;->k:Lkotlinx/coroutines/internal/y;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/a;->isTerminated()Z

    move-result v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_7a

    if-eqz v1, :cond_c

    const/4 v1, -0x1

    :goto_a
    monitor-exit v0

    return v1

    :cond_c
    :try_start_c
    iget-wide v1, p0, Lkotlinx/coroutines/scheduling/a;->controlState:J

    const-wide/32 v3, 0x1fffff

    and-long v5, v1, v3

    long-to-int v6, v5

    const-wide v7, 0x3ffffe00000L

    and-long/2addr v1, v7

    const/16 v5, 0x15

    shr-long/2addr v1, v5

    long-to-int v2, v1

    sub-int v1, v6, v2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lm1/d;->a(II)I

    move-result v1

    iget v5, p0, Lkotlinx/coroutines/scheduling/a;->e:I
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_7a

    if-lt v1, v5, :cond_2b

    monitor-exit v0

    return v2

    :cond_2b
    :try_start_2b
    iget v5, p0, Lkotlinx/coroutines/scheduling/a;->f:I
    :try_end_2d
    .catchall {:try_start_2b .. :try_end_2d} :catchall_7a

    if-lt v6, v5, :cond_31

    monitor-exit v0

    return v2

    :cond_31
    :try_start_31
    iget-wide v5, p0, Lkotlinx/coroutines/scheduling/a;->controlState:J

    and-long/2addr v5, v3

    long-to-int v6, v5

    const/4 v5, 0x1

    add-int/2addr v6, v5

    if-lez v6, :cond_43

    iget-object v7, p0, Lkotlinx/coroutines/scheduling/a;->k:Lkotlinx/coroutines/internal/y;

    invoke-virtual {v7, v6}, Lkotlinx/coroutines/internal/y;->b(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_43

    const/4 v7, 0x1

    goto :goto_44

    :cond_43
    const/4 v7, 0x0

    :goto_44
    if-eqz v7, :cond_6e

    new-instance v7, Lkotlinx/coroutines/scheduling/a$c;

    invoke-direct {v7, p0, v6}, Lkotlinx/coroutines/scheduling/a$c;-><init>(Lkotlinx/coroutines/scheduling/a;I)V

    iget-object v8, p0, Lkotlinx/coroutines/scheduling/a;->k:Lkotlinx/coroutines/internal/y;

    invoke-virtual {v8, v6, v7}, Lkotlinx/coroutines/internal/y;->c(ILjava/lang/Object;)V

    sget-object v8, Lkotlinx/coroutines/scheduling/a;->n:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v8, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    move-result-wide v8

    and-long/2addr v3, v8

    long-to-int v4, v3

    if-ne v6, v4, :cond_5b

    const/4 v2, 0x1

    :cond_5b
    if-eqz v2, :cond_62

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    add-int/2addr v1, v5

    goto :goto_a

    :cond_62
    const-string v1, "Failed requirement."

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6e
    const-string v1, "Failed requirement."

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_7a
    .catchall {:try_start_31 .. :try_end_7a} :catchall_7a

    :catchall_7a
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private final d()Lkotlinx/coroutines/scheduling/a$c;
    .registers 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/scheduling/a$c;

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    check-cast v0, Lkotlinx/coroutines/scheduling/a$c;

    goto :goto_d

    :cond_c
    move-object v0, v2

    :goto_d
    if-nez v0, :cond_10

    goto :goto_1b

    :cond_10
    invoke-static {v0}, Lkotlinx/coroutines/scheduling/a$c;->a(Lkotlinx/coroutines/scheduling/a$c;)Lkotlinx/coroutines/scheduling/a;

    move-result-object v1

    invoke-static {v1, p0}, Lkotlin/jvm/internal/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    move-object v2, v0

    :cond_1b
    :goto_1b
    return-object v2
.end method

.method public static synthetic f(Lkotlinx/coroutines/scheduling/a;Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/i;ZILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_6

    sget-object p2, Lkotlinx/coroutines/scheduling/l;->f:Lkotlinx/coroutines/scheduling/i;

    :cond_6
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_b

    const/4 p3, 0x0

    :cond_b
    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/scheduling/a;->e(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/i;Z)V

    return-void
.end method

.method private final g(Lkotlinx/coroutines/scheduling/a$c;)I
    .registers 3

    :cond_0
    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/a$c;->h()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lkotlinx/coroutines/scheduling/a;->p:Lkotlinx/coroutines/internal/b0;

    if-ne p1, v0, :cond_a

    const/4 p1, -0x1

    return p1

    :cond_a
    if-nez p1, :cond_e

    const/4 p1, 0x0

    return p1

    :cond_e
    check-cast p1, Lkotlinx/coroutines/scheduling/a$c;

    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/a$c;->g()I

    move-result v0

    if-eqz v0, :cond_0

    return v0
.end method

.method private final h()Lkotlinx/coroutines/scheduling/a$c;
    .registers 10

    :cond_0
    :goto_0
    iget-wide v2, p0, Lkotlinx/coroutines/scheduling/a;->parkedWorkersStack:J

    const-wide/32 v0, 0x1fffff

    and-long/2addr v0, v2

    long-to-int v1, v0

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/a;->k:Lkotlinx/coroutines/internal/y;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/internal/y;->b(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lkotlinx/coroutines/scheduling/a$c;

    if-nez v6, :cond_14

    const/4 v0, 0x0

    return-object v0

    :cond_14
    const-wide/32 v0, 0x200000

    add-long/2addr v0, v2

    const-wide/32 v4, -0x200000

    and-long/2addr v0, v4

    invoke-direct {p0, v6}, Lkotlinx/coroutines/scheduling/a;->g(Lkotlinx/coroutines/scheduling/a$c;)I

    move-result v4

    if-gez v4, :cond_23

    goto :goto_0

    :cond_23
    sget-object v5, Lkotlinx/coroutines/scheduling/a;->m:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v7, v4

    or-long/2addr v7, v0

    move-object v0, v5

    move-object v1, p0

    move-wide v4, v7

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lkotlinx/coroutines/scheduling/a;->p:Lkotlinx/coroutines/internal/b0;

    invoke-virtual {v6, v0}, Lkotlinx/coroutines/scheduling/a$c;->p(Ljava/lang/Object;)V

    return-object v6
.end method

.method private final m(Z)V
    .registers 5

    sget-object v0, Lkotlinx/coroutines/scheduling/a;->n:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/32 v1, 0x200000

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide v0

    if-eqz p1, :cond_c

    return-void

    :cond_c
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/a;->r()Z

    move-result p1

    if-eqz p1, :cond_13

    return-void

    :cond_13
    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/scheduling/a;->p(J)Z

    move-result p1

    if-eqz p1, :cond_1a

    return-void

    :cond_1a
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/a;->r()Z

    return-void
.end method

.method private final o(Lkotlinx/coroutines/scheduling/a$c;Lkotlinx/coroutines/scheduling/h;Z)Lkotlinx/coroutines/scheduling/h;
    .registers 6

    if-nez p1, :cond_3

    return-object p2

    :cond_3
    iget-object v0, p1, Lkotlinx/coroutines/scheduling/a$c;->f:Lkotlinx/coroutines/scheduling/a$d;

    sget-object v1, Lkotlinx/coroutines/scheduling/a$d;->i:Lkotlinx/coroutines/scheduling/a$d;

    if-ne v0, v1, :cond_a

    return-object p2

    :cond_a
    iget-object v0, p2, Lkotlinx/coroutines/scheduling/h;->f:Lkotlinx/coroutines/scheduling/i;

    invoke-interface {v0}, Lkotlinx/coroutines/scheduling/i;->b()I

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p1, Lkotlinx/coroutines/scheduling/a$c;->f:Lkotlinx/coroutines/scheduling/a$d;

    sget-object v1, Lkotlinx/coroutines/scheduling/a$d;->f:Lkotlinx/coroutines/scheduling/a$d;

    if-ne v0, v1, :cond_19

    return-object p2

    :cond_19
    const/4 v0, 0x1

    iput-boolean v0, p1, Lkotlinx/coroutines/scheduling/a$c;->j:Z

    iget-object p1, p1, Lkotlinx/coroutines/scheduling/a$c;->e:Lkotlinx/coroutines/scheduling/o;

    invoke-virtual {p1, p2, p3}, Lkotlinx/coroutines/scheduling/o;->a(Lkotlinx/coroutines/scheduling/h;Z)Lkotlinx/coroutines/scheduling/h;

    move-result-object p1

    return-object p1
.end method

.method private final p(J)Z
    .registers 7

    const-wide/32 v0, 0x1fffff

    and-long/2addr v0, p1

    long-to-int v1, v0

    const-wide v2, 0x3ffffe00000L

    and-long/2addr p1, v2

    const/16 v0, 0x15

    shr-long/2addr p1, v0

    long-to-int p2, p1

    sub-int/2addr v1, p2

    const/4 p1, 0x0

    invoke-static {v1, p1}, Lm1/d;->a(II)I

    move-result p2

    iget v0, p0, Lkotlinx/coroutines/scheduling/a;->e:I

    if-ge p2, v0, :cond_2a

    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/a;->b()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_27

    iget v1, p0, Lkotlinx/coroutines/scheduling/a;->e:I

    if-le v1, v0, :cond_27

    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/a;->b()I

    :cond_27
    if-lez p2, :cond_2a

    return v0

    :cond_2a
    return p1
.end method

.method static synthetic q(Lkotlinx/coroutines/scheduling/a;JILjava/lang/Object;)Z
    .registers 5

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_6

    iget-wide p1, p0, Lkotlinx/coroutines/scheduling/a;->controlState:J

    :cond_6
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/scheduling/a;->p(J)Z

    move-result p0

    return p0
.end method

.method private final r()Z
    .registers 5

    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/a;->h()Lkotlinx/coroutines/scheduling/a$c;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    sget-object v2, Lkotlinx/coroutines/scheduling/a$c;->l:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final c(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/i;)Lkotlinx/coroutines/scheduling/h;
    .registers 6

    sget-object v0, Lkotlinx/coroutines/scheduling/l;->e:Lkotlinx/coroutines/scheduling/g;

    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/g;->a()J

    move-result-wide v0

    instance-of v2, p1, Lkotlinx/coroutines/scheduling/h;

    if-eqz v2, :cond_11

    check-cast p1, Lkotlinx/coroutines/scheduling/h;

    iput-wide v0, p1, Lkotlinx/coroutines/scheduling/h;->e:J

    iput-object p2, p1, Lkotlinx/coroutines/scheduling/h;->f:Lkotlinx/coroutines/scheduling/i;

    return-object p1

    :cond_11
    new-instance v2, Lkotlinx/coroutines/scheduling/k;

    invoke-direct {v2, p1, v0, v1, p2}, Lkotlinx/coroutines/scheduling/k;-><init>(Ljava/lang/Runnable;JLkotlinx/coroutines/scheduling/i;)V

    return-object v2
.end method

.method public close()V
    .registers 3

    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/scheduling/a;->l(J)V

    return-void
.end method

.method public final e(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/i;Z)V
    .registers 5

    invoke-static {}, Lq1/c;->a()Lq1/b;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/scheduling/a;->c(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/i;)Lkotlinx/coroutines/scheduling/h;

    move-result-object p1

    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/a;->d()Lkotlinx/coroutines/scheduling/a$c;

    move-result-object p2

    invoke-direct {p0, p2, p1, p3}, Lkotlinx/coroutines/scheduling/a;->o(Lkotlinx/coroutines/scheduling/a$c;Lkotlinx/coroutines/scheduling/h;Z)Lkotlinx/coroutines/scheduling/h;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-direct {p0, v0}, Lkotlinx/coroutines/scheduling/a;->a(Lkotlinx/coroutines/scheduling/h;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_26

    :cond_18
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    iget-object p2, p0, Lkotlinx/coroutines/scheduling/a;->h:Ljava/lang/String;

    const-string p3, " was terminated"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/k;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_26
    :goto_26
    if-eqz p3, :cond_2c

    if-eqz p2, :cond_2c

    const/4 p2, 0x1

    goto :goto_2d

    :cond_2c
    const/4 p2, 0x0

    :goto_2d
    iget-object p1, p1, Lkotlinx/coroutines/scheduling/h;->f:Lkotlinx/coroutines/scheduling/i;

    invoke-interface {p1}, Lkotlinx/coroutines/scheduling/i;->b()I

    move-result p1

    if-nez p1, :cond_3c

    if-eqz p2, :cond_38

    return-void

    :cond_38
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/a;->n()V

    goto :goto_3f

    :cond_3c
    invoke-direct {p0, p2}, Lkotlinx/coroutines/scheduling/a;->m(Z)V

    :goto_3f
    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .registers 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/scheduling/a;->f(Lkotlinx/coroutines/scheduling/a;Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/i;ZILjava/lang/Object;)V

    return-void
.end method

.method public final i(Lkotlinx/coroutines/scheduling/a$c;)Z
    .registers 10

    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/a$c;->h()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/scheduling/a;->p:Lkotlinx/coroutines/internal/b0;

    if-eq v0, v1, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    iget-wide v2, p0, Lkotlinx/coroutines/scheduling/a;->parkedWorkersStack:J

    const-wide/32 v0, 0x1fffff

    and-long/2addr v0, v2

    long-to-int v1, v0

    const-wide/32 v4, 0x200000

    add-long/2addr v4, v2

    const-wide/32 v6, -0x200000

    and-long/2addr v4, v6

    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/a$c;->g()I

    move-result v0

    iget-object v6, p0, Lkotlinx/coroutines/scheduling/a;->k:Lkotlinx/coroutines/internal/y;

    invoke-virtual {v6, v1}, Lkotlinx/coroutines/internal/y;->b(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lkotlinx/coroutines/scheduling/a$c;->p(Ljava/lang/Object;)V

    sget-object v1, Lkotlinx/coroutines/scheduling/a;->m:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v6, v0

    or-long/2addr v4, v6

    move-object v0, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x1

    return p1
.end method

.method public final isTerminated()Z
    .registers 2

    iget v0, p0, Lkotlinx/coroutines/scheduling/a;->_isTerminated:I

    return v0
.end method

.method public final j(Lkotlinx/coroutines/scheduling/a$c;II)V
    .registers 12

    :cond_0
    :goto_0
    iget-wide v2, p0, Lkotlinx/coroutines/scheduling/a;->parkedWorkersStack:J

    const-wide/32 v0, 0x1fffff

    and-long/2addr v0, v2

    long-to-int v1, v0

    const-wide/32 v4, 0x200000

    add-long/2addr v4, v2

    const-wide/32 v6, -0x200000

    and-long/2addr v4, v6

    if-ne v1, p2, :cond_19

    if-nez p3, :cond_18

    invoke-direct {p0, p1}, Lkotlinx/coroutines/scheduling/a;->g(Lkotlinx/coroutines/scheduling/a$c;)I

    move-result v1

    goto :goto_19

    :cond_18
    move v1, p3

    :cond_19
    :goto_19
    if-gez v1, :cond_1c

    goto :goto_0

    :cond_1c
    sget-object v0, Lkotlinx/coroutines/scheduling/a;->m:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v6, v1

    or-long/2addr v4, v6

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final k(Lkotlinx/coroutines/scheduling/h;)V
    .registers 4

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    :goto_3
    invoke-static {}, Lq1/c;->a()Lq1/b;

    goto :goto_14

    :catchall_7
    move-exception p1

    :try_start_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_15

    goto :goto_3

    :goto_14
    return-void

    :catchall_15
    move-exception p1

    invoke-static {}, Lq1/c;->a()Lq1/b;

    throw p1
.end method

.method public final l(J)V
    .registers 10

    sget-object v0, Lkotlinx/coroutines/scheduling/a;->o:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/a;->d()Lkotlinx/coroutines/scheduling/a$c;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/scheduling/a;->k:Lkotlinx/coroutines/internal/y;

    monitor-enter v1

    :try_start_12
    iget-wide v3, p0, Lkotlinx/coroutines/scheduling/a;->controlState:J
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_80

    const-wide/32 v5, 0x1fffff

    and-long/2addr v3, v5

    long-to-int v4, v3

    monitor-exit v1

    if-gt v2, v4, :cond_45

    const/4 v1, 0x1

    :goto_1d
    add-int/lit8 v3, v1, 0x1

    iget-object v5, p0, Lkotlinx/coroutines/scheduling/a;->k:Lkotlinx/coroutines/internal/y;

    invoke-virtual {v5, v1}, Lkotlinx/coroutines/internal/y;->b(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/k;->b(Ljava/lang/Object;)V

    check-cast v5, Lkotlinx/coroutines/scheduling/a$c;

    if-eq v5, v0, :cond_40

    :goto_2c
    invoke-virtual {v5}, Ljava/lang/Thread;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_39

    invoke-static {v5}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    invoke-virtual {v5, p1, p2}, Ljava/lang/Thread;->join(J)V

    goto :goto_2c

    :cond_39
    iget-object v5, v5, Lkotlinx/coroutines/scheduling/a$c;->e:Lkotlinx/coroutines/scheduling/o;

    iget-object v6, p0, Lkotlinx/coroutines/scheduling/a;->j:Lkotlinx/coroutines/scheduling/d;

    invoke-virtual {v5, v6}, Lkotlinx/coroutines/scheduling/o;->g(Lkotlinx/coroutines/scheduling/d;)V

    :cond_40
    if-ne v1, v4, :cond_43

    goto :goto_45

    :cond_43
    move v1, v3

    goto :goto_1d

    :cond_45
    :goto_45
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/a;->j:Lkotlinx/coroutines/scheduling/d;

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/p;->b()V

    iget-object p1, p0, Lkotlinx/coroutines/scheduling/a;->i:Lkotlinx/coroutines/scheduling/d;

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/p;->b()V

    :goto_4f
    if-nez v0, :cond_53

    const/4 p1, 0x0

    goto :goto_57

    :cond_53
    invoke-virtual {v0, v2}, Lkotlinx/coroutines/scheduling/a$c;->f(Z)Lkotlinx/coroutines/scheduling/h;

    move-result-object p1

    :goto_57
    if-nez p1, :cond_7c

    iget-object p1, p0, Lkotlinx/coroutines/scheduling/a;->i:Lkotlinx/coroutines/scheduling/d;

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/p;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/scheduling/h;

    if-nez p1, :cond_7c

    iget-object p1, p0, Lkotlinx/coroutines/scheduling/a;->j:Lkotlinx/coroutines/scheduling/d;

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/p;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/scheduling/h;

    if-nez p1, :cond_7c

    if-nez v0, :cond_70

    goto :goto_75

    :cond_70
    sget-object p1, Lkotlinx/coroutines/scheduling/a$d;->i:Lkotlinx/coroutines/scheduling/a$d;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/scheduling/a$c;->s(Lkotlinx/coroutines/scheduling/a$d;)Z

    :goto_75
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lkotlinx/coroutines/scheduling/a;->parkedWorkersStack:J

    iput-wide p1, p0, Lkotlinx/coroutines/scheduling/a;->controlState:J

    return-void

    :cond_7c
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/scheduling/a;->k(Lkotlinx/coroutines/scheduling/h;)V

    goto :goto_4f

    :catchall_80
    move-exception p1

    monitor-exit v1

    throw p1
.end method

.method public final n()V
    .registers 5

    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/a;->r()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lkotlinx/coroutines/scheduling/a;->q(Lkotlinx/coroutines/scheduling/a;JILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    :cond_12
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/a;->r()Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lkotlinx/coroutines/scheduling/a;->k:Lkotlinx/coroutines/internal/y;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/y;->a()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    :goto_12
    if-ge v8, v1, :cond_7a

    add-int/lit8 v9, v8, 0x1

    iget-object v10, p0, Lkotlinx/coroutines/scheduling/a;->k:Lkotlinx/coroutines/internal/y;

    invoke-virtual {v10, v8}, Lkotlinx/coroutines/internal/y;->b(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlinx/coroutines/scheduling/a$c;

    if-nez v8, :cond_22

    :cond_20
    :goto_20
    move v8, v9

    goto :goto_12

    :cond_22
    iget-object v10, v8, Lkotlinx/coroutines/scheduling/a$c;->e:Lkotlinx/coroutines/scheduling/o;

    invoke-virtual {v10}, Lkotlinx/coroutines/scheduling/o;->f()I

    move-result v10

    iget-object v8, v8, Lkotlinx/coroutines/scheduling/a$c;->f:Lkotlinx/coroutines/scheduling/a$d;

    sget-object v11, Lkotlinx/coroutines/scheduling/a$b;->a:[I

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v8, v11, v8

    if-eq v8, v3, :cond_77

    const/4 v11, 0x2

    if-eq v8, v11, :cond_60

    const/4 v11, 0x3

    if-eq v8, v11, :cond_53

    const/4 v11, 0x4

    if-eq v8, v11, :cond_44

    const/4 v10, 0x5

    if-eq v8, v10, :cond_41

    goto :goto_20

    :cond_41
    add-int/lit8 v7, v7, 0x1

    goto :goto_20

    :cond_44
    add-int/lit8 v6, v6, 0x1

    if-lez v10, :cond_20

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v10, 0x64

    goto :goto_6c

    :cond_53
    add-int/lit8 v2, v2, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v10, 0x63

    goto :goto_6c

    :cond_60
    add-int/lit8 v4, v4, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v10, 0x62

    :goto_6c
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_77
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    :cond_7a
    iget-wide v8, p0, Lkotlinx/coroutines/scheduling/a;->controlState:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lkotlinx/coroutines/scheduling/a;->h:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lq1/l0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "[Pool Size {core = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lkotlinx/coroutines/scheduling/a;->e:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", max = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lkotlinx/coroutines/scheduling/a;->f:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "}, Worker States {CPU = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", blocking = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", parked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dormant = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", terminated = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "}, running workers queues = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", global CPU queue size = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/a;->i:Lkotlinx/coroutines/scheduling/d;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/p;->c()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", global blocking queue size = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/a;->j:Lkotlinx/coroutines/scheduling/d;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/p;->c()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Control State {created workers= "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v2, 0x1fffff

    and-long/2addr v2, v8

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", blocking tasks = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v2, 0x3ffffe00000L

    and-long/2addr v2, v8

    const/16 v0, 0x15

    shr-long/2addr v2, v0

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", CPUs acquired = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lkotlinx/coroutines/scheduling/a;->e:I

    const-wide v2, 0x7ffffc0000000000L

    and-long/2addr v2, v8

    const/16 v4, 0x2a

    shr-long/2addr v2, v4

    long-to-int v3, v2

    sub-int/2addr v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "}]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
