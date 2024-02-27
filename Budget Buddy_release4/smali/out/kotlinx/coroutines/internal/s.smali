.class public final Lkotlinx/coroutines/internal/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlinx/coroutines/internal/s;

.field private static final b:Z

.field public static final c:Lq1/w1;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lkotlinx/coroutines/internal/s;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/s;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/s;->a:Lkotlinx/coroutines/internal/s;

    const-string v1, "kotlinx.coroutines.fast.service.loader"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lkotlinx/coroutines/internal/c0;->e(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lkotlinx/coroutines/internal/s;->b:Z

    invoke-direct {v0}, Lkotlinx/coroutines/internal/s;->a()Lq1/w1;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/s;->c:Lq1/w1;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()Lq1/w1;
    .registers 8

    const-class v0, Lkotlinx/coroutines/internal/r;

    const/4 v1, 0x0

    :try_start_3
    sget-boolean v2, Lkotlinx/coroutines/internal/s;->b:Z

    if-eqz v2, :cond_e

    sget-object v0, Lkotlinx/coroutines/internal/h;->a:Lkotlinx/coroutines/internal/h;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/h;->c()Ljava/util/List;

    move-result-object v0

    goto :goto_22

    :cond_e
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lo1/c;->a(Ljava/util/Iterator;)Lo1/b;

    move-result-object v0

    invoke-static {v0}, Lo1/c;->e(Lo1/b;)Ljava/util/List;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2e

    move-object v3, v1

    goto :goto_55

    :cond_2e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_39

    goto :goto_55

    :cond_39
    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/internal/r;

    invoke-interface {v4}, Lkotlinx/coroutines/internal/r;->getLoadPriority()I

    move-result v4

    :cond_40
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lkotlinx/coroutines/internal/r;

    invoke-interface {v6}, Lkotlinx/coroutines/internal/r;->getLoadPriority()I

    move-result v6

    if-ge v4, v6, :cond_4f

    move-object v3, v5

    move v4, v6

    :cond_4f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_40

    :goto_55
    check-cast v3, Lkotlinx/coroutines/internal/r;

    if-nez v3, :cond_5b

    move-object v0, v1

    goto :goto_5f

    :cond_5b
    invoke-static {v3, v0}, Lkotlinx/coroutines/internal/t;->e(Lkotlinx/coroutines/internal/r;Ljava/util/List;)Lq1/w1;

    move-result-object v0

    :goto_5f
    if-nez v0, :cond_6d

    const/4 v0, 0x3

    invoke-static {v1, v1, v0, v1}, Lkotlinx/coroutines/internal/t;->b(Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/internal/u;

    move-result-object v0
    :try_end_66
    .catchall {:try_start_3 .. :try_end_66} :catchall_67

    goto :goto_6d

    :catchall_67
    move-exception v0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/internal/t;->b(Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/internal/u;

    move-result-object v0

    :cond_6d
    :goto_6d
    return-object v0
.end method
