.class Ls1/a$b;
.super Ls1/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ls1/o<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final h:Ls1/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a$a<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final i:Lq1/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq1/k<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/a$a;Lq1/k;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a$a<",
            "TE;>;",
            "Lq1/k<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ls1/o;-><init>()V

    iput-object p1, p0, Ls1/a$b;->h:Ls1/a$a;

    iput-object p2, p0, Ls1/a$b;->i:Lq1/k;

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/Object;)Lj1/l;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lj1/l<",
            "Ljava/lang/Throwable;",
            "La1/q;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ls1/a$b;->h:Ls1/a$a;

    iget-object v0, v0, Ls1/a$a;->a:Ls1/a;

    iget-object v0, v0, Ls1/c;->b:Lj1/l;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    goto :goto_14

    :cond_a
    iget-object v1, p0, Ls1/a$b;->i:Lq1/k;

    invoke-interface {v1}, Lc1/d;->getContext()Lc1/g;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lkotlinx/coroutines/internal/v;->a(Lj1/l;Ljava/lang/Object;Lc1/g;)Lj1/l;

    move-result-object p1

    :goto_14
    return-object p1
.end method

.method public c(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget-object v0, p0, Ls1/a$b;->h:Ls1/a$a;

    invoke-virtual {v0, p1}, Ls1/a$a;->e(Ljava/lang/Object;)V

    iget-object p1, p0, Ls1/a$b;->i:Lq1/k;

    sget-object v0, Lq1/n;->a:Lkotlinx/coroutines/internal/b0;

    invoke-interface {p1, v0}, Lq1/k;->t(Ljava/lang/Object;)V

    return-void
.end method

.method public g(Ljava/lang/Object;Lkotlinx/coroutines/internal/o$b;)Lkotlinx/coroutines/internal/b0;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlinx/coroutines/internal/o$b;",
            ")",
            "Lkotlinx/coroutines/internal/b0;"
        }
    .end annotation

    iget-object p2, p0, Ls1/a$b;->i:Lq1/k;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ls1/a$b;->A(Ljava/lang/Object;)Lj1/l;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1, p1}, Lq1/k;->p(Ljava/lang/Object;Ljava/lang/Object;Lj1/l;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_10

    return-object v1

    :cond_10
    sget-object p1, Lq1/n;->a:Lkotlinx/coroutines/internal/b0;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lq1/l0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReceiveHasNext@"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/k;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z(Ls1/j;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/j<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p1, Ls1/j;->h:Ljava/lang/Throwable;

    if-nez v0, :cond_f

    iget-object v0, p0, Ls1/a$b;->i:Lq1/k;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lq1/k$a;->a(Lq1/k;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_19

    :cond_f
    iget-object v0, p0, Ls1/a$b;->i:Lq1/k;

    invoke-virtual {p1}, Ls1/j;->E()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lq1/k;->s(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_19
    if-eqz v0, :cond_25

    iget-object v1, p0, Ls1/a$b;->h:Ls1/a$a;

    invoke-virtual {v1, p1}, Ls1/a$a;->e(Ljava/lang/Object;)V

    iget-object p1, p0, Ls1/a$b;->i:Lq1/k;

    invoke-interface {p1, v0}, Lq1/k;->t(Ljava/lang/Object;)V

    :cond_25
    return-void
.end method
