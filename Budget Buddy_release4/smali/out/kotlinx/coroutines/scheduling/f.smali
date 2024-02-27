.class public Lkotlinx/coroutines/scheduling/f;
.super Lq1/d1;
.source "SourceFile"


# instance fields
.field private final g:I

.field private final h:I

.field private final i:J

.field private final j:Ljava/lang/String;

.field private k:Lkotlinx/coroutines/scheduling/a;


# direct methods
.method public constructor <init>(IIJLjava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Lq1/d1;-><init>()V

    iput p1, p0, Lkotlinx/coroutines/scheduling/f;->g:I

    iput p2, p0, Lkotlinx/coroutines/scheduling/f;->h:I

    iput-wide p3, p0, Lkotlinx/coroutines/scheduling/f;->i:J

    iput-object p5, p0, Lkotlinx/coroutines/scheduling/f;->j:Ljava/lang/String;

    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/f;->p()Lkotlinx/coroutines/scheduling/a;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/f;->k:Lkotlinx/coroutines/scheduling/a;

    return-void
.end method

.method private final p()Lkotlinx/coroutines/scheduling/a;
    .registers 8

    new-instance v6, Lkotlinx/coroutines/scheduling/a;

    iget v1, p0, Lkotlinx/coroutines/scheduling/f;->g:I

    iget v2, p0, Lkotlinx/coroutines/scheduling/f;->h:I

    iget-wide v3, p0, Lkotlinx/coroutines/scheduling/f;->i:J

    iget-object v5, p0, Lkotlinx/coroutines/scheduling/f;->j:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/scheduling/a;-><init>(IIJLjava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method public c(Lc1/g;Ljava/lang/Runnable;)V
    .registers 9

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/f;->k:Lkotlinx/coroutines/scheduling/a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/scheduling/a;->f(Lkotlinx/coroutines/scheduling/a;Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/i;ZILjava/lang/Object;)V

    return-void
.end method

.method public final r(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/i;Z)V
    .registers 5

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/f;->k:Lkotlinx/coroutines/scheduling/a;

    invoke-virtual {v0, p1, p2, p3}, Lkotlinx/coroutines/scheduling/a;->e(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/i;Z)V

    return-void
.end method
