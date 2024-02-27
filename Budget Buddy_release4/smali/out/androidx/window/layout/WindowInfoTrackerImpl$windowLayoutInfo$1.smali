.class final Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Lj1/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/window/layout/WindowInfoTrackerImpl;->windowLayoutInfo(Landroid/app/Activity;)Lt1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/k;",
        "Lj1/p<",
        "Lt1/c<",
        "-",
        "Landroidx/window/layout/WindowLayoutInfo;",
        ">;",
        "Lc1/d<",
        "-",
        "La1/q;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "androidx.window.layout.WindowInfoTrackerImpl$windowLayoutInfo$1"
    f = "WindowInfoTrackerImpl.kt"
    l = {
        0x36,
        0x37
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/window/layout/WindowInfoTrackerImpl;


# direct methods
.method constructor <init>(Landroidx/window/layout/WindowInfoTrackerImpl;Landroid/app/Activity;Lc1/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/window/layout/WindowInfoTrackerImpl;",
            "Landroid/app/Activity;",
            "Lc1/d<",
            "-",
            "Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->this$0:Landroidx/window/layout/WindowInfoTrackerImpl;

    iput-object p2, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->$activity:Landroid/app/Activity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILc1/d;)V

    return-void
.end method

.method public static synthetic a(Ls1/f;Landroidx/window/layout/WindowLayoutInfo;)V
    .registers 2

    invoke-static {p0, p1}, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->invokeSuspend$lambda-0(Ls1/f;Landroidx/window/layout/WindowLayoutInfo;)V

    return-void
.end method

.method private static final invokeSuspend$lambda-0(Ls1/f;Landroidx/window/layout/WindowLayoutInfo;)V
    .registers 3

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ls1/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lc1/d;)Lc1/d;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lc1/d<",
            "*>;)",
            "Lc1/d<",
            "La1/q;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;

    iget-object v1, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->this$0:Landroidx/window/layout/WindowInfoTrackerImpl;

    iget-object v2, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->$activity:Landroid/app/Activity;

    invoke-direct {v0, v1, v2, p2}, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;-><init>(Landroidx/window/layout/WindowInfoTrackerImpl;Landroid/app/Activity;Lc1/d;)V

    iput-object p1, v0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lt1/c;

    check-cast p2, Lc1/d;

    invoke-virtual {p0, p1, p2}, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->invoke(Lt1/c;Lc1/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lt1/c;Lc1/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt1/c<",
            "-",
            "Landroidx/window/layout/WindowLayoutInfo;",
            ">;",
            "Lc1/d<",
            "-",
            "La1/q;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->create(Ljava/lang/Object;Lc1/d;)Lc1/d;

    move-result-object p1

    check-cast p1, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;

    sget-object p2, La1/q;->a:La1/q;

    invoke-virtual {p1, p2}, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    invoke-static {}, Ld1/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_39

    if-eq v1, v3, :cond_27

    if-ne v1, v2, :cond_1f

    iget-object v1, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ls1/g;

    iget-object v4, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$1:Ljava/lang/Object;

    check-cast v4, Landroidx/core/util/a;

    iget-object v5, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lt1/c;

    :try_start_1a
    invoke-static {p1}, La1/l;->b(Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_a3

    move-object p1, v5

    goto :goto_63

    :cond_1f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_27
    iget-object v1, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ls1/g;

    iget-object v4, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$1:Ljava/lang/Object;

    check-cast v4, Landroidx/core/util/a;

    iget-object v5, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lt1/c;

    :try_start_33
    invoke-static {p1}, La1/l;->b(Ljava/lang/Object;)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_a3

    move-object v6, v5

    move-object v5, p0

    goto :goto_76

    :cond_39
    invoke-static {p1}, La1/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lt1/c;

    const/16 v1, 0xa

    sget-object v4, Ls1/e;->f:Ls1/e;

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static {v1, v4, v6, v5, v6}, Ls1/h;->b(ILs1/e;Lj1/l;ILjava/lang/Object;)Ls1/f;

    move-result-object v1

    new-instance v4, Landroidx/window/layout/f;

    invoke-direct {v4, v1}, Landroidx/window/layout/f;-><init>(Ls1/f;)V

    iget-object v5, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->this$0:Landroidx/window/layout/WindowInfoTrackerImpl;

    invoke-static {v5}, Landroidx/window/layout/WindowInfoTrackerImpl;->access$getWindowBackend$p(Landroidx/window/layout/WindowInfoTrackerImpl;)Landroidx/window/layout/WindowBackend;

    move-result-object v5

    iget-object v6, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->$activity:Landroid/app/Activity;

    new-instance v7, Landroidx/window/layout/g;

    invoke-direct {v7}, Landroidx/window/layout/g;-><init>()V

    invoke-interface {v5, v6, v7, v4}, Landroidx/window/layout/WindowBackend;->registerLayoutChangeCallback(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/core/util/a;)V

    :try_start_5f
    invoke-interface {v1}, Ls1/p;->iterator()Ls1/g;

    move-result-object v1
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_a3

    :goto_63
    move-object v5, p0

    :goto_64
    :try_start_64
    iput-object p1, v5, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$0:Ljava/lang/Object;

    iput-object v4, v5, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$1:Ljava/lang/Object;

    iput-object v1, v5, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$2:Ljava/lang/Object;

    iput v3, v5, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->label:I

    invoke-interface {v1, v5}, Ls1/g;->a(Lc1/d;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_73

    return-object v0

    :cond_73
    move-object v8, v6

    move-object v6, p1

    move-object p1, v8

    :goto_76
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_95

    invoke-interface {v1}, Ls1/g;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/window/layout/WindowLayoutInfo;

    iput-object v6, v5, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$0:Ljava/lang/Object;

    iput-object v4, v5, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$1:Ljava/lang/Object;

    iput-object v1, v5, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$2:Ljava/lang/Object;

    iput v2, v5, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->label:I

    invoke-interface {v6, p1, v5}, Lt1/c;->emit(Ljava/lang/Object;Lc1/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_90
    .catchall {:try_start_64 .. :try_end_90} :catchall_a1

    if-ne p1, v0, :cond_93

    return-object v0

    :cond_93
    move-object p1, v6

    goto :goto_64

    :cond_95
    iget-object p1, v5, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->this$0:Landroidx/window/layout/WindowInfoTrackerImpl;

    invoke-static {p1}, Landroidx/window/layout/WindowInfoTrackerImpl;->access$getWindowBackend$p(Landroidx/window/layout/WindowInfoTrackerImpl;)Landroidx/window/layout/WindowBackend;

    move-result-object p1

    invoke-interface {p1, v4}, Landroidx/window/layout/WindowBackend;->unregisterLayoutChangeCallback(Landroidx/core/util/a;)V

    sget-object p1, La1/q;->a:La1/q;

    return-object p1

    :catchall_a1
    move-exception p1

    goto :goto_a5

    :catchall_a3
    move-exception p1

    move-object v5, p0

    :goto_a5
    iget-object v0, v5, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->this$0:Landroidx/window/layout/WindowInfoTrackerImpl;

    invoke-static {v0}, Landroidx/window/layout/WindowInfoTrackerImpl;->access$getWindowBackend$p(Landroidx/window/layout/WindowInfoTrackerImpl;)Landroidx/window/layout/WindowBackend;

    move-result-object v0

    invoke-interface {v0, v4}, Landroidx/window/layout/WindowBackend;->unregisterLayoutChangeCallback(Landroidx/core/util/a;)V

    throw p1
.end method
