.class final Lq1/c0$b;
.super Lkotlin/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Lj1/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq1/c0;->a(Lc1/g;Lc1/g;Z)Lc1/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/l;",
        "Lj1/p<",
        "Lc1/g;",
        "Lc1/g$b;",
        "Lc1/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lkotlin/jvm/internal/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/q<",
            "Lc1/g;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic f:Z


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/q;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/q<",
            "Lc1/g;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lq1/c0$b;->e:Lkotlin/jvm/internal/q;

    iput-boolean p2, p0, Lq1/c0$b;->f:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lc1/g;Lc1/g$b;)Lc1/g;
    .registers 7

    instance-of v0, p2, Lq1/b0;

    if-nez v0, :cond_9

    invoke-interface {p1, p2}, Lc1/g;->plus(Lc1/g;)Lc1/g;

    move-result-object p1

    return-object p1

    :cond_9
    iget-object v0, p0, Lq1/c0$b;->e:Lkotlin/jvm/internal/q;

    iget-object v0, v0, Lkotlin/jvm/internal/q;->e:Ljava/lang/Object;

    check-cast v0, Lc1/g;

    invoke-interface {p2}, Lc1/g$b;->getKey()Lc1/g$c;

    move-result-object v1

    invoke-interface {v0, v1}, Lc1/g;->get(Lc1/g$c;)Lc1/g$b;

    move-result-object v0

    if-nez v0, :cond_28

    iget-boolean v0, p0, Lq1/c0$b;->f:Z

    check-cast p2, Lq1/b0;

    if-eqz v0, :cond_23

    invoke-interface {p2}, Lq1/b0;->h()Lq1/b0;

    move-result-object p2

    :cond_23
    invoke-interface {p1, p2}, Lc1/g;->plus(Lc1/g;)Lc1/g;

    move-result-object p1

    return-object p1

    :cond_28
    iget-object v1, p0, Lq1/c0$b;->e:Lkotlin/jvm/internal/q;

    iget-object v2, v1, Lkotlin/jvm/internal/q;->e:Ljava/lang/Object;

    check-cast v2, Lc1/g;

    invoke-interface {p2}, Lc1/g$b;->getKey()Lc1/g$c;

    move-result-object v3

    invoke-interface {v2, v3}, Lc1/g;->minusKey(Lc1/g$c;)Lc1/g;

    move-result-object v2

    iput-object v2, v1, Lkotlin/jvm/internal/q;->e:Ljava/lang/Object;

    check-cast p2, Lq1/b0;

    invoke-interface {p2, v0}, Lq1/b0;->n(Lc1/g$b;)Lc1/g;

    move-result-object p2

    invoke-interface {p1, p2}, Lc1/g;->plus(Lc1/g;)Lc1/g;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lc1/g;

    check-cast p2, Lc1/g$b;

    invoke-virtual {p0, p1, p2}, Lq1/c0$b;->a(Lc1/g;Lc1/g$b;)Lc1/g;

    move-result-object p1

    return-object p1
.end method
