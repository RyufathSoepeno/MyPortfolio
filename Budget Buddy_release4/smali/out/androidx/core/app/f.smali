.class final Landroidx/core/app/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/f$d;
    }
.end annotation


# static fields
.field protected static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected static final b:Ljava/lang/reflect/Field;

.field protected static final c:Ljava/lang/reflect/Field;

.field protected static final d:Ljava/lang/reflect/Method;

.field protected static final e:Ljava/lang/reflect/Method;

.field protected static final f:Ljava/lang/reflect/Method;

.field private static final g:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroidx/core/app/f;->g:Landroid/os/Handler;

    invoke-static {}, Landroidx/core/app/f;->a()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroidx/core/app/f;->a:Ljava/lang/Class;

    invoke-static {}, Landroidx/core/app/f;->b()Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/core/app/f;->b:Ljava/lang/reflect/Field;

    invoke-static {}, Landroidx/core/app/f;->f()Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/core/app/f;->c:Ljava/lang/reflect/Field;

    invoke-static {v0}, Landroidx/core/app/f;->d(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/core/app/f;->d:Ljava/lang/reflect/Method;

    invoke-static {v0}, Landroidx/core/app/f;->c(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/core/app/f;->e:Ljava/lang/reflect/Method;

    invoke-static {v0}, Landroidx/core/app/f;->e(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/app/f;->f:Ljava/lang/reflect/Method;

    return-void
.end method

.method private static a()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return-object v0

    :catchall_7
    const/4 v0, 0x0

    return-object v0
.end method

.method private static b()Ljava/lang/reflect/Field;
    .registers 2

    :try_start_0
    const-class v0, Landroid/app/Activity;

    const-string v1, "mMainThread"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    return-object v0

    :catchall_d
    const/4 v0, 0x0

    return-object v0
.end method

.method private static c(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    const-string v1, "performStopActivity"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/os/IBinder;

    aput-object v4, v2, v3

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_1b

    return-object p0

    :catchall_1b
    return-object v0
.end method

.method private static d(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    const-string v1, "performStopActivity"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/os/IBinder;

    aput-object v4, v2, v3

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    const-class v5, Ljava/lang/String;

    aput-object v5, v2, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_20

    return-object p0

    :catchall_20
    return-object v0
.end method

.method private static e(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    invoke-static {}, Landroidx/core/app/f;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_42

    if-nez p0, :cond_a

    goto :goto_42

    :cond_a
    :try_start_a
    const-string v0, "requestRelaunchActivity"

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/os/IBinder;

    aput-object v4, v2, v3

    const-class v3, Ljava/util/List;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    const-class v5, Ljava/util/List;

    aput-object v5, v2, v3

    const/4 v3, 0x3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v3

    const/4 v3, 0x4

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v3

    const/4 v3, 0x5

    const-class v6, Landroid/content/res/Configuration;

    aput-object v6, v2, v3

    const/4 v3, 0x6

    const-class v6, Landroid/content/res/Configuration;

    aput-object v6, v2, v3

    const/4 v3, 0x7

    aput-object v5, v2, v3

    const/16 v3, 0x8

    aput-object v5, v2, v3

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_41
    .catchall {:try_start_a .. :try_end_41} :catchall_42

    return-object p0

    :catchall_42
    :cond_42
    :goto_42
    return-object v1
.end method

.method private static f()Ljava/lang/reflect/Field;
    .registers 2

    :try_start_0
    const-class v0, Landroid/app/Activity;

    const-string v1, "mToken"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    return-object v0

    :catchall_d
    const/4 v0, 0x0

    return-object v0
.end method

.method private static g()Z
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_d

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method protected static h(Ljava/lang/Object;ILandroid/app/Activity;)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Landroidx/core/app/f;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_22

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p0

    if-eq p0, p1, :cond_10

    goto :goto_22

    :cond_10
    sget-object p0, Landroidx/core/app/f;->b:Ljava/lang/reflect/Field;

    invoke-virtual {p0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Landroidx/core/app/f;->g:Landroid/os/Handler;

    new-instance p2, Landroidx/core/app/f$c;

    invoke-direct {p2, p0, v1}, Landroidx/core/app/f$c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_23

    const/4 p0, 0x1

    return p0

    :cond_22
    :goto_22
    return v0

    :catchall_23
    move-exception p0

    const-string p1, "ActivityRecreator"

    const-string p2, "Exception while fetching field values"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method static i(Landroid/app/Activity;)Z
    .registers 11

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_b

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    return v1

    :cond_b
    invoke-static {}, Landroidx/core/app/f;->g()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    sget-object v0, Landroidx/core/app/f;->f:Ljava/lang/reflect/Method;

    if-nez v0, :cond_17

    return v2

    :cond_17
    sget-object v0, Landroidx/core/app/f;->e:Ljava/lang/reflect/Method;

    if-nez v0, :cond_20

    sget-object v0, Landroidx/core/app/f;->d:Ljava/lang/reflect/Method;

    if-nez v0, :cond_20

    return v2

    :cond_20
    :try_start_20
    sget-object v0, Landroidx/core/app/f;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_29

    return v2

    :cond_29
    sget-object v3, Landroidx/core/app/f;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_32

    return v2

    :cond_32
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    new-instance v5, Landroidx/core/app/f$d;

    invoke-direct {v5, p0}, Landroidx/core/app/f$d;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v4, v5}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    sget-object v6, Landroidx/core/app/f;->g:Landroid/os/Handler;

    new-instance v7, Landroidx/core/app/f$a;

    invoke-direct {v7, v5, v0}, Landroidx/core/app/f$a;-><init>(Landroidx/core/app/f$d;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_48
    .catchall {:try_start_20 .. :try_end_48} :catchall_91

    :try_start_48
    invoke-static {}, Landroidx/core/app/f;->g()Z

    move-result v7

    if-eqz v7, :cond_79

    sget-object p0, Landroidx/core/app/f;->f:Ljava/lang/reflect/Method;

    const/16 v7, 0x9

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v2

    const/4 v0, 0x0

    aput-object v0, v7, v1

    const/4 v8, 0x2

    aput-object v0, v7, v8

    const/4 v8, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v9, v7, v8

    const/4 v8, 0x5

    aput-object v0, v7, v8

    const/4 v8, 0x6

    aput-object v0, v7, v8

    const/4 v0, 0x7

    aput-object v9, v7, v0

    const/16 v0, 0x8

    aput-object v9, v7, v0

    invoke-virtual {p0, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7c

    :cond_79
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V
    :try_end_7c
    .catchall {:try_start_48 .. :try_end_7c} :catchall_85

    :goto_7c
    :try_start_7c
    new-instance p0, Landroidx/core/app/f$b;

    invoke-direct {p0, v4, v5}, Landroidx/core/app/f$b;-><init>(Landroid/app/Application;Landroidx/core/app/f$d;)V

    invoke-virtual {v6, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v1

    :catchall_85
    move-exception p0

    sget-object v0, Landroidx/core/app/f;->g:Landroid/os/Handler;

    new-instance v1, Landroidx/core/app/f$b;

    invoke-direct {v1, v4, v5}, Landroidx/core/app/f$b;-><init>(Landroid/app/Application;Landroidx/core/app/f$d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw p0
    :try_end_91
    .catchall {:try_start_7c .. :try_end_91} :catchall_91

    :catchall_91
    return v2
.end method
