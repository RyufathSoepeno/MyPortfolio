.class public final Lkotlinx/coroutines/scheduling/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final synthetic b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final synthetic d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final synthetic e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lkotlinx/coroutines/scheduling/h;",
            ">;"
        }
    .end annotation
.end field

.field private volatile synthetic blockingTasksInBuffer:I

.field private volatile synthetic consumerIndex:I

.field private volatile synthetic lastScheduledTask:Ljava/lang/Object;

.field private volatile synthetic producerIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lkotlinx/coroutines/scheduling/o;

    const-class v1, Ljava/lang/Object;

    const-string v2, "lastScheduledTask"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    sput-object v1, Lkotlinx/coroutines/scheduling/o;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v1, "producerIndex"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    sput-object v1, Lkotlinx/coroutines/scheduling/o;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v1, "consumerIndex"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    sput-object v1, Lkotlinx/coroutines/scheduling/o;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v1, "blockingTasksInBuffer"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/o;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lkotlinx/coroutines/scheduling/o;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v0, 0x0

    iput-object v0, p0, Lkotlinx/coroutines/scheduling/o;->lastScheduledTask:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lkotlinx/coroutines/scheduling/o;->producerIndex:I

    iput v0, p0, Lkotlinx/coroutines/scheduling/o;->consumerIndex:I

    iput v0, p0, Lkotlinx/coroutines/scheduling/o;->blockingTasksInBuffer:I

    return-void
.end method

.method public static synthetic b(Lkotlinx/coroutines/scheduling/o;Lkotlinx/coroutines/scheduling/h;ZILjava/lang/Object;)Lkotlinx/coroutines/scheduling/h;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/scheduling/o;->a(Lkotlinx/coroutines/scheduling/h;Z)Lkotlinx/coroutines/scheduling/h;

    move-result-object p0

    return-object p0
.end method

.method private final c(Lkotlinx/coroutines/scheduling/h;)Lkotlinx/coroutines/scheduling/h;
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
    if-eqz v1, :cond_12

    sget-object v0, Lkotlinx/coroutines/scheduling/o;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    :cond_12
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/o;->e()I

    move-result v0

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_1b

    return-object p1

    :cond_1b
    iget v0, p0, Lkotlinx/coroutines/scheduling/o;->producerIndex:I

    and-int/2addr v0, v1

    :goto_1e
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/o;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_1e

    :cond_2a
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/o;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    sget-object p1, Lkotlinx/coroutines/scheduling/o;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private final d(Lkotlinx/coroutines/scheduling/h;)V
    .registers 3

    if-eqz p1, :cond_14

    iget-object p1, p1, Lkotlinx/coroutines/scheduling/h;->f:Lkotlinx/coroutines/scheduling/i;

    invoke-interface {p1}, Lkotlinx/coroutines/scheduling/i;->b()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    if-eqz v0, :cond_14

    sget-object p1, Lkotlinx/coroutines/scheduling/o;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    :cond_14
    return-void
.end method

.method private final i()Lkotlinx/coroutines/scheduling/h;
    .registers 6

    :cond_0
    :goto_0
    iget v0, p0, Lkotlinx/coroutines/scheduling/o;->consumerIndex:I

    iget v1, p0, Lkotlinx/coroutines/scheduling/o;->producerIndex:I

    sub-int v1, v0, v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return-object v2

    :cond_a
    and-int/lit8 v1, v0, 0x7f

    sget-object v3, Lkotlinx/coroutines/scheduling/o;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, p0, v0, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/o;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/h;

    if-nez v0, :cond_21

    goto :goto_0

    :cond_21
    invoke-direct {p0, v0}, Lkotlinx/coroutines/scheduling/o;->d(Lkotlinx/coroutines/scheduling/h;)V

    return-object v0
.end method

.method private final j(Lkotlinx/coroutines/scheduling/d;)Z
    .registers 3

    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/o;->i()Lkotlinx/coroutines/scheduling/h;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/internal/p;->a(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method private final m(Lkotlinx/coroutines/scheduling/o;Z)J
    .registers 10

    :cond_0
    iget-object v0, p1, Lkotlinx/coroutines/scheduling/o;->lastScheduledTask:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/scheduling/h;

    const-wide/16 v1, -0x2

    if-nez v0, :cond_9

    return-wide v1

    :cond_9
    const/4 v3, 0x0

    if-eqz p2, :cond_1a

    iget-object v4, v0, Lkotlinx/coroutines/scheduling/h;->f:Lkotlinx/coroutines/scheduling/i;

    invoke-interface {v4}, Lkotlinx/coroutines/scheduling/i;->b()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_16

    goto :goto_17

    :cond_16
    const/4 v5, 0x0

    :goto_17
    if-nez v5, :cond_1a

    return-wide v1

    :cond_1a
    sget-object v1, Lkotlinx/coroutines/scheduling/l;->e:Lkotlinx/coroutines/scheduling/g;

    invoke-virtual {v1}, Lkotlinx/coroutines/scheduling/g;->a()J

    move-result-wide v1

    iget-wide v4, v0, Lkotlinx/coroutines/scheduling/h;->e:J

    sub-long/2addr v1, v4

    sget-wide v4, Lkotlinx/coroutines/scheduling/l;->a:J

    cmp-long v6, v1, v4

    if-gez v6, :cond_2b

    sub-long/2addr v4, v1

    return-wide v4

    :cond_2b
    sget-object v1, Lkotlinx/coroutines/scheduling/o;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, v2}, Lq1/l;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x2

    invoke-static {p0, v0, v3, p1, v2}, Lkotlinx/coroutines/scheduling/o;->b(Lkotlinx/coroutines/scheduling/o;Lkotlinx/coroutines/scheduling/h;ZILjava/lang/Object;)Lkotlinx/coroutines/scheduling/h;

    const-wide/16 p1, -0x1

    return-wide p1
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/scheduling/h;Z)Lkotlinx/coroutines/scheduling/h;
    .registers 3

    if-eqz p2, :cond_7

    invoke-direct {p0, p1}, Lkotlinx/coroutines/scheduling/o;->c(Lkotlinx/coroutines/scheduling/h;)Lkotlinx/coroutines/scheduling/h;

    move-result-object p1

    return-object p1

    :cond_7
    sget-object p2, Lkotlinx/coroutines/scheduling/o;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/scheduling/h;

    if-nez p1, :cond_13

    const/4 p1, 0x0

    return-object p1

    :cond_13
    invoke-direct {p0, p1}, Lkotlinx/coroutines/scheduling/o;->c(Lkotlinx/coroutines/scheduling/h;)Lkotlinx/coroutines/scheduling/h;

    move-result-object p1

    return-object p1
