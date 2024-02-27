.class public final Lr1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr1/b;

.field private static volatile choreographer:Landroid/view/Choreographer;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, La1/k;->e:La1/k$a;

    new-instance v1, Lr1/a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lr1/c;->a(Landroid/os/Looper;Z)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v2, v0, v3, v0}, Lr1/a;-><init>(Landroid/os/Handler;Ljava/lang/String;ILkotlin/jvm/internal/g;)V

    invoke-static {v1}, La1/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_22

    :catchall_17
    move-exception v1

    sget-object v2, La1/k;->e:La1/k$a;

    invoke-static {v1}, La1/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, La1/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_22
    invoke-static {v1}, La1/k;->c(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    goto :goto_2a

    :cond_29
    move-object v0, v1

    :goto_2a
    check-cast v0, Lr1/b;

    sput-object v0, Lr1/c;->a:Lr1/b;

    return-void
.end method

.method public static final a(Landroid/os/Looper;Z)Landroid/os/Handler;
    .registers 9

    if-eqz p1, :cond_5b

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt p1, v0, :cond_2e

    const-class p1, Landroid/os/Handler;

    const-string v0, "createAsync"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/os/Looper;

    aput-object v5, v4, v2

    invoke-virtual {p1, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p0, v0, v2

    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_26

    check-cast p0, Landroid/os/Handler;

    return-object p0

    :cond_26
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type android.os.Handler"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2e
    :try_start_2e
    const-class p1, Landroid/os/Handler;

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/Class;

    const-class v5, Landroid/os/Looper;

    aput-object v5, v4, v2

    const-class v5, Landroid/os/Handler$Callback;

    aput-object v5, v4, v3

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-virtual {p1, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1
    :try_end_44
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2e .. :try_end_44} :catch_55

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v2

    aput-object v1, v0, v3

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object p0, v0, v6

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0

    :catch_55
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object p1

    :cond_5b
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object p1
.end method
