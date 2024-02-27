.class public Ls1/d;
.super Ls1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/d$a;
    }
.end annotation

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
.field private final e:I

.field private final f:Ls1/e;

.field private final g:Ljava/util/concurrent/locks/ReentrantLock;

.field private h:[Ljava/lang/Object;

.field private i:I

.field private volatile synthetic size:I


# direct methods
.method public constructor <init>(ILs1/e;Lj1/l;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ls1/e;",
            "Lj1/l<",
            "-TE;",
            "La1/q;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Ls1/a;-><init>(Lj1/l;)V

    iput p1, p0, Ls1/d;->e:I

    iput-object p2, p0, Ls1/d;->f:Ls1/e;

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-lt p1, p3, :cond_c

    goto :goto_d

    :cond_c
    const/4 p3, 0x0

    :goto_d
    if-eqz p3, :cond_2d

    new-instance p3, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p3, p0, Ls1/d;->g:Ljava/util/concurrent/locks/ReentrantLock;

    const/16 p3, 0x8

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    sget-object v1, Ls1/b;->a:Lkotlinx/coroutines/internal/b0;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lb1/b;->e([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V

    iput-object p1, p0, Ls1/d;->h:[Ljava/lang/Object;

    iput p2, p0, Ls1/d;->size:I

    return-void

    :cond_2d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ArrayChannel capacity must be at least 1, but "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " was specified"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final x(ILjava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    iget v0, p0, Ls1/d;->e:I

    if-ge p1, v0, :cond_11

    invoke-direct {p0, p1}, Ls1/d;->y(I)V

    iget-object v0, p0, Ls1/d;->h:[Ljava/lang/Object;

    iget v1, p0, Ls1/d;->i:I

    add-int/2addr v1, p1

    array-length p1, v0

    rem-int/2addr v1, p1

    aput-object p2, v0, v1

    goto :goto_26

    :cond_11
    iget-object v0, p0, Ls1/d;->h:[Ljava/lang/Object;

    iget v1, p0, Ls1/d;->i:I

    array-length v2, v0

    rem-int v2, v1, v2

    const/4 v3, 0x0

    aput-object v3, v0, v2

    add-int/2addr p1, v1

    array-length v2, v0

    rem-int/2addr p1, v2

    aput-object p2, v0, p1

    add-int/lit8 v1, v1, 0x1

    array-length p1, v0

    rem-int/2addr v1, p1

    iput v1, p0, Ls1/d;->i:I

    :goto_26
    return-void
.end method

.method private final y(I)V
    .registers 10

    iget-object v0, p0, Ls1/d;->h:[Ljava/lang/Object;

    array-length v1, v0

    if-lt p1, v1, :cond_2c

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Ls1/d;->e:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_12
    if-ge v3, p1, :cond_23

    add-int/lit8 v4, v3, 0x1

    iget-object v5, p0, Ls1/d;->h:[Ljava/lang/Object;

    iget v6, p0, Ls1/d;->i:I

    add-int/2addr v6, v3

    array-length v7, v5

    rem-int/2addr v6, v7

    aget-object v5, v5, v6

    aput-object v5, v1, v3

    move v3, v4

    goto :goto_12

    :cond_23
    sget-object v3, Ls1/b;->a:Lkotlinx/coroutines/internal/b0;

    invoke-static {v1, v3, p1, v0}, Lb1/b;->d([Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v1, p0, Ls1/d;->h:[Ljava/lang/Object;

    iput v2, p0, Ls1/d;->i:I

    :cond_2c
    return-void
.end method

.method private final z(I)Lkotlinx/coroutines/internal/b0;
    .registers 5

    iget v0, p0, Ls1/d;->e:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, v0, :cond_a

    add-int/2addr p1, v2

    iput p1, p0, Ls1/d;->size:I

    return-object v1

    :cond_a
    iget-object p1, p0, Ls1/d;->f:Ls1/e;

    sget-object v0, Ls1/d$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v2, :cond_26

    const/4 v0, 0x2

    if-eq p1, v0, :cond_23

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1d

    goto :goto_28

    :cond_1d
    new-instance p1, La1/i;

    invoke-direct {p1}, La1/i;-><init>()V

    throw p1

    :cond_23
    sget-object v1, Ls1/b;->b:Lkotlinx/coroutines/internal/b0;

    goto :goto_28

    :cond_26
    sget-object v1, Ls1/b;->c:Lkotlinx/coroutines/internal/b0;

    :goto_28
    return-object v1
.end method


# virtual methods
.method protected c()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(buffer:capacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ls1/d;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ls1/d;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Ls1/d;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget v1, p0, Ls1/d;->size:I

    invoke-virtual {p0}, Ls1/c;->d()Ls1/j;

    move-result-object v2

    if-nez v2, :cond_49

    invoke-direct {p0, v1}, Ls1/d;->z(I)Lkotlinx/coroutines/internal/b0;

    move-result-object v2

    if-nez v2, :cond_45

    if-nez v1, :cond_3c

    :cond_15
    invoke-virtual {p0}, Ls1/a;->l()Ls1/q;

    move-result-object v2

    if-nez v2, :cond_1c

    goto :goto_3c

    :cond_1c
    instance-of v3, v2, Ls1/j;

    if-eqz v3, :cond_26

    iput v1, p0, Ls1/d;->size:I
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_4d

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    :cond_26
    const/4 v3, 0x0

    :try_start_27
    invoke-interface {v2, p1, v3}, Ls1/q;->g(Ljava/lang/Object;Lkotlinx/coroutines/internal/o$b;)Lkotlinx/coroutines/internal/b0;

    move-result-object v3

    if-eqz v3, :cond_15

    iput v1, p0, Ls1/d;->size:I

    sget-object v1, La1/q;->a:La1/q;
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_4d

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-interface {v2, p1}, Ls1/q;->c(Ljava/lang/Object;)V

    invoke-interface {v2}, Ls1/q;->d()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3c
    :goto_3c
    :try_start_3c
    invoke-direct {p0, v1, p1}, Ls1/d;->x(ILjava/lang/Object;)V

    sget-object p1, Ls1/b;->b:Lkotlinx/coroutines/internal/b0;
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_4d

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :cond_45
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    :cond_49
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    :catchall_4d
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

    iget-object v0, p0, Ls1/d;->g:Ljava/util/concurrent/locks/ReentrantLock;

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
    .registers 2

    iget v0, p0, Ls1/d;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected v()Ljava/lang/Object;
    .registers 10

    iget-object v0, p0, Ls1/d;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget v1, p0, Ls1/d;->size:I

    if-nez v1, :cond_15

    invoke-virtual {p0}, Ls1/c;->d()Ls1/j;

    move-result-object v1

    if-nez v1, :cond_11

    sget-object v1, Ls1/b;->d:Lkotlinx/coroutines/internal/b0;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_6f

    :cond_11
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :cond_15
    :try_start_15
    iget-object v2, p0, Ls1/d;->h:[Ljava/lang/Object;

    iget v3, p0, Ls1/d;->i:I

    aget-object v4, v2, v3

    const/4 v5, 0x0

    aput-object v5, v2, v3

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Ls1/d;->size:I

    sget-object v2, Ls1/b;->d:Lkotlinx/coroutines/internal/b0;

    iget v3, p0, Ls1/d;->e:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v1, v3, :cond_45

    move-object v3, v5

    :goto_2b
    invoke-virtual {p0}, Ls1/c;->m()Ls1/s;

    move-result-object v8

    if-nez v8, :cond_33

    move-object v5, v3

    goto :goto_45

    :cond_33
    invoke-virtual {v8, v5}, Ls1/s;->A(Lkotlinx/coroutines/internal/o$b;)Lkotlinx/coroutines/internal/b0;

    move-result-object v3

    if-eqz v3, :cond_40

    invoke-virtual {v8}, Ls1/s;->z()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v8

    const/4 v7, 0x1

    goto :goto_45

    :cond_40
    invoke-virtual {v8}, Ls1/s;->B()V

    move-object v3, v8

    goto :goto_2b

    :cond_45
    :goto_45
    sget-object v3, Ls1/b;->d:Lkotlinx/coroutines/internal/b0;

    if-eq v2, v3, :cond_58

    instance-of v3, v2, Ls1/j;

    if-nez v3, :cond_58

    iput v1, p0, Ls1/d;->size:I

    iget-object v3, p0, Ls1/d;->h:[Ljava/lang/Object;

    iget v8, p0, Ls1/d;->i:I

    add-int/2addr v8, v1

    array-length v1, v3

    rem-int/2addr v8, v1

    aput-object v2, v3, v8

    :cond_58
    iget v1, p0, Ls1/d;->i:I

    add-int/2addr v1, v6

    iget-object v2, p0, Ls1/d;->h:[Ljava/lang/Object;

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Ls1/d;->i:I

    sget-object v1, La1/q;->a:La1/q;
    :try_end_63
    .catchall {:try_start_15 .. :try_end_63} :catchall_6f

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz v7, :cond_6e

    invoke-static {v5}, Lkotlin/jvm/internal/k;->b(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ls1/s;->y()V

    :cond_6e
    return-object v4

    :catchall_6f
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method
