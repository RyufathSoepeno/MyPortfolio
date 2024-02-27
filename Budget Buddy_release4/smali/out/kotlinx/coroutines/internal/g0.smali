.class public Lkotlinx/coroutines/internal/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lkotlinx/coroutines/internal/h0;",
        ":",
        "Ljava/lang/Comparable<",
        "-TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private volatile synthetic _size:I

.field private a:[Lkotlinx/coroutines/internal/h0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lkotlinx/coroutines/internal/g0;->_size:I

    return-void
.end method

.method private final f()[Lkotlinx/coroutines/internal/h0;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/internal/g0;->a:[Lkotlinx/coroutines/internal/h0;

    if-nez v0, :cond_a

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlinx/coroutines/internal/h0;

    iput-object v0, p0, Lkotlinx/coroutines/internal/g0;->a:[Lkotlinx/coroutines/internal/h0;

    goto :goto_24

    :cond_a
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/g0;->c()I

    move-result v1

    array-length v2, v0

    if-lt v1, v2, :cond_24

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/g0;->c()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "copyOf(this, newSize)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Lkotlinx/coroutines/internal/h0;

    iput-object v0, p0, Lkotlinx/coroutines/internal/g0;->a:[Lkotlinx/coroutines/internal/h0;

    :cond_24
    :goto_24
    return-object v0
.end method

.method private final j(I)V
    .registers 2

    iput p1, p0, Lkotlinx/coroutines/internal/g0;->_size:I

    return-void
.end method

.method private final k(I)V
    .registers 7

    :goto_0
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/g0;->c()I

    move-result v1

    if-lt v0, v1, :cond_b

    return-void

    :cond_b
    iget-object v1, p0, Lkotlinx/coroutines/internal/g0;->a:[Lkotlinx/coroutines/internal/h0;

    invoke-static {v1}, Lkotlin/jvm/internal/k;->b(Ljava/lang/Object;)V

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/g0;->c()I

    move-result v3

    if-ge v2, v3, :cond_2b

    aget-object v3, v1, v2

    invoke-static {v3}, Lkotlin/jvm/internal/k;->b(Ljava/lang/Object;)V

    check-cast v3, Ljava/lang/Comparable;

    aget-object v4, v1, v0

    invoke-static {v4}, Lkotlin/jvm/internal/k;->b(Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_2b

    move v0, v2

    :cond_2b
    aget-object v2, v1, p1

    invoke-static {v2}, Lkotlin/jvm/internal/k;->b(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Comparable;

    aget-object v1, v1, v0

    invoke-static {v1}, Lkotlin/jvm/internal/k;->b(Ljava/lang/Object;)V

    invoke-interface {v2, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_3e

    return-void

    :cond_3e
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/internal/g0;->m(II)V

    move p1, v0

    goto :goto_0
.end method

.method private final l(I)V
    .registers 5

    :goto_0
    if-gtz p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lkotlinx/coroutines/internal/g0;->a:[Lkotlinx/coroutines/internal/h0;

    invoke-static {v0}, Lkotlin/jvm/internal/k;->b(Ljava/lang/Object;)V

    add-int/lit8 v1, p1, -0x1

    div-int/lit8 v1, v1, 0x2

    aget-object v2, v0, v1

    invoke-static {v2}, Lkotlin/jvm/internal/k;->b(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Comparable;

    aget-object v0, v0, p1

    invoke-static {v0}, Lkotlin/jvm/internal/k;->b(Ljava/lang/Object;)V

    invoke-interface {v2, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_1f

    return-void

    :cond_1f
    invoke-direct {p0, p1, v1}, Lkotlinx/coroutines/internal/g0;->m(II)V

    move p1, v1

    goto :goto_0
.end method

.method private final m(II)V
    .registers 6

    iget-object v0, p0, Lkotlinx/coroutines/internal/g0;->a:[Lkotlinx/coroutines/internal/h0;

    invoke-static {v0}, Lkotlin/jvm/internal/k;->b(Ljava/lang/Object;)V

    aget-object v1, v0, p2

    invoke-static {v1}, Lkotlin/jvm/internal/k;->b(Ljava/lang/Object;)V

    aget-object v2, v0, p1

    invoke-static {v2}, Lkotlin/jvm/internal/k;->b(Ljava/lang/Object;)V

    aput-object v1, v0, p1

    aput-object v2, v0, p2

    invoke-interface {v1, p1}, Lkotlinx/coroutines/internal/h0;->b(I)V

    invoke-interface {v2, p2}, Lkotlinx/coroutines/internal/h0;->b(I)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/internal/h0;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-interface {p1, p0}, Lkotlinx/coroutines/internal/h0;->c(Lkotlinx/coroutines/internal/g0;)V

    invoke-direct {p0}, Lkotlinx/coroutines/internal/g0;->f()[Lkotlinx/coroutines/internal/h0;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/g0;->c()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Lkotlinx/coroutines/internal/g0;->j(I)V

    aput-object p1, v0, v1

    invoke-interface {p1, v1}, Lkotlinx/coroutines/internal/h0;->b(I)V

    invoke-direct {p0, v1}, Lkotlinx/coroutines/internal/g0;->l(I)V

    return-void
.end method

.method public final b()Lkotlinx/coroutines/internal/h0;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/internal/g0;->a:[Lkotlinx/coroutines/internal/h0;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_9

    :cond_6
    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_9
    return-object v0
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Lkotlinx/coroutines/internal/g0;->_size:I

    return v0
.end method

.method public final d()Z
    .registers 2

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/g0;->c()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final e()Lkotlinx/coroutines/internal/h0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/g0;->b()Lkotlinx/coroutines/internal/h0;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final g(Lkotlinx/coroutines/internal/h0;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-interface {p1}, Lkotlinx/coroutines/internal/h0;->e()Lkotlinx/coroutines/internal/g0;

    move-result-object v0

    if-nez v0, :cond_9

    const/4 p1, 0x0

    goto :goto_11

    :cond_9
    invoke-interface {p1}, Lkotlinx/coroutines/internal/h0;->d()I

    move-result p1

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/internal/g0;->h(I)Lkotlinx/coroutines/internal/h0;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_13

    const/4 p1, 0x1

    :goto_11
    monitor-exit p0

    return p1

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final h(I)Lkotlinx/coroutines/internal/h0;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/internal/g0;->a:[Lkotlinx/coroutines/internal/h0;

    invoke-static {v0}, Lkotlin/jvm/internal/k;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/g0;->c()I

    move-result v1

    const/4 v2, -0x1

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lkotlinx/coroutines/internal/g0;->j(I)V

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/g0;->c()I

    move-result v1

    if-ge p1, v1, :cond_3d

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/g0;->c()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lkotlinx/coroutines/internal/g0;->m(II)V

    add-int/lit8 v1, p1, -0x1

    div-int/lit8 v1, v1, 0x2

    if-lez p1, :cond_3a

    aget-object v3, v0, p1

    invoke-static {v3}, Lkotlin/jvm/internal/k;->b(Ljava/lang/Object;)V

    check-cast v3, Ljava/lang/Comparable;

    aget-object v4, v0, v1

    invoke-static {v4}, Lkotlin/jvm/internal/k;->b(Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_3a

    invoke-direct {p0, p1, v1}, Lkotlinx/coroutines/internal/g0;->m(II)V

    invoke-direct {p0, v1}, Lkotlinx/coroutines/internal/g0;->l(I)V

    goto :goto_3d

    :cond_3a
    invoke-direct {p0, p1}, Lkotlinx/coroutines/internal/g0;->k(I)V

    :cond_3d
    :goto_3d
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/g0;->c()I

    move-result p1

    aget-object p1, v0, p1

    invoke-static {p1}, Lkotlin/jvm/internal/k;->b(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lkotlinx/coroutines/internal/h0;->c(Lkotlinx/coroutines/internal/g0;)V

    invoke-interface {p1, v2}, Lkotlinx/coroutines/internal/h0;->b(I)V

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/g0;->c()I

    move-result v2

    aput-object v1, v0, v2

    return-object p1
.end method

.method public final i()Lkotlinx/coroutines/internal/h0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/g0;->c()I

    move-result v0

    if-lez v0, :cond_d

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/internal/g0;->h(I)Lkotlinx/coroutines/internal/h0;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_10

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
