.class public final Lkotlinx/coroutines/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    :try_start_0
    const-class v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string v1, "setRemoveOnCancelPolicy"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    goto :goto_12

    :catchall_11
    const/4 v0, 0x0

    :goto_12
    sput-object v0, Lkotlinx/coroutines/internal/d;->a:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static final a(Ljava/util/concurrent/Executor;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    instance-of v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v1, :cond_8

    check-cast p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    if-nez p0, :cond_c

    return v0

    :cond_c
    sget-object v1, Lkotlinx/coroutines/internal/d;->a:Ljava/lang/reflect/Method;

    if-nez v1, :cond_11

    return v0

    :cond_11
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v3, v0

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1c

    return v2

    :catchall_1c
    return v0
.end method
