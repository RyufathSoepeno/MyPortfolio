.class public final Lkotlinx/coroutines/scheduling/a$c;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/scheduling/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# static fields
.field static final synthetic l:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public final e:Lkotlinx/coroutines/scheduling/o;

.field public f:Lkotlinx/coroutines/scheduling/a$d;

.field private g:J

.field private h:J

.field private i:I

.field private volatile indexInArray:I

.field public j:Z

.field final synthetic k:Lkotlinx/coroutines/scheduling/a;

.field private volatile nextParkedWorker:Ljava/lang/Object;

.field volatile synthetic workerCtl:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lkotlinx/coroutines/scheduling/a$c;

    const-string v1, "workerCtl"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/a$c;->l:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method private constructor <init>(Lkotlinx/coroutines/scheduling/a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/a$c;->k:Lkotlinx/coroutines/scheduling/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    new-instance p1, Lkotlinx/coroutines/scheduling/o;

    invoke-direct {p1}, Lkotlinx/coroutines/scheduling/o;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/a$c;->e:Lkotlinx/coroutines/scheduling/o;

    sget-object p1, Lkotlinx/coroutines/scheduling/a$d;->h:Lkotlinx/coroutines/scheduling/a$d;

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/a$c;->f:Lkotlinx/coroutines/scheduling/a$d;

    const/4 p1, 0x0

    iput p1, p0, Lkotlinx/coroutines/scheduling/a$c;->workerCtl:I

    sget-object p1, Lkotlinx/coroutines/scheduling/a;->p:Lkotlinx/coroutines/internal/b0;

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/a$c;->nextParkedWorker:Ljava/lang/Object;

    sget-object p1, Lk1/c;->e:Lk1/c$a;

    invoke-virtual {p1}, Lk1/c$a;->b()I

    move-result p1

    iput p1, p0, Lkotlinx/coroutines/scheduling/a$c;->i:I

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/scheduling/a;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/a$c;->k:Lkotlinx/coroutines/scheduling/a;

    invoke-direct {p0, p1}, Lkotlinx/coroutines/scheduling/a$c;-><init>(Lkotlinx/coroutines/scheduling/a;)V

    invoke-virtual {p0, p2}, Lkotlinx/coroutines/scheduling/a$c;->o(I)V

    return-void
.end method

.method public static final synthetic a(Lkotlinx/coroutines/scheduling/a$c;)Lkotlinx/coroutines/scheduling/a;
    .registers 1

    iget-object p0, p0, Lkotlinx/coroutines/scheduling/a$c;->k:Lkotlinx/coroutines/scheduling/a;

    return-object p0
.end method

.method private final b(I)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/a$c;->k:Lkotlinx/coroutines/scheduling/a;

    sget-object v0, Lkotlinx/coroutines/scheduling/a;->n:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/32 v1, -0x200000

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    iget-object p1, p0, Lkotlinx/coroutines/scheduling/a$c;->f:Lkotlinx/coroutines/scheduling/a$d;

    sget-object v0, Lkotlinx/coroutines/scheduling/a$d;->i:Lkotlinx/coroutines/scheduling/a$d;

    if-eq p1, v0, :cond_17

    sget-object p1, Lkotlinx/coroutines/scheduling/a$d;->h:Lkotlinx/coroutines/scheduling/a$d;

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/a$c;->f:Lkotlinx/coroutines/scheduling/a$d;

    :cond_17
    return-void
.end method

.method private final c(I)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    :cond_3
    sget-object p1, Lkotlinx/coroutines/scheduling/a$d;->f:Lkotlinx/coroutines/scheduling/a$d;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/scheduling/a$c;->s(Lkotlinx/coroutines/scheduling/a$d;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lkotlinx/coroutines/scheduling/a$c;->k:Lkotlinx/coroutines/scheduling/a;

    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/a;->n()V

    :cond_10
    return-void
.end method

.method private final d(Lkotlinx/coroutines/scheduling/h;)V
    .registers 4

    iget-object v0, p1, Lkotlinx/coroutines/scheduling/h;->f:Lkotlinx/coroutines/scheduling/i;

    invoke-interface {v0}, Lkotlinx/coroutines/scheduling/i;->b()I

    move-result v0

    invoke-direct {p0, v0}, Lkotlinx/coroutines/scheduling/a$c;->i(I)V

    invoke-direct {p0, v0}, Lkotlinx/coroutines/scheduling/a$c;->c(I)V

    iget-object v1, p0, Lkotlinx/coroutines/scheduling/a$c;->k:Lkotlinx/coroutines/scheduling/a;

    invoke-virtual {v1, p1}, Lkotlinx/coroutines/scheduling/a;->k(Lkotlinx/coroutines/scheduling/h;)V

    invoke-direct {p0, v0}, Lkotlinx/coroutines/scheduling/a$c;->b(I)V

    return-void
.end method

.method private final e(Z)Lkotlinx/coroutines/scheduling/h;
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2f

    iget-object p1, p0, Lkotlinx/coroutines/scheduling/a$c;->k:Lkotlinx/coroutines/scheduling/a;

    iget p1, p1, Lkotlinx/coroutines/scheduling/a;->e:I

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/scheduling/a$c;->k(I)I

    move-result p1

    if-nez p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    if-eqz p1, :cond_1c

    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/a$c;->m()Lkotlinx/coroutines/scheduling/h;

    move-result-object v1

    if-nez v1, :cond_1b

    goto :goto_1c

    :cond_1b
    return-object v1

    :cond_1c
    :goto_1c
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/a$c;->e:Lkotlinx/coroutines/scheduling/o;

    invoke-virtual {v1}, Lkotlinx/coroutines/scheduling/o;->h()Lkotlinx/coroutines/scheduling/h;

    move-result-object v1

    if-nez v1, :cond_2e

    if-nez p1, :cond_35

    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/a$c;->m()Lkotlinx/coroutines/scheduling/h;

    move-result-object p1

    if-nez p1, :cond_2d

    goto :goto_35

    :cond_2d
    return-object p1

    :cond_2e
    return-object v1

    :cond_2f
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/a$c;->m()Lkotlinx/coroutines/scheduling/h;

    move-result-object p1

    if-nez p1, :cond_39

    :cond_35
    :goto_35
    invoke-direct {p0, v0}, Lkotlinx/coroutines/scheduling/a$c;->t(Z)Lkotlinx/coroutines/scheduling/h;

    move-result-object p1

    :cond_39
    return-object p1
.end method

.method private final i(I)V
    .registers 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lkotlinx/coroutines/scheduling/a$c;->g:J

    iget-object p1, p0, Lkotlinx/coroutines/scheduling/a$c;->f:Lkotlinx/coroutines/scheduling/a$d;

    sget-object v0, Lkotlinx/coroutines/scheduling/a$d;->g:Lkotlinx/coroutines/scheduling/a$d;

    if-ne p1, v0, :cond_e

    sget-object p1, Lkotlinx/coroutines/scheduling/a$d;->f:Lkotlinx/coroutines/scheduling/a$d;

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/a$c;->f:Lkotlinx/coroutines/scheduling/a$d;

    :cond_e
    return-void
.end method

.method private final j()Z
    .registers 3

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/a$c;->nextParkedWorker:Ljava/lang/Object;

    sget-object v1, Lkotlinx/coroutines/scheduling/a;->p:Lkotlinx/coroutines/internal/b0;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private final l()V
    .registers 7

    iget-wide v0, p0, Lkotlinx/coroutines/scheduling/a$c;->g:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_13

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v4, p0, Lkotlinx/coroutines/scheduling/a$c;->k:Lkotlinx/coroutines/scheduling/a;

    iget-wide v4, v4, Lkotlinx/coroutines/scheduling/a;->g:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lkotlinx/coroutines/scheduling/a$c;->g:J

    :cond_13
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/a$c;->k:Lkotlinx/coroutines/scheduling/a;

    iget-wide v0, v0, Lkotlinx/coroutines/scheduling/a;->g:J

    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v4, p0, Lkotlinx/coroutines/scheduling/a$c;->g:J

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2a

    iput-wide v2, p0, Lkotlinx/coroutines/scheduling/a$c;->g:J

    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/a$c;->u()V

    :cond_2a
    return-void
.end method

.method private final m()Lkotlinx/coroutines/scheduling/h;
    .registers 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/scheduling/a$c;->k(I)I

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/a$c;->k:Lkotlinx/coroutines/scheduling/a;

    iget-object v0, v0, Lkotlinx/coroutines/scheduling/a;->i:Lkotlinx/coroutines/scheduling/d;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/p;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/h;

    if-nez v0, :cond_1d

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/a$c;->k:Lkotlinx/coroutines/scheduling/a;

    iget-object v0, v0, Lkotlinx/coroutines/scheduling/a;->j:Lkotlinx/coroutines/scheduling/d;

    :goto_17
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/p;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/h;

    :cond_1d
    return-object v0

    :cond_1e
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/a$c;->k:Lkotlinx/coroutines/scheduling/a;

    iget-object v0, v0, Lkotlinx/coroutines/scheduling/a;->j:Lkotlinx/coroutines/scheduling/d;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/p;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/h;

    if-nez v0, :cond_2f

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/a$c;->k:Lkotlinx/coroutines/scheduling/a;

    iget-object v0, v0, Lkotlinx/coroutines/scheduling/a;->i:Lkotlinx/coroutines/scheduling/d;

    goto :goto_17

    :cond_2f
    return-object v0
.end method

.method private final n()V
    .registers 8

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lkotlinx/coroutines/scheduling/a$c;->k:Lkotlinx/coroutines/scheduling/a;

    invoke-virtual {v2}, Lkotlinx/coroutines/scheduling/a;->isTerminated()Z

    move-result v2

    if-nez v2, :cond_40

    iget-object v2, p0, Lkotlinx/coroutines/scheduling/a$c;->f:Lkotlinx/coroutines/scheduling/a$d;

    sget-object v3, Lkotlinx/coroutines/scheduling/a$d;->i:Lkotlinx/coroutines/scheduling/a$d;

    if-eq v2, v3, :cond_40

    iget-boolean v2, p0, Lkotlinx/coroutines/scheduling/a$c;->j:Z

    invoke-virtual {p0, v2}, Lkotlinx/coroutines/scheduling/a$c;->f(Z)Lkotlinx/coroutines/scheduling/h;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_20

    iput-wide v3, p0, Lkotlinx/coroutines/scheduling/a$c;->h:J

    invoke-direct {p0, v2}, Lkotlinx/coroutines/scheduling/a$c;->d(Lkotlinx/coroutines/scheduling/h;)V

    goto :goto_1

    :cond_20
    iput-boolean v0, p0, Lkotlinx/coroutines/scheduling/a$c;->j:Z

    iget-wide v5, p0, Lkotlinx/coroutines/scheduling/a$c;->h:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_3c

    if-nez v1, :cond_2c

    const/4 v1, 0x1

    goto :goto_2

    :cond_2c
    sget-object v1, Lkotlinx/coroutines/scheduling/a$d;->g:Lkotlinx/coroutines/scheduling/a$d;

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/scheduling/a$c;->s(Lkotlinx/coroutines/scheduling/a$d;)Z

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    iget-wide v1, p0, Lkotlinx/coroutines/scheduling/a$c;->h:J

    invoke-static {v1, v2}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    iput-wide v3, p0, Lkotlinx/coroutines/scheduling/a$c;->h:J

    goto :goto_1

    :cond_3c
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/a$c;->r()V

    goto :goto_2

    :cond_40
    sget-object v0, Lkotlinx/coroutines/scheduling/a$d;->i:Lkotlinx/coroutines/scheduling/a$d;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/scheduling/a$c;->s(Lkotlinx/coroutines/scheduling/a$d;)Z

    return-void
.end method

.method private final q()Z
    .registers 11

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/a$c;->f:Lkotlinx/coroutines/scheduling/a$d;

    sget-object v1, Lkotlinx/coroutines/scheduling/a$d;->e:Lkotlinx/coroutines/scheduling/a$d;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_a

    :goto_8
    const/4 v2, 0x1

    goto :goto_34

    :cond_a
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/a$c;->k:Lkotlinx/coroutines/scheduling/a;

    :cond_c
    iget-wide v6, v0, Lkotlinx/coroutines/scheduling/a;->controlState:J

    const-wide v4, 0x7ffffc0000000000L

    and-long/2addr v4, v6

    const/16 v1, 0x2a

    shr-long/2addr v4, v1

    long-to-int v1, v4

    if-nez v1, :cond_1c

    const/4 v0, 0x0

    goto :goto_2d

    :cond_1c
    const-wide v4, 0x40000000000L

    sub-long v8, v6, v4

    sget-object v4, Lkotlinx/coroutines/scheduling/a;->n:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v5, v0

    invoke-virtual/range {v4 .. v9}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    :goto_2d
    if-eqz v0, :cond_34

    sget-object v0, Lkotlinx/coroutines/scheduling/a$d;->e:Lkotlinx/coroutines/scheduling/a$d;

    iput-object v0, p0, Lkotlinx/coroutines/scheduling/a$c;->f:Lkotlinx/coroutines/scheduling/a$d;

    goto :goto_8

    :cond_34
    :goto_34
    return v2
.end method

.method private final r()V
    .registers 4

    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/a$c;->j()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/a$c;->k:Lkotlinx/coroutines/scheduling/a;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/scheduling/a;->i(Lkotlinx/coroutines/scheduling/a$c;)Z

    return-void

    :cond_c
    const/4 v0, -0x1

    iput v0, p0, Lkotlinx/coroutines/scheduling/a$c;->workerCtl:I

    :goto_f
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/a$c;->j()Z

    move-result v1

    if-eqz v1, :cond_34

    iget v1, p0, Lkotlinx/coroutines/scheduling/a$c;->workerCtl:I

    if-ne v1, v0, :cond_34

    iget-object v1, p0, Lkotlinx/coroutines/scheduling/a$c;->k:Lkotlinx/coroutines/scheduling/a;

    invoke-virtual {v1}, Lkotlinx/coroutines/scheduling/a;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_34

    iget-object v1, p0, Lkotlinx/coroutines/scheduling/a$c;->f:Lkotlinx/coroutines/scheduling/a$d;

    sget-object v2, Lkotlinx/coroutines/scheduling/a$d;->i:Lkotlinx/coroutines/scheduling/a$d;

    if-ne v1, v2, :cond_28

    goto :goto_34

    :cond_28
    sget-object v1, Lkotlinx/coroutines/scheduling/a$d;->g:Lkotlinx/coroutines/scheduling/a$d;

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/scheduling/a$c;->s(Lkotlinx/coroutines/scheduling/a$d;)Z

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/a$c;->l()V

    goto :goto_f

    :cond_34
    :goto_34
    return-void
.end method

.method private final t(Z)Lkotlinx/coroutines/scheduling/h;
    .registers 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lkotlinx/coroutines/scheduling/a$c;->k:Lkotlinx/coroutines/scheduling/a;

    iget-wide v1, v1, Lkotlinx/coroutines/scheduling/a;->controlState:J

    const-wide/32 v3, 0x1fffff

    and-long/2addr v1, v3

    long-to-int v2, v1

    const/4 v1, 0x2

    const/4 v3, 0x0

    if-ge v2, v1, :cond_10

    return-object v3

    :cond_10
    invoke-virtual {v0, v2}, Lkotlinx/coroutines/scheduling/a$c;->k(I)I

    move-result v1

    iget-object v4, v0, Lkotlinx/coroutines/scheduling/a$c;->k:Lkotlinx/coroutines/scheduling/a;

    const/4 v5, 0x0

    const-wide v6, 0x7fffffffffffffffL

    move-wide v8, v6

    :cond_1d
    :goto_1d
    const-wide/16 v10, 0x0

    if-ge v5, v2, :cond_59

    add-int/lit8 v5, v5, 0x1

    const/4 v12, 0x1

    add-int/2addr v1, v12

    if-le v1, v2, :cond_28

    const/4 v1, 0x1

    :cond_28
    iget-object v12, v4, Lkotlinx/coroutines/scheduling/a;->k:Lkotlinx/coroutines/internal/y;

    invoke-virtual {v12, v1}, Lkotlinx/coroutines/internal/y;->b(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lkotlinx/coroutines/scheduling/a$c;

    if-eqz v12, :cond_1d

    if-eq v12, v0, :cond_1d

    iget-object v13, v0, Lkotlinx/coroutines/scheduling/a$c;->e:Lkotlinx/coroutines/scheduling/o;

    iget-object v12, v12, Lkotlinx/coroutines/scheduling/a$c;->e:Lkotlinx/coroutines/scheduling/o;

    if-eqz p1, :cond_3f

    invoke-virtual {v13, v12}, Lkotlinx/coroutines/scheduling/o;->k(Lkotlinx/coroutines/scheduling/o;)J

    move-result-wide v12

    goto :goto_43

    :cond_3f
    invoke-virtual {v13, v12}, Lkotlinx/coroutines/scheduling/o;->l(Lkotlinx/coroutines/scheduling/o;)J

    move-result-wide v12

    :goto_43
    const-wide/16 v14, -0x1

    cmp-long v16, v12, v14

    if-nez v16, :cond_50

    iget-object v1, v0, Lkotlinx/coroutines/scheduling/a$c;->e:Lkotlinx/coroutines/scheduling/o;

    invoke-virtual {v1}, Lkotlinx/coroutines/scheduling/o;->h()Lkotlinx/coroutines/scheduling/h;

    move-result-object v1

    return-object v1

    :cond_50
    cmp-long v14, v12, v10

    if-lez v14, :cond_1d

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    goto :goto_1d

    :cond_59
    cmp-long v1, v8, v6

    if-eqz v1, :cond_5e

    goto :goto_5f

    :cond_5e
    move-wide v8, v10

    :goto_5f
    iput-wide v8, v0, Lkotlinx/coroutines/scheduling/a$c;->h:J

    return-object v3
.end method

.method private final u()V
    .registers 9

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/a$c;->k:Lkotlinx/coroutines/scheduling/a;

    iget-object v1, v0, Lkotlinx/coroutines/scheduling/a;->k:Lkotlinx/coroutines/internal/y;

    monitor-enter v1

    :try_start_5
    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/a;->isTerminated()Z

    move-result v2
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_60

    if-eqz v2, :cond_d

    monitor-exit v1

    return-void

    :cond_d
    :try_start_d
    iget-wide v2, v0, Lkotlinx/coroutines/scheduling/a;->controlState:J

    const-wide/32 v4, 0x1fffff

    and-long/2addr v2, v4

    long-to-int v3, v2

    iget v2, v0, Lkotlinx/coroutines/scheduling/a;->e:I
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_60

    if-gt v3, v2, :cond_1a

    monitor-exit v1

    return-void

    :cond_1a
    :try_start_1a
    sget-object v2, Lkotlinx/coroutines/scheduling/a$c;->l:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v3, -0x1

    const/4 v6, 0x1

    invoke-virtual {v2, p0, v3, v6}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_60

    if-nez v2, :cond_26

    monitor-exit v1

    return-void

    :cond_26
    :try_start_26
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/a$c;->g()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lkotlinx/coroutines/scheduling/a$c;->o(I)V

    invoke-virtual {v0, p0, v2, v3}, Lkotlinx/coroutines/scheduling/a;->j(Lkotlinx/coroutines/scheduling/a$c;II)V

    sget-object v3, Lkotlinx/coroutines/scheduling/a;->n:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndDecrement(Ljava/lang/Object;)J

    move-result-wide v6

    and-long v3, v6, v4

    long-to-int v4, v3

    if-eq v4, v2, :cond_52

    iget-object v3, v0, Lkotlinx/coroutines/scheduling/a;->k:Lkotlinx/coroutines/internal/y;

    invoke-virtual {v3, v4}, Lkotlinx/coroutines/internal/y;->b(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/k;->b(Ljava/lang/Object;)V

    check-cast v3, Lkotlinx/coroutines/scheduling/a$c;

    iget-object v5, v0, Lkotlinx/coroutines/scheduling/a;->k:Lkotlinx/coroutines/internal/y;

    invoke-virtual {v5, v2, v3}, Lkotlinx/coroutines/internal/y;->c(ILjava/lang/Object;)V

    invoke-virtual {v3, v2}, Lkotlinx/coroutines/scheduling/a$c;->o(I)V

    invoke-virtual {v0, v3, v4, v2}, Lkotlinx/coroutines/scheduling/a;->j(Lkotlinx/coroutines/scheduling/a$c;II)V

    :cond_52
    iget-object v0, v0, Lkotlinx/coroutines/scheduling/a;->k:Lkotlinx/coroutines/internal/y;

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v2}, Lkotlinx/coroutines/internal/y;->c(ILjava/lang/Object;)V

    sget-object v0, La1/q;->a:La1/q;
    :try_end_5a
    .catchall {:try_start_26 .. :try_end_5a} :catchall_60

    monitor-exit v1

    sget-object v0, Lkotlinx/coroutines/scheduling/a$d;->i:Lkotlinx/coroutines/scheduling/a$d;

    iput-object v0, p0, Lkotlinx/coroutines/scheduling/a$c;->f:Lkotlinx/coroutines/scheduling/a$d;

    return-void

    :catchall_60
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final f(Z)Lkotlinx/coroutines/scheduling/h;
    .registers 3

    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/a$c;->q()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, p1}, Lkotlinx/coroutines/scheduling/a$c;->e(Z)Lkotlinx/coroutines/scheduling/h;

    move-result-object p1

    return-object p1

    :cond_b
    if-eqz p1, :cond_15

    iget-object p1, p0, Lkotlinx/coroutines/scheduling/a$c;->e:Lkotlinx/coroutines/scheduling/o;

    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/o;->h()Lkotlinx/coroutines/scheduling/h;

    move-result-object p1

    if-nez p1, :cond_1f

    :cond_15
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/a$c;->k:Lkotlinx/coroutines/scheduling/a;

    iget-object p1, p1, Lkotlinx/coroutines/scheduling/a;->j:Lkotlinx/coroutines/scheduling/d;

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/p;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/scheduling/h;

    :cond_1f
    if-nez p1, :cond_26

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlinx/coroutines/scheduling/a$c;->t(Z)Lkotlinx/coroutines/scheduling/h;

    move-result-object p1

    :cond_26
    return-object p1
.end method

.method public final g()I
    .registers 2

    iget v0, p0, Lkotlinx/coroutines/scheduling/a$c;->indexInArray:I

    return v0
.end method

.method public final h()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/a$c;->nextParkedWorker:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(I)I
    .registers 5

    iget v0, p0, Lkotlinx/coroutines/scheduling/a$c;->i:I

    shl-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x11

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x5

    xor-int/2addr v0, v1

    iput v0, p0, Lkotlinx/coroutines/scheduling/a$c;->i:I

    add-int/lit8 v1, p1, -0x1

    and-int v2, v1, p1

    if-nez v2, :cond_16

    and-int p1, v0, v1

    return p1

    :cond_16
    const v1, 0x7fffffff

    and-int/2addr v0, v1

    rem-int/2addr v0, p1

    return v0
.end method

.method public final o(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lkotlinx/coroutines/scheduling/a$c;->k:Lkotlinx/coroutines/scheduling/a;

    iget-object v1, v1, Lkotlinx/coroutines/scheduling/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-worker-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_16

    const-string v1, "TERMINATED"

    goto :goto_1a

    :cond_16
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iput p1, p0, Lkotlinx/coroutines/scheduling/a$c;->indexInArray:I

    return-void
.end method

.method public final p(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/a$c;->nextParkedWorker:Ljava/lang/Object;

    return-void
.end method

.method public run()V
    .registers 1

    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/a$c;->n()V

    return-void
.end method

.method public final s(Lkotlinx/coroutines/scheduling/a$d;)Z
    .registers 8

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/a$c;->f:Lkotlinx/coroutines/scheduling/a$d;

    sget-object v1, Lkotlinx/coroutines/scheduling/a$d;->e:Lkotlinx/coroutines/scheduling/a$d;

    if-ne v0, v1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    if-eqz v1, :cond_17

    iget-object v2, p0, Lkotlinx/coroutines/scheduling/a$c;->k:Lkotlinx/coroutines/scheduling/a;

    sget-object v3, Lkotlinx/coroutines/scheduling/a;->n:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide v4, 0x40000000000L

    invoke-virtual {v3, v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    :cond_17
    if-eq v0, p1, :cond_1b

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/a$c;->f:Lkotlinx/coroutines/scheduling/a$d;

    :cond_1b
    return v1
.end method
