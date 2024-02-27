.class public abstract Lkotlinx/coroutines/internal/c;
.super Lkotlinx/coroutines/internal/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/internal/w;"
    }
.end annotation


# static fields
.field private static final synthetic a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _consensus:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lkotlinx/coroutines/internal/c;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_consensus"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/c;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lkotlinx/coroutines/internal/w;-><init>()V

    sget-object v0, Lkotlinx/coroutines/internal/b;->a:Ljava/lang/Object;

    iput-object v0, p0, Lkotlinx/coroutines/internal/c;->_consensus:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Lkotlinx/coroutines/internal/c;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/internal/c<",
            "*>;"
        }
    .end annotation

    return-object p0
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lkotlinx/coroutines/internal/c;->_consensus:Ljava/lang/Object;

    sget-object v1, Lkotlinx/coroutines/internal/b;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_e

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/internal/c;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/internal/c;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_e
    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/internal/c;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public abstract d(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lkotlinx/coroutines/internal/c;->_consensus:Ljava/lang/Object;

    sget-object v1, Lkotlinx/coroutines/internal/b;->a:Ljava/lang/Object;

    if-eq v0, v1, :cond_7

    return-object v0

    :cond_7
    sget-object v0, Lkotlinx/coroutines/internal/c;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v0, p0, v1, p1}, Lq1/l;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    return-object p1

    :cond_10
    iget-object p1, p0, Lkotlinx/coroutines/internal/c;->_consensus:Ljava/lang/Object;

    return-object p1
.end method

.method public f()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public abstract g(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
