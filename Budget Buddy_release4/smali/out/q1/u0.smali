.class public final Lq1/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lq1/u0;

.field private static final b:Lq1/d0;

.field private static final c:Lq1/d0;

.field private static final d:Lq1/d0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lq1/u0;

    invoke-direct {v0}, Lq1/u0;-><init>()V

    sput-object v0, Lq1/u0;->a:Lq1/u0;

    sget-object v0, Lkotlinx/coroutines/scheduling/c;->l:Lkotlinx/coroutines/scheduling/c;

    sput-object v0, Lq1/u0;->b:Lq1/d0;

    sget-object v0, Lq1/e2;->f:Lq1/e2;

    sput-object v0, Lq1/u0;->c:Lq1/d0;

    sget-object v0, Lkotlinx/coroutines/scheduling/b;->g:Lkotlinx/coroutines/scheduling/b;

    sput-object v0, Lq1/u0;->d:Lq1/d0;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lq1/d0;
    .registers 1

    sget-object v0, Lq1/u0;->b:Lq1/d0;

    return-object v0
.end method

.method public static final b()Lq1/d0;
    .registers 1

    sget-object v0, Lq1/u0;->d:Lq1/d0;

    return-object v0
.end method

.method public static final c()Lq1/w1;
    .registers 1

    sget-object v0, Lkotlinx/coroutines/internal/s;->c:Lq1/w1;

    return-object v0
.end method
