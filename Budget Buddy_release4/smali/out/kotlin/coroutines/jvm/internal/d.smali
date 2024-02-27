.class public abstract Lkotlin/coroutines/jvm/internal/d;
.super Lkotlin/coroutines/jvm/internal/a;
.source "SourceFile"


# instance fields
.field private final _context:Lc1/g;

.field private transient intercepted:Lc1/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc1/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc1/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc1/d<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lc1/d;->getContext()Lc1/g;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-direct {p0, p1, v0}, Lkotlin/coroutines/jvm/internal/d;-><init>(Lc1/d;Lc1/g;)V

    return-void
.end method

.method public constructor <init>(Lc1/d;Lc1/g;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc1/d<",
            "Ljava/lang/Object;",
            ">;",
            "Lc1/g;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/a;-><init>(Lc1/d;)V

    iput-object p2, p0, Lkotlin/coroutines/jvm/internal/d;->_context:Lc1/g;

    return-void
.end method


# virtual methods
.method public getContext()Lc1/g;
    .registers 2

    iget-object v0, p0, Lkotlin/coroutines/jvm/internal/d;->_context:Lc1/g;

    invoke-static {v0}, Lkotlin/jvm/internal/k;->b(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final intercepted()Lc1/d;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc1/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/coroutines/jvm/internal/d;->intercepted:Lc1/d;

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lkotlin/coroutines/jvm/internal/d;->getContext()Lc1/g;

    move-result-object v0

    sget-object v1, Lc1/e;->b:Lc1/e$b;

    invoke-interface {v0, v1}, Lc1/g;->get(Lc1/g$c;)Lc1/g$b;

    move-result-object v0

    check-cast v0, Lc1/e;

    if-eqz v0, :cond_18

    invoke-interface {v0, p0}, Lc1/e;->q(Lc1/d;)Lc1/d;

    move-result-object v0

    if-nez v0, :cond_19

    :cond_18
    move-object v0, p0

    :cond_19
    iput-object v0, p0, Lkotlin/coroutines/jvm/internal/d;->intercepted:Lc1/d;

    :cond_1b
    return-object v0
.end method

.method protected releaseIntercepted()V
    .registers 4

    iget-object v0, p0, Lkotlin/coroutines/jvm/internal/d;->intercepted:Lc1/d;

    if-eqz v0, :cond_18

    if-eq v0, p0, :cond_18

    invoke-virtual {p0}, Lkotlin/coroutines/jvm/internal/d;->getContext()Lc1/g;

    move-result-object v1

    sget-object v2, Lc1/e;->b:Lc1/e$b;

    invoke-interface {v1, v2}, Lc1/g;->get(Lc1/g$c;)Lc1/g$b;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/k;->b(Ljava/lang/Object;)V

    check-cast v1, Lc1/e;

    invoke-interface {v1, v0}, Lc1/e;->a(Lc1/d;)V

    :cond_18
    sget-object v0, Lkotlin/coroutines/jvm/internal/c;->e:Lkotlin/coroutines/jvm/internal/c;

    iput-object v0, p0, Lkotlin/coroutines/jvm/internal/d;->intercepted:Lc1/d;

    return-void
.end method
