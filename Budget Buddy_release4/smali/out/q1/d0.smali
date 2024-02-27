.class public abstract Lq1/d0;
.super Lc1/a;
.source "SourceFile"

# interfaces
.implements Lc1/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq1/d0$a;
    }
.end annotation


# static fields
.field public static final e:Lq1/d0$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lq1/d0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lq1/d0$a;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Lq1/d0;->e:Lq1/d0$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Lc1/e;->b:Lc1/e$b;

    invoke-direct {p0, v0}, Lc1/a;-><init>(Lc1/g$c;)V

    return-void
.end method


# virtual methods
.method public final a(Lc1/d;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc1/d<",
            "*>;)V"
        }
    .end annotation

    check-cast p1, Lkotlinx/coroutines/internal/f;

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/f;->n()V

    return-void
.end method

.method public abstract c(Lc1/g;Ljava/lang/Runnable;)V
.end method

.method public d(Lc1/g;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public f(I)Lq1/d0;
    .registers 3

    invoke-static {p1}, Lkotlinx/coroutines/internal/l;->a(I)V

    new-instance v0, Lkotlinx/coroutines/internal/k;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/internal/k;-><init>(Lq1/d0;I)V

    return-object v0
.end method

.method public get(Lc1/g$c;)Lc1/g$b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lc1/g$b;",
            ">(",
            "Lc1/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    invoke-static {p0, p1}, Lc1/e$a;->a(Lc1/e;Lc1/g$c;)Lc1/g$b;

    move-result-object p1

    return-object p1
.end method

.method public minusKey(Lc1/g$c;)Lc1/g;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc1/g$c<",
            "*>;)",
            "Lc1/g;"
        }
    .end annotation

    invoke-static {p0, p1}, Lc1/e$a;->b(Lc1/e;Lc1/g$c;)Lc1/g;

    move-result-object p1

    return-object p1
.end method

.method public final q(Lc1/d;)Lc1/d;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc1/d<",
            "-TT;>;)",
            "Lc1/d<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/internal/f;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/internal/f;-><init>(Lq1/d0;Lc1/d;)V

    return-object v0
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
