.class final Lkotlinx/coroutines/scheduling/m;
.super Lq1/d0;
.source "SourceFile"


# static fields
.field public static final f:Lkotlinx/coroutines/scheduling/m;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlinx/coroutines/scheduling/m;

    invoke-direct {v0}, Lkotlinx/coroutines/scheduling/m;-><init>()V

    sput-object v0, Lkotlinx/coroutines/scheduling/m;->f:Lkotlinx/coroutines/scheduling/m;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lq1/d0;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lc1/g;Ljava/lang/Runnable;)V
    .registers 5

    sget-object p1, Lkotlinx/coroutines/scheduling/c;->l:Lkotlinx/coroutines/scheduling/c;

    sget-object v0, Lkotlinx/coroutines/scheduling/l;->g:Lkotlinx/coroutines/scheduling/i;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lkotlinx/coroutines/scheduling/f;->r(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/i;Z)V

    return-void
.end method
