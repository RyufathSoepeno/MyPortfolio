.class public final Lq1/u1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lkotlinx/coroutines/internal/b0;

.field public static final b:Lkotlinx/coroutines/internal/b0;

.field private static final c:Lkotlinx/coroutines/internal/b0;

.field private static final d:Lkotlinx/coroutines/internal/b0;

.field private static final e:Lkotlinx/coroutines/internal/b0;

.field private static final f:Lq1/w0;

.field private static final g:Lq1/w0;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlinx/coroutines/internal/b0;

    const-string v1, "COMPLETING_ALREADY"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/b0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lq1/u1;->a:Lkotlinx/coroutines/internal/b0;

    new-instance v0, Lkotlinx/coroutines/internal/b0;

    const-string v1, "COMPLETING_WAITING_CHILDREN"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/b0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lq1/u1;->b:Lkotlinx/coroutines/internal/b0;

    new-instance v0, Lkotlinx/coroutines/internal/b0;

    const-string v1, "COMPLETING_RETRY"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/b0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lq1/u1;->c:Lkotlinx/coroutines/internal/b0;

    new-instance v0, Lkotlinx/coroutines/internal/b0;

    const-string v1, "TOO_LATE_TO_CANCEL"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/b0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lq1/u1;->d:Lkotlinx/coroutines/internal/b0;

    new-instance v0, Lkotlinx/coroutines/internal/b0;

    const-string v1, "SEALED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/b0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lq1/u1;->e:Lkotlinx/coroutines/internal/b0;

    new-instance v0, Lq1/w0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lq1/w0;-><init>(Z)V

    sput-object v0, Lq1/u1;->f:Lq1/w0;

    new-instance v0, Lq1/w0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lq1/w0;-><init>(Z)V

    sput-object v0, Lq1/u1;->g:Lq1/w0;

    return-void
.end method

.method public static final synthetic a()Lkotlinx/coroutines/internal/b0;
    .registers 1

    sget-object v0, Lq1/u1;->a:Lkotlinx/coroutines/internal/b0;

    return-object v0
.end method

.method public static final synthetic b()Lkotlinx/coroutines/internal/b0;
    .registers 1

    sget-object v0, Lq1/u1;->c:Lkotlinx/coroutines/internal/b0;

    return-object v0
.end method

.method public static final synthetic c()Lq1/w0;
    .registers 1

    sget-object v0, Lq1/u1;->g:Lq1/w0;

    return-object v0
.end method

.method public static final synthetic d()Lq1/w0;
    .registers 1

    sget-object v0, Lq1/u1;->f:Lq1/w0;

    return-object v0
.end method

.method public static final synthetic e()Lkotlinx/coroutines/internal/b0;
    .registers 1

    sget-object v0, Lq1/u1;->e:Lkotlinx/coroutines/internal/b0;

    return-object v0
.end method

.method public static final synthetic f()Lkotlinx/coroutines/internal/b0;
    .registers 1

    sget-object v0, Lq1/u1;->d:Lkotlinx/coroutines/internal/b0;

    return-object v0
.end method

.method public static final g(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    instance-of v0, p0, Lq1/h1;

    if-eqz v0, :cond_c

    new-instance v0, Lq1/i1;

    check-cast p0, Lq1/h1;

    invoke-direct {v0, p0}, Lq1/i1;-><init>(Lq1/h1;)V

    move-object p0, v0

    :cond_c
    return-object p0
.end method
