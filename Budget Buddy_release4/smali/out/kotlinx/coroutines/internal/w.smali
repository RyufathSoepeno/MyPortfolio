.class public abstract Lkotlinx/coroutines/internal/w;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lkotlinx/coroutines/internal/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/internal/c<",
            "*>;"
        }
    .end annotation
.end method

.method public final b(Lkotlinx/coroutines/internal/w;)Z
    .registers 8

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/w;->a()Lkotlinx/coroutines/internal/c;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/w;->a()Lkotlinx/coroutines/internal/c;

    move-result-object p1

    if-nez p1, :cond_f

    return v1

    :cond_f
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/c;->f()J

    move-result-wide v2

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/c;->f()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-gez p1, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1
.end method

.method public abstract c(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lq1/l0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lq1/l0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