.end method

.method public final e()I
    .registers 3

    iget v0, p0, Lkotlinx/coroutines/scheduling/o;->producerIndex:I

    iget v1, p0, Lkotlinx/coroutines/scheduling/o;->consumerIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final f()I
    .registers 2

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/o;->lastScheduledTask:Ljava/lang/Object;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/o;->e()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_b
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/o;->e()I

    move-result v0

    :goto_f
    return v0
.end method

.method public final g(Lkotlinx/coroutines/scheduling/d;)V
    .registers 4

    sget-object v0, Lkotlinx/coroutines/scheduling/o;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/h;

    if-nez v0, :cond_c

    goto :goto_f

    :cond_c
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/internal/p;->a(Ljava/lang/Object;)Z

    :goto_f
    invoke-direct {p0, p1}, Lkotlinx/coroutines/scheduling/o;->j(Lkotlinx/coroutines/scheduling/d;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_f

    :cond_16
    return-void
.end method

.method public final h()Lkotlinx/coroutines/scheduling/h;
    .registers 3

    sget-object v0, Lkotlinx/coroutines/scheduling/o;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/h;

    if-nez v0, :cond_f

    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/o;->i()Lkotlinx/coroutines/scheduling/h;

    move-result-object v0

    :cond_f
    return-object v0
.end method

.method public final k(Lkotlinx/coroutines/scheduling/o;)J
    .registers 10

    iget v0, p1, Lkotlinx/coroutines/scheduling/o;->consumerIndex:I

    iget v1, p1, Lkotlinx/coroutines/scheduling/o;->producerIndex:I

    iget-object v2, p1, Lkotlinx/coroutines/scheduling/o;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    :goto_6
    const/4 v3, 0x1

    if-eq v0, v1, :cond_3b

    and-int/lit8 v4, v0, 0x7f

    iget v5, p1, Lkotlinx/coroutines/scheduling/o;->blockingTasksInBuffer:I

    if-nez v5, :cond_10

    goto :goto_3b

    :cond_10
    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlinx/coroutines/scheduling/h;

    if-eqz v5, :cond_38

    iget-object v6, v5, Lkotlinx/coroutines/scheduling/h;->f:Lkotlinx/coroutines/scheduling/i;

    invoke-interface {v6}, Lkotlinx/coroutines/scheduling/i;->b()I

    move-result v6

    const/4 v7, 0x0

    if-ne v6, v3, :cond_22

    goto :goto_23

    :cond_22
    const/4 v3, 0x0

    :goto_23
    if-eqz v3, :cond_38

    const/4 v3, 0x0

    invoke-static {v2, v4, v5, v3}, Lkotlinx/coroutines/scheduling/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    sget-object v0, Lkotlinx/coroutines/scheduling/o;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    const/4 p1, 0x2

    invoke-static {p0, v5, v7, p1, v3}, Lkotlinx/coroutines/scheduling/o;->b(Lkotlinx/coroutines/scheduling/o;Lkotlinx/coroutines/scheduling/h;ZILjava/lang/Object;)Lkotlinx/coroutines/scheduling/h;

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_3b
    :goto_3b
    invoke-direct {p0, p1, v3}, Lkotlinx/coroutines/scheduling/o;->m(Lkotlinx/coroutines/scheduling/o;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public final l(Lkotlinx/coroutines/scheduling/o;)J
    .registers 5

    invoke-direct {p1}, Lkotlinx/coroutines/scheduling/o;->i()Lkotlinx/coroutines/scheduling/h;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    const/4 p1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p1, v2}, Lkotlinx/coroutines/scheduling/o;->b(Lkotlinx/coroutines/scheduling/o;Lkotlinx/coroutines/scheduling/h;ZILjava/lang/Object;)Lkotlinx/coroutines/scheduling/h;

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_f
    invoke-direct {p0, p1, v1}, Lkotlinx/coroutines/scheduling/o;->m(Lkotlinx/coroutines/scheduling/o;Z)J

    move-result-wide v0

    return-wide v0
.end method
